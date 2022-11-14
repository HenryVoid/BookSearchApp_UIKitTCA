//
//  NetworkAPI+Method.swift
//  BookSearchApp_UIKitTCA
//
//  Created by 송형욱 on 2022/11/14.
//

import Foundation

extension NetworkAPI {
    /**
     URLRequest에서 사용할 Method
    */
    enum Method: String {
        case get = "GET"
        case post = "POST"
    }
}
