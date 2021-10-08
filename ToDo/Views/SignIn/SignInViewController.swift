//
//  SignInViewController.swift
//  ToDo
//
//  Created by Veverly Mae Ricaza on 10/8/21.
//

import UIKit
import SnapKit

class SignInViewController: UIViewController {

    private var slantedView: SlantedView = SlantedView()
    let gradient = CAGradientLayer()

    override func loadView() {
        super.loadView()
        setupScene()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func setupScene() {
        setupSlantedView()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.white.cgColor, UIColor.black.cgColor]
    }

    private func setupSlantedView() {
        view.addSubview(slantedView)
        slantedView.layer.cornerRadius = 30
        slantedView.backgroundColor = .green
        slantedView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.left.right.equalToSuperview().inset(10)
            make.bottom.equalToSuperview().inset(50)
        }
    }

}
