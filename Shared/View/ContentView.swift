//
//  ContentView.swift
//  Shared
//
//  Created by zowan on 2021/03/11.
//

import SwiftUI
// 필기 저장안되는건 커스텀탭뷰때문이 아님. 뭐지시발
struct ContentView: View {
    @ObservedObject var userSettings = ModelUserSetting()
    @State private var selection = 0
    //@State var isLoggedIn : Bool = false
    
    var body: some View {
        
        if true/*userSettings.isLoggedIn*/ {
            if #available(iOS 14.0, *) {
                TabView{
                    HomeTabView().tabItem({VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }}).tag(0)
                    
                    SearchTabView().tabItem({VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }}).tag(1)
                    
                        MyBookListView().tabItem({VStack {
                            Image(systemName: "book")
                            Text("My Book")
                        }}).tag(2)
                   
                    MyNoteListView().tabItem({VStack {
                        Image(systemName: "square.and.pencil")
                        Text("My Note")
                    }}).tag(3)
                    
                    SettingView().tabItem({ VStack {
                        Image(systemName:  "gear")
                        Text("Setting")
                    }}).tag(4)
                }
            } else {
                // Fallback on earlier versions
            }
        } else {
            SignInView()
        }
    }
}
