//
//  LoginViewModel.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/18.
//

import Foundation

class LoginViewModel {
    
    var email: String?
    var password: String?
    var nickname: String?
    var code: String?
    
    func signRegulation() -> String {
     
        guard let email, email.contains("@") else { return "올바른 이메일 형식이 아닙니다" }
        guard let password, password.count >= 6, password.count <= 10  else { return "비밀번호는 6~10자 내로 작성해주세요" }
        guard let nickname, nickname != "" else { return "닉네임을 입력해주세요" }

        if let code, code != "" {
            guard code.count == 6 else { return "추천코드는 6자리입니다" }
            guard let code = Int(code) else { return "추천코드는 숫자로 이루어져있습니다" }
        }
        
        return "회원가입: 성공"
    }
}
