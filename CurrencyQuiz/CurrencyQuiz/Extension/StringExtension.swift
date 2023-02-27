//
//  DateExtension.swift
//  CurrencyQuiz
//
//  Created by GA007295 on 27/2/2566 BE.
//

import Foundation

extension String {
    enum DatePattern: String {
        case yyyyMMdd = "yyyy-MM-dd"
        case yyMMddHHmm = "yy-MM-dd HH:mm"
        case yyyyMMddHHmmss = "yyyy-MM-dd HH:mm:ss"
        case yyyyMMddTHHmmssZ = "yyyy-MM-dd'T'HH:mm:ssZ"
        case MMMdHHmm = "MMM d HH:mm"
    }
    
    func formattedDate(datePatternIn:DatePattern = DatePattern.yyyyMMddTHHmmssZ,
                                 datePatternOut:DatePattern = DatePattern.MMMdHHmm) -> String{
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = datePatternIn.rawValue
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = datePatternOut.rawValue
        
        let date: Date? = dateFormatterGet.date(from: self)
        return dateFormatterPrint.string(from: date!);
    }
}
