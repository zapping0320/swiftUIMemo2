//
//  MemoStore.swift
//  swiftUIMemo2
//
//  Created by DONGHYUN KIM on 2020/09/26.
//

import Foundation

class MemoStore : ObservableObject{
    @Published var list: [Memo]
    
    init() {
        list = [
            Memo(content: "number 1"),
            Memo(content: "number 2"),
            Memo(content: "number 3")
        ]
    }
    
    func insert(memo : String) {
        list.insert(Memo(content: memo), at: 0)
    }
    
    func update(memo: Memo?, content:String) {
        guard let memo = memo else {return}
        memo.content = content
    }
    
    func delete(memo: Memo) {
        DispatchQueue.main.async {
            self.list.removeAll()  { $0 == memo }
        }
        
    }
    
    func delete(set: IndexSet) {
        for index in set {
            self.list.remove(at: index)
        }
    }
}
