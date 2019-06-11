//
//  Router.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 5/3/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//
// https://www.raywenderlich.com/35-alamofire-tutorial-getting-startedhttps://www.raywenderlich.com/35-alamofire-tutorial-getting-started

import Foundation
import Alamofire

enum Router: URLRequestConvertible {
    
    enum Constants {
        static let baseURLPath = "http://192.168.1.2/"
        static let authenticationToken = "xxx"
    }
    
    case marketSummary
    
    var method: HTTPMethod {
        switch self {
        case .marketSummary:
            return .get
        default:
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .marketSummary:
            return "/market-summary/"
        default:
            return ""
        }
    }
    
    var parameters: [String: Any] {
        return [:]
    }
    
    public func asURLRequest() throws -> URLRequest {
        let url = try Constants.baseURLPath.asURL()
        
        var request = URLRequest(url: url.appendingPathComponent(path))
        request.httpMethod = method.rawValue
        request.setValue(Constants.authenticationToken, forHTTPHeaderField: "Authorization")
        request.timeoutInterval = TimeInterval(10 * 1000)
        
        return try URLEncoding.default.encode(request, with: parameters)
    }
    
}
