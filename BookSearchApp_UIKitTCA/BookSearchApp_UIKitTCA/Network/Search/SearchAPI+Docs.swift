//
//  SearchAPI+Docs.swift
//  BookSearchApp_UIKitTCA
//
//  Created by 송형욱 on 2022/11/14.
//

import Foundation

extension SearchAPI {
    struct Docs: NetworkAPIDefinition {
        var method: NetworkAPI.Method
        var headers: [String : String]?
        var parameters: EmptyParameter?
        
        let urlInfo: URLInfo
        let requestInfo: RequestInfo<EmptyParameter> = .init(method: .get)
        
        init(q: String, page: Int) {
            let _query: [String: String] = [
                "q": q,
                "page": "\(page)",
                "limit": "10"
            ]
            self.urlInfo = .SearchAPI(path: "/search.json", query: _query)
            self.method = .get
        }
        
        struct Response: Decodable {
            let docs: [Document]
        }
        
        struct Document: Decodable {
            let coverI: Int?
            let title: String
            let authorName: [String]?
            let firstPublishYear: Int?
            
            enum CodingKeys: String, CodingKey {
                case coverI = "cover_i"
                case title
                case authorName = "author_name"
                case firstPublishYear = "first_publish_year"
            }
            
            func asEntity() -> Search.Document {
                return .init(
                    coverI: self.coverI,
                    title: self.title,
                    authorName: self.authorName,
                    firstPublishYear: self.firstPublishYear
                )
            }
        }
    }
}
