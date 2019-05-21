//
//  APIRequestProvider.swift
//  5dmax
//
//  Created by Huy Nguyen on 1/4/17.
//  Copyright © 2017 Huy Nguyen. All rights reserved.
//

import UIKit
import Alamofire

let kClientVersionHeaderField = "os_version_code"
let kClientOSHeaderField = "os_type"

let baseURL = "https://www.triposo.com" //tripiso URL
let apiVersion = "/api/20181213"

/*
 *  APIRequestProvider takes responsible for build and provide request for service objects
 *  default header for request will be defined here
 */
class APIRequestProvider: NSObject {

    //mark: SINGLETON
    static var shareInstance: APIRequestProvider = {
        let instance = APIRequestProvider()
        return instance
    }()

    //mark: DEFAULT HEADER & REQUEST URL
    private var _headers: HTTPHeaders = [:]
    var headers: HTTPHeaders {
        set {
            _headers = headers
        }
        get {
            let headers: HTTPHeaders = [
                "Authorization": "",
                "Accept": "application/json",
                "Content-Type": "application/x-www-form-urlencoded",
                "X-Triposo-Account": Constants.ACCOUNT_ID,
                "X-Triposo-Token": Constants.API_TOKEN,
                ]
            return headers
        }
    }

    private var _headersLogin: HTTPHeaders = [:]
    var headersLogin: HTTPHeaders {
        set {
            _headersLogin = headersLogin
        }
        get {
            let imei = UIDevice.current.identifierForVendor?.uuidString
            let authorization = "Bearer " + imei!

            let headersLogin: HTTPHeaders = [
                "Authorization": authorization,
                "Accept": "application/json",
                "Content-Type": "application/x-www-form-urlencoded"
            ]

            return headersLogin
        }
    }

    func commonParam() -> [String: String] {
        _ = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
        _ = "ios"
        let param = [String: String]()
        //param[kClientVersionHeaderField] = version
        //param[kClientOSHeaderField] = deviceOS
        return param
    }

    private var _requestURL: String = baseURL
    var requestURL: String {
        set {
            _requestURL = requestURL
        }
        get {

            var url = _requestURL
            url.append("\(apiVersion)/")
            return url
        }
    }

    var alamoFireManager: SessionManager

    override init() {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForResource = 30 // seconds for testing

        alamoFireManager = Alamofire.SessionManager(configuration: configuration)
    }
    
    func placeCountry(part_of: String, tag_labels: String) -> DataRequest {
        let urlString = requestURL.appending("location.json")
        var param = commonParam()
        param["part_of"] = part_of
        param["tag_labels"] = tag_labels
        param["fields"] = "all"
        return alamoFireManager.request(urlString,
                                        method: .get,
                                        parameters: param,
                                        encoding: URLEncoding.queryString,
                                        headers: headers)
    }
}
