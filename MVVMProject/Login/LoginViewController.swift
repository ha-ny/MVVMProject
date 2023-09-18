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
    }
    
    @objc func signUpButtonTapped() {
        
        viewModel.email = mainView.emailTextField.text
        viewModel.password = mainView.passwordTextField.text
        viewModel.nickname = mainView.nicknameTextField.text
        viewModel.code = mainView.codeTextField.text
        
        mainView.resultLabel.text = viewModel.signRegulation()
    }
}

