//
//  ContentView.swift
//  swiftUIMemo2
//
//  Created by DONGHYUN KIM on 2020/09/24.
//

import SwiftUI

struct MemoListScene: View {
    @EnvironmentObject var store:MemoStore
    @EnvironmentObject var formatter:DateFormatter
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                MemoCell(memo: memo)
            }
            .navigationBarTitle("내 메모")
        }
    }
}

struct MemoListScene_Previews: PreviewProvider {
    static var previews: some View {
        MemoListScene()
            .environmentObject(MemoStore())
            .environmentObject(DateFormatter.memoDateFormatter)
    }
}

struct MemoCell: View {
    @ObservedObject var memo:Memo
    @EnvironmentObject var formatter:DateFormatter
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(memo.content)
                .font(.body)
                .lineLimit(1)
            
            Text("\(memo.insertDate, formatter: self.formatter)")
                .font(.caption)
                .foregroundColor(Color(UIColor.secondaryLabel))
        }
    }
}
