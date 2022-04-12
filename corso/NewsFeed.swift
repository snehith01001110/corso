//
//  NewsFeed.swift
//  corso
//
//  Created by Snehith Nayak on 4/11/22.
//

import Foundation
import UIKit

struct NewsFeed: Codable{
    var status:String = ""
    var totalResults:Int?
    var articles:[Article]?
}


