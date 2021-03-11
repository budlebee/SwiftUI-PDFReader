//
//  ModelUserSetting.swift
//  SwiftUI-PDFReader
//
//  Created by zowan on 2021/03/11.
//

import Foundation
import Combine


struct BookUsingStatics {
    var book : Book // 어떤책의 사용통계인지 알기위해 book 항목.
    var openedPages : Int // 책 몇페이지를 열람했는지 체크. 해당 페이지에 1분 이상 머물렀다면 열람한것이다.
    var openedSecond : Int // pdfview 에 머무른 시간을 초단위로 기록할것. 그러나 매초마다 이걸 카운트하면 너무 load 가 크니, 1분마다 60초씩 더하도록 하자.
}

class ModelUserSetting: ObservableObject {
    //let userDefaults = UserDefaults.standard
    @Published var username: String
    @Published var userPhoneNumber: String
    @Published var userPassword: String
    @Published var isLoggedIn: Bool
    var openedBooks: [BookUsingStatics] = []
    
    func setUserSettingValue (){
        UserDefaults.standard.set(username, forKey: "username")
        UserDefaults.standard.set(userPhoneNumber, forKey: "userPhoneNumber")
        UserDefaults.standard.set(userPassword, forKey: "userPassword")
        UserDefaults.standard.set(isLoggedIn, forKey: "isLoggendIn")
        UserDefaults.standard.synchronize()
    }
    
    init() {
        self.username = UserDefaults.standard.object(forKey: "username") as? String ?? ""
        self.userPhoneNumber = UserDefaults.standard.object(forKey: "userPhoneNumber") as? String ?? ""
        self.userPassword = UserDefaults.standard.object(forKey: "userPassword") as? String ?? ""
        self.isLoggedIn = UserDefaults.standard.object(forKey: "isLoggedIn") as? Bool ?? false
    }
}
