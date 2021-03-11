//
//  SwiftUI_PDFReaderApp.swift
//  Shared
//
//  Created by zowan on 2021/03/11.
//

import SwiftUI

@main
struct SwiftUI_PDFReaderApp: App {
    //로컬에 저장된 책 담아두는 객체
    @StateObject var modelStoredPDFBook = ModelStoredPDFBook()
    //파일다운로드용 책 객체
    @StateObject var waitingBook = ModelDownloadingBook()
    // 캡쳐감지용 객체
    @StateObject var modelCaptureDetection = ModelCaptureDetection()
    // 로그인용 유저 셋팅 객첵
    @StateObject var modelUserSetting = ModelUserSetting()
    
    let userDefaults = UserDefaults.standard
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
