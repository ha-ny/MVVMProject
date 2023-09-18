//
//  Type.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/19.
//

import Foundation

enum error: Error{
    case emailIsEmpty
    case emailIncorrect
    case passwordOutOfRange
    case nicknameIsEmpty
    case codeDigitIncorrect
    case codeIsntInt
}

struct User {
    let email: String
    let password: String
    let nickname: String
    let code: String
}
