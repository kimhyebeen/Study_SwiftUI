//
//  ContentView.swift
//  SignUp
//
//  Created by 김혜빈 on 2021/01/07.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    @State var checkPassword = ""
    @State var nickname = ""
    @State var birth = 0
    @State var gender = 0
    
    let genderType = ["남성","여성","선택 안함"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("기본정보")) {
                    TextField("이메일", text: $email)
                    TextField("비밀번호 입력", text: $password)
                        .textContentType(.password)
                    TextField("비밀번호 확인", text: $checkPassword)
                        .textContentType(.password)
                    TextField("닉네임", text: $nickname)
                }
                
                Section(header: Text("생년월일")) {
                    Picker("출생년도", selection: $birth) {
                        ForEach(0 ..< 122) {
                            Text("\(String(2021-$0))년생")
                        }
                    }
                }
                
                Section(header: Text("성별")) {
                    Picker("성별", selection: $gender) {
                        ForEach(0 ..< genderType.count) {
                            Text("\(self.genderType[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    HStack {
                        Spacer()
                        Button("회원 가입") {
                            
                        }
                        Spacer()
                    }
                }
            }.navigationBarTitle("회원가입")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
