//
//  Memo.swift
//  swiftUIMemo2
//
//  Created by DONGHYUN KIM on 2020/09/25.
//

import SwiftUI

class Memo : Identifiable, ObservableObject {
    let id:UUID
    @Published var content : String
    let insertDate : Date
    
    init(id : UUID = UUID(), content:String,
         insertDate : Date = Date()) {
        self.id = id
        self.content = content
        self.insertDate = insertDate
    }
    
}

extension Memo : Equatable {
    static func == (lhs:Memo, rhs:Memo) -> Bool {
        return lhs.id == rhs.id
    }
}
