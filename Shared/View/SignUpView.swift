//
//  SignUpView.swift
//  SwiftUI-PDFReader
//
//  Created by zowan on 2021/03/11.
//

import SwiftUI

import SwiftUI

struct SignUpView: View {
    @ObservedObject var userSettings = ModelUserSetting()
    @State var userPhoneNumber: String=""
    @State var username: String=""
    @State var userPassword: String=""
    @State var passwordConfirm: String=""
    
    var body: some View {
        Form{
            Section(header: Text("성함")){
                TextField("username", text: $userSettings.username)
            }
            Section(header: Text("로그인용 전화번호")){
                TextField("숫자만 입력해 주세요", text:$userSettings.userPhoneNumber)
            }
            Section(header: Text("로그인용 비밀번호")){
                TextField("비밀번호", text:$userSettings.userPassword)
                TextField("비밀번호 확인", text:$passwordConfirm)
            }
            Section {
                Button(action: {
                    userSettings.isLoggedIn = true
                    userSettings.setUserSettingValue()
                    
                }) {
                    Text("회원가입")
                }
            }
        }
    }
}
