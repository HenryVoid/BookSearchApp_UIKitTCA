//
//  NetworkAPIDefinition.swift
//  BookSearchApp_UIKitTCA
//
//  Created by 송형욱 on 2022/11/14.
//

import Foundation

protocol NetworkAPIDefinition {
    typealias URLInfo = NetworkAPI.URLInfo
    typealias RequestInfo = NetworkAPI.RequestInfo
    
    associatedtype Parameter: Encodable
    associatedtype Response: Decodable
    
    var urlInfo: URLInfo { get }
    var requestInfo: RequestInfo<Parameter> { get }
    var method: NetworkAPI.Method { get }
    var headers: [String: String]? { get }
    var parameters: Parameter? { get }
}
