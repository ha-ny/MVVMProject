//
//  LoginViewController.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/18.
//

import UIKit

class LoginViewController: UIViewController {

    let mainView = LoginView()
    let viewModel = LoginViewModel()
    
    override func loadView() {
        super.loadView()
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        viewModel.message.bind { value in
            self.mainView.resultLabel.text = value
        }
        
        mainView.signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
    }
    
    // 회원가입 버튼 클릭
    @objc func signUpButtonTapped() {
        let emil = mainView.emailTextField.text ?? ""
        let password = mainView.passwordTextField.text ?? ""
        let nickname = mainView.nicknameTextField.text ?? ""
        let code = mainView.codeTextField.text ?? ""
        
        let data = User(email: emil, password: password, nickname: nickname, code: code)
        
        // 회원가입 성공 -> 화면 전환
        viewModel.signRegulation(data: data) {
            self.photoViewPresent()
        }
    }
    
    // 화면 전환: PhotoViewController
    func photoViewPresent() {
        let vc = PhotoViewController()
        
        //화면 바뀌기 전에 미리 이미지 세팅
        vc.imageSetting {
            self.present(vc, animated: true)
        }
    }
}

