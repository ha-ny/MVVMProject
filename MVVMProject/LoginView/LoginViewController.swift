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
        
        mainView.signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        
        viewModel.message.bind { value in
            self.mainView.resultLabel.text = value
        }
        
        viewModel.result.bind { value in
            if value {
                let vc = PhotoViewController()
                
                vc.imageSetting {
                    self.present(vc, animated: true)
                }
            }
        }
    }
    
    @objc func signUpButtonTapped() {
        
        let emil = mainView.emailTextField.text
        let password = mainView.passwordTextField.text
        let nickname = mainView.nicknameTextField.text
        let code = mainView.codeTextField.text
        
        viewModel.signRegulation(email: emil, password: password, nickname: nickname, code: code)
    }
}

