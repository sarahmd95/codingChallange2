//
//  Coordinator.swift
//  codingChallange2
//
//  Created by sara alhammad on 24/11/2020.
//

import Foundation
import UIKit

class Coordinator {
    var navigationController : UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start(){
        let vc = ContactListViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToDetails(object : objects){
        let vc = DetailsViewController()
        vc.coordinator = self
        vc.object = object
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goBack(){
        navigationController.popViewController(animated: true)
    }
    
    
}
