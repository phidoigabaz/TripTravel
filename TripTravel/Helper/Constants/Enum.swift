//
//  Enum.swift
//  ChenRestaurant
//
//  Created by Tạ Thành Đạt on 5/15/19.
//  Copyright © 2019 dattt. All rights reserved.
//

import Foundation

enum APIErrorCode: Int {
    case success = 200
    case querytimeout = 504
    case internalerror = 500
    case accountissuspended = 403
    case ratelimitexceeded = 429
    case missingorinvalidauthenticationinformation = 401
    case insufficientcreditbalancetomakerequest = 402
    case endpointnotfoundorinvalidversion = 404
}

enum BlockType {
    case location
    case category
    case collection
}
