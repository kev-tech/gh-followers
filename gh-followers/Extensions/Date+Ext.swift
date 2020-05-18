//
//  Date+Ext.swift
//  gh-followers
//
//  Created by whiis on 5/18/20.
//  Copyright © 2020 kevtech. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
