//
//  LoginView.swift
//  DragonBallBase
//
//  Created by JAVIER MORENO CARRERO on 20/1/23.
//

import Foundation
import UIKit


class LoginView: UIView {
    
    let labelLogin = {
       let label = UILabel()
        label.text = "LOGIN"
        label.textColor = .black
        label.backgroundColor = .gray
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 27, weight: .bold)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let userTextField = {
       let textField = UITextField()
        textField.placeholder = "Enter username"
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let passwordTextField = {
       let textField = UITextField()
        textField.placeholder = "Enter password"
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let buttonEnter = {
       let button = UIButton()
        
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.setTitle("Go to APP", for: .normal)
        
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let labelData = {
       let label = UILabel()
        label.text = ""
        label.textColor = .black
        label.backgroundColor = .gray
        label.numberOfLines = 0
        
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
        
        backgroundColor = .gray
        addSubview(userTextField)
        addSubview(labelLogin)
        addSubview(passwordTextField)
        addSubview(buttonEnter)
        addSubview(labelData)
        
        NSLayoutConstraint.activate([
        
            labelLogin.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            labelLogin.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelLogin.heightAnchor.constraint(equalToConstant: 50),
            
            userTextField.topAnchor.constraint(equalTo: labelLogin.bottomAnchor, constant: 100),
            userTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            userTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            userTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordTextField.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 25),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
        
            buttonEnter.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
            buttonEnter.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonEnter.heightAnchor.constraint(equalToConstant: 50),
            buttonEnter.widthAnchor.constraint(equalToConstant: 100),
            
            labelData.topAnchor.constraint(equalTo: buttonEnter.bottomAnchor, constant: 15),
            labelData.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            labelData.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            labelData.heightAnchor.constraint(equalToConstant: 200),
            
        ])
    }
}
