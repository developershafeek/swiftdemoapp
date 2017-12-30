//
//  DemoRecord.swift
//  Workout Swift Project
//
//  Created by Mohamed Shafeek on 28/10/17.
//  Copyright © 2017 Mohamed Shafeek. All rights reserved.
//

import Foundation

struct DemoRecord {
    var heading:String!
    var values:[String]!
    var isExpanded:Bool
    init(heading: String, values: [String], isExpanded: Bool)
    {
        self.heading=heading
        self.values=values
        self.isExpanded=isExpanded
        
    }
   
}

