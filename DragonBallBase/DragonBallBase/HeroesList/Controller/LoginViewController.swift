//
//  ViewController.swift
//  DragonBallBase
//
//  Created by Pedro Martín on 12/1/23.
//
import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    var mainView: LoginView { self.view as! LoginView }
    
    var userName: String = ""
    var password: String = ""
    var data: String = ""

    
    var viewModel: LoginViewModel?
    
    override func loadView() {
        view = LoginView()
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = LoginViewModel()
        
        
        self.mainView.buttonEnter.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        //COGER EL DATO DE LA VIEWMODEL
        viewModel?.sendData = { [weak self] data in
            DispatchQueue.main.async {
                self?.mainView.labelData.text = data
            }
            
        }
        
        
        // Do any additional setup after loading the view.
    }
    @objc func buttonTapped() {
        
        userName = mainView.userTextField.text ?? ""
        
        password = mainView.passwordTextField.text ?? ""
        
        viewModel?.login(user: userName, password: password)
        
    
    }
    
    

    

}

