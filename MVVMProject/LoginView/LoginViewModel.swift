//
//  LoginViewModel.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/18.
//

import Foundation

class LoginViewModel {
        
    var message = Observable("")
    
    func errorHandling(data: User) throws{
     
        guard !data.email.isEmpty else {
            throw error.emailIsEmpty
        }
        
        guard data.email.contains("@") else {
            throw error.emailIncorrect
        }
        
        guard data.password.count >= 6, data.password.count <= 10 else {
            throw error.passwordOutOfRange
        }
        
        guard !data.nickname.isEmpty else {
            throw error.nicknameIsEmpty
        }

        if !data.code.isEmpty {
            
            guard data.code.count == 6 else {
                throw error.codeDigitIncorrect
            }
            
            guard let _ = Int(data.code) else {
                throw error.codeIsntInt
           }
        }
        
        message.value = "회원가입: 성공"
    }
    
    func signRegulation(data: User, completion: () -> ()) {
        
        do {
            try errorHandling(data: data)
            completion()
        } catch error.emailIsEmpty{
            message.value = "이메일을 입력해주세요"
        } catch error.emailIncorrect{
            message.value = "올바른 이메일 형식이 아닙니다"
        } catch error.passwordOutOfRange{
            message.value = "비밀번호는 6~10자 내로 작성해주세요"
        } catch error.nicknameIsEmpty{
            message.value = "닉네임을 입력해주세요"
        } catch error.codeDigitIncorrect{
            message.value = "추천코드는 6자리입니다"
        } catch error.codeIsntInt{
            message.value = "추천코드는 숫자로 이루어져있습니다"
        } catch {
            message.value = "오류가 발생했습니다."
        }
    }
}
