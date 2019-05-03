//
//  MarketSummaryRequest.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 5/3/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import Foundation
import Alamofire

class MarketSummaryRequest {
    
    class func get() {
        Alamofire.request(Router.marketSummary).responseJSON { response in
            print(response)
        }
     }
    
}
