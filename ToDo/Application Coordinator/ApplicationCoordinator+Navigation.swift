//
//  ApplicationCoordinator+Navigation.swift
//  ToDo
//
//  Created by Veverly Mae Ricaza on 10/8/21.
//

import UIKit

extension ApplicationCoordinator {

    func setupSignIn() {
        let signinVC = SignInViewController()
        let navVC = UINavigationController(rootViewController: signinVC)
        window.rootViewController = navVC
        window.makeKeyAndVisible()
    }
}
