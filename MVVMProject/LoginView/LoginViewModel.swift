//
//  LoginViewModel.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/18.
//

import Foundation

class LoginViewModel {
    
    var message = Observable("")
    var result = Observable(false)
    
    func signRegulation(email: String?, password: String?, nickname: String?, code: String?){
     
        guard let email, email.contains("@") else {
            message.value = "올바른 이메일 형식이 아닙니다"
            return
        }
        
        guard let password, password.count >= 6, password.count <= 10 else {
            message.value = "비밀번호는 6~10자 내로 작성해주세요"
            return
        }
        
        guard let nickname, nickname != "" else {
            message.value = "닉네임을 입력해주세요"
            return
        }

        if let code, code != "" {
            
            guard code.count == 6 else {
                message.value = "추천코드는 6자리입니다"
                return
            }
            
            guard let _ = Int(code) else {
               message.value = "추천코드는 숫자로 이루어져있습니다"
               return
           }
        }
        
        message.value = "회원가입: 성공"
        result.value = true
    }
}
