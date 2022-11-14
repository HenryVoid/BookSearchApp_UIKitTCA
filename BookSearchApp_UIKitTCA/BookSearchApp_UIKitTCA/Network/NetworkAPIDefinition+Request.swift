//
//  NetworkAPIDefinition+Request.swift
//  BookSearchApp_UIKitTCA
//
//  Created by 송형욱 on 2022/11/14.
//

import Foundation

extension NetworkAPIDefinition {
    func request(completion: @escaping ((Result<Response, Error>) -> Void)) {
        let url = self.urlInfo.url
        let request = self.requestInfo.requests(url: url)
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)

        let dataTask = session.dataTask(with: request) { data, response, error in
            guard let data = data else { return }
            do {
                let response = try JSONDecoder().decode(Response.self, from: data)
                completion(.success(response))
            } catch {
                completion(.failure(error))
            }
        }
        dataTask.resume()
    }
}
