//
//  ApplicationCoordinator.swift
//  ToDo
//
//  Created by Veverly Mae Ricaza on 10/8/21.
//

import RxSwift

final class ApplicationCoordinator {
    let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        setupSignIn()
        window.makeKeyAndVisible()
    }
}
