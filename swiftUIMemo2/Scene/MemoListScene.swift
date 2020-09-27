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
    
    @State var showComposer: Bool = false
    
    var body: some View {
        NavigationView {
            List(store.list) { memo in
                MemoCell(memo: memo)
            }
            .navigationBarTitle("내 메모")
            .navigationBarItems(trailing: ModalButton(show: $showComposer))
            .sheet(isPresented: $showComposer, content : {
                ComposeScene(showComposer: self.$showComposer)
                    .environmentObject(self.store)
            })
        }
    }
}

fileprivate struct ModalButton : View {
    @Binding var show:Bool
    
    
    var body : some View {
        Button(action: {
            self.show = true
        },
        label: {
            Image(systemName: "plus")
        })
    }
}

struct MemoListScene_Previews: PreviewProvider {
    static var previews: some View {
        MemoListScene()
            .environmentObject(MemoStore())
            .environmentObject(DateFormatter.memoDateFormatter)
    }
}
