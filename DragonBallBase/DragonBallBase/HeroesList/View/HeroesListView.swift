//
//  HeroesListView.swift
//  DragonBallBase
//
//  Created by JAVIER MORENO CARRERO on 17/1/23.
//

import Foundation
import UIKit

class HeroesListView: UIView {
    
    override init(frame: CGRect) { //Constructor principal
        super.init(frame: frame)
        //CREAR Y AÑADIR MIS SUBVISTAS
        
        setUpViews()
        
    }
    
    required init?(coder: NSCoder) { // Para versiones anteriores
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
       
    }
}
