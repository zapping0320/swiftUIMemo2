//
//  ContentView.swift
//  swiftUIMemo2
//
//  Created by DONGHYUN KIM on 2020/09/24.
//

import SwiftUI

struct MemoListScene: View {
    @EnvironmentObject var store:MemoStore
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                Text(memo.content)
            }
            .navigationBarTitle("내 메모")
        }
    }
}

struct MemoListScene_Previews: PreviewProvider {
    static var previews: some View {
        MemoListScene()
            .environmentObject(MemoStore())
    }
}
