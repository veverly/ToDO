//
//  SignInViewController.swift
//  ToDo
//
//  Created by Veverly Mae Ricaza on 10/8/21.
//

import UIKit
import SnapKit

class SignInViewController: UIViewController {

    var titleLabel: UILabel = UILabel()
    var bodySlantedView: SlantedView = SlantedView()
    var footerSlantedView: SlantedView = SlantedView()
    var emailMarkerLabel: UILabel = UILabel()
    var emailTextField: UITextField = UITextField()
    var passwordMarkerLabel: UILabel = UILabel()
    var passwordTextField: UITextField = UITextField()
    var messageLabel: UILabel = UILabel()
    var accountButton: UIButton = UIButton()
    var logInButton: UIButton = UIButton()
    var stackView: UIStackView = UIStackView()

    override func loadView() {
        super.loadView()
        setupScene()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
