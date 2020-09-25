//
//  DateFormatter+Memo.swift
//  swiftUIMemo2
//
//  Created by DONGHYUN KIM on 2020/09/26.
//

import Foundation

extension DateFormatter {
    static let memoDateFormatter : DateFormatter = {
       let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .none
        f.locale = Locale(identifier: "Ko_kr")
        return f
    }()
}

extension DateFormatter : ObservableObject {
    
}
