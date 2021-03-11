//
//  SignInView.swift
//  SwiftUI-PDFReader
//
//  Created by zowan on 2021/03/11.
//


import SwiftUI
struct SignInView: View {
    
    @State var phoneNumber: String=""
    
    @State var password: String=""
    
    
    var body: some View {
        NavigationView{
            Form{
                
                Section(header: Text("로그인용 전화번호")){
                    TextField("숫자만 입력해 주세요", text:$phoneNumber)
                }
                Section(header: Text("로그인용 비밀번호")){
                    TextField("비밀번호", text:$password)
                }
                Section {
                    Button(action: {
                        print("로그인 버튼이 눌렸다.")
                    }) {
                        Text("로그인")
                    }
                }
                Section {
                    NavigationLink(destination: SignUpView()){
                        Text("회원가입 하기")
                    }
                }
            }
        }//.navigationViewStyle(StackNavigationViewStyle())
        
    }
}
