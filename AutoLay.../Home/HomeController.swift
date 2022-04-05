//
//  HomeController.swift
//  AutoLay...
//
//  Created by Владислав Дзярик on 04.04.2022.
//

import UIKit

class HomeController: UIViewController {
    var homeView: HomeView?
    
    let mySwitch = UISwitch()
    
    override func loadView() {
        super.loadView()
        homeView = HomeView(controller:self)
        view = homeView
        
        self.view.addSubview(self.mySwitch)
        
    }
}
