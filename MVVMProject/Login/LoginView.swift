//
//  LoginView.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/18.
//

import UIKit
import SnapKit

class LoginView: BaseView {

    let emailTextField = {
        let view = UITextField()
        view.placeholder = "이메일 주소"
        view.backgroundColor = .lightGray
        view.layer.borderWidth = 0.8
        view.layer.cornerRadius = 5
        view.layer.borderColor = UIColor.black.cgColor
        view.textAlignment = .center
        return view
    }()
    
    let passwordTextField = {
        let view = UITextField()
        view.placeholder = "비밀번호"
        view.backgroundColor = .lightGray
        view.layer.borderWidth = 0.8
        view.layer.cornerRadius = 5
        view.layer.borderColor = UIColor.black.cgColor
        view.textAlignment = .center
        return view
    }()
    
    let nicknameTextField = {
        let view = UITextField()
        view.placeholder = "닉네임"
        view.backgroundColor = .lightGray
        view.layer.borderWidth = 0.8
        view.layer.cornerRadius = 5
        view.layer.borderColor = UIColor.black.cgColor
        view.textAlignment = .center
        return view
    }()
    
    let codeTextField = {
        let view = UITextField()
        view.placeholder = "추천 코드"
        view.backgroundColor = .lightGray
        view.layer.borderWidth = 0.8
        view.layer.cornerRadius = 5
        view.layer.borderColor = UIColor.black.cgColor
        view.textAlignment = .center
        return view
    }()
    
    let signUpButton = {
        let view = UIButton()
        view.setTitle("회원가입", for: .normal)
        view.backgroundColor = .brown
        view.layer.borderWidth = 0.8
        view.layer.cornerRadius = 5
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    let resultLabel = {
        let view = UILabel()
        view.textAlignment = .center
        return view
    }()
    
    override func setConfigure() {
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(nicknameTextField)
        addSubview(codeTextField)
        addSubview(signUpButton)
        addSubview(resultLabel)
    }

    override func setContains() {
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(85)
            make.size.equalTo(CGSize(width: 350, height: 40))
            make.centerX.equalToSuperview()
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(30)
            make.size.equalTo(CGSize(width: 350, height: 40))
            make.centerX.equalToSuperview()
        }
        
        nicknameTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(30)
            make.size.equalTo(CGSize(width: 350, height: 40))
            make.centerX.equalToSuperview()
        }
        
        codeTextField.snp.makeConstraints { make in
            make.top.equalTo(nicknameTextField.snp.bottom).offset(30)
            make.size.equalTo(CGSize(width: 350, height: 40))
            make.centerX.equalToSuperview()
        }
        
        signUpButton.snp.makeConstraints { make in
            make.top.equalTo(codeTextField.snp.bottom).offset(30)
            make.size.equalTo(CGSize(width: 350, height: 50))
            make.centerX.equalToSuperview()
        }
        
        resultLabel.snp.makeConstraints { make in
            make.top.equalTo(signUpButton.snp.bottom).offset(30)
            make.size.equalTo(350)
            make.centerX.equalToSuperview()
        }
    }
}
