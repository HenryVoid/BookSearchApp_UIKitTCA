//
//  URLInfo+SearchAPI.swift
//  BookSearchApp_UIKitTCA
//
//  Created by 송형욱 on 2022/11/14.
//

import Foundation

extension NetworkAPI.URLInfo {
    static func SearchAPI(path: String, query: [String: String]?) -> Self {
        Self.init(host: "openlibrary.org", path: path, query: query)
    }
}
