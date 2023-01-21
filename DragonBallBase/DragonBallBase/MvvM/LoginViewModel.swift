//
//  LoginViewModel.swift
//  DragonBallBase
//
//  Created by JAVIER MORENO CARRERO on 20/1/23.
//

import Foundation

class LoginViewModel: NSObject {
    
    override init() {
        
    }
    
    var sendData: ((_ data: String) -> Void)?
    
    func login(user: String, password: String) {
        
        let myToken = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiIsImtpZCI6InByaXZhdGUifQ.eyJleHBpcmF0aW9uIjo2NDA5MjIxMTIwMCwiZW1haWwiOiJqbW9yZW5vY2FycmVyb0Bob3RtYWlsLmNvbSIsImlkZW50aWZ5IjoiMTZFQjNCQjMtQzFFNi00NjJGLUIzQUQtQUFFMzA4QjEwQThBIn0._W0aSfnM3DiZ17rnF5pQOHEmKfM-uHt1zf9Wg4viNpA"

        
        
        let apiClient = ApiClient(token: myToken)
        
        apiClient.login(user: user, password: password) { data, error in
            
            debugPrint(error ?? "")
            
            // Si el dato de la api viene vacío, es porque hay algún error y hay que enviarlo
            if data == nil {
                self.sendData?(error.debugDescription)
            } else { // Si no viene vacío, se ha logueado correctamente y debo enviar el token a la vista
                guard let data = data else { return }
                self.sendData?(data)
            }
  
        }
        
        
        
    }
    
}
