//
//  LoginViewModel.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/18.
//

import Foundation

struct User {
    let email: String
    let password: String
    let nickname: String
    let code: String
}

class LoginViewModel {
        
    var message = Observable("")
    var result = Observable(false)
    
    func signRegulation(data: User){
     
        guard !data.email.isEmpty else {
            message.value = "이메일을 입력해주세요"
            return
        }
        
        guard data.email.contains("@") else {
            message.value = "올바른 이메일 형식이 아닙니다"
            return
        }
        
        guard data.password.count >= 6, data.password.count <= 10 else {
            message.value = "비밀번호는 6~10자 내로 작성해주세요"
            return
        }
        
        guard !data.nickname.isEmpty else {
            message.value = "닉네임을 입력해주세요"
            return
        }

        if !data.code.isEmpty {
            
            guard data.code.count == 6 else {
                message.value = "추천코드는 6자리입니다"
                return
            }
            
            guard let _ = Int(data.code) else {
               message.value = "추천코드는 숫자로 이루어져있습니다"
               return
           }
        }
        
        message.value = "회원가입: 성공"
        result.value = true
    }
}
