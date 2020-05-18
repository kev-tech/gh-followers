//
//  String+Ext.swift
//  gh-followers
//
//  Created by whiis on 5/18/20.
//  Copyright © 2020 kevtech. All rights reserved.
//

import Foundation

extension String {
    func convertToDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = .current
        
        return dateFormatter.date(from: self)
    }
    
    func convertToDisplayFormat() -> String {
        guard let date = self.convertToDate() else { return "Date not available" }
        
        return date.convertToMonthYearFormat()
    }
}
