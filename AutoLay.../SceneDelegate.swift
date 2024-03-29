//
//  SceneDelegate.swift
//  AutoLay...
//
//  Created by Владислав Дзярик on 04.04.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow.init(windowScene: scene)
        window?.rootViewController = HomeController()
        window?.makeKeyAndVisible()
    }
}

