//
//  SignInViewController.swift
//  ToDo
//
//  Created by Veverly Mae Ricaza on 10/8/21.
//

import UIKit

class SignInViewController: UIViewController {

    private var slantedView: SlantedView = SlantedView()

    override func loadView() {
        super.loadView()
        setupScene()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func setupScene() {
        setupSlantedView()
    }

    private func setupSlantedView() {
        view.addSubview(slantedView)
    }

}
