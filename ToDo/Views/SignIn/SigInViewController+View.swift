//
//  SigInViewController+View.swift
//  ToDo
//
//  Created by Veverly Mae Ricaza on 10/8/21.
//

import UIKit

extension SignInViewController {

    func setupScene() {
        view.setGradientBackground(colorTop: Asset.Colors.moderateBlue.color,
                                   colorBottom: Asset.Colors.darkModerateViolet.color)
        setupTitleLabel()
        setupBodySlantedView()
        setupEmailMarkerLabel()
        setupEmailTextField()
        setupPasswordMarkerLabel()
        setupPasswordTextField()
        setupFooterSlantedView()
        setupLogInButton()
        setupStackView()
        setupMessageLabel()
        setupAccountButton()
    }

    private func setupTitleLabel() {
        titleLabel.text = L10n.SignIn.Label.login.uppercased()
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleLabel.textAlignment = .center

        view.addSubview(titleLabel)

        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(40)
            make.height.equalTo(35)
            make.left.right.equalToSuperview().inset(20)
        }
    }

    private func setupBodySlantedView() {
        bodySlantedView.slantHeight = 75
        bodySlantedView.roundCorners(corners: [.topLeft, .topRight], radius: 30)
        bodySlantedView.backgroundColor = .white

        view.addSubview(bodySlantedView)

        bodySlantedView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.left.right.equalTo(titleLabel)
        }
    }

    private func setupEmailMarkerLabel() {
        emailMarkerLabel.font = .systemFont(ofSize: 14, weight: .medium)
        emailMarkerLabel.textColor = Asset.Colors.veryDarkGray.color
        emailMarkerLabel.text = L10n.SignUp.Label.email

        bodySlantedView.addSubview(emailMarkerLabel)

        emailMarkerLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.left.right.equalToSuperview().inset(10)
        }
    }

    private func setupEmailTextField() {
        emailTextField.font = UIFont.systemFont(ofSize: 14)
        emailTextField.attributedPlaceholder = NSAttributedString(string: L10n.SignUp.Label.email, attributes: [
            .foregroundColor: Asset.Colors.veryDarkGray.color,
            .font: UIFont.italicSystemFont(ofSize: 14)
        ])
        emailTextField.borderStyle = .roundedRect
        emailTextField.textAlignment = .left
        emailTextField.backgroundColor = Asset.Colors.solitudeGray.color
        emailTextField.autocapitalizationType = .none
        emailTextField.clearButtonMode = .whileEditing
        emailTextField.keyboardType = .emailAddress

        bodySlantedView.addSubview(emailTextField)

        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailMarkerLabel.snp.bottom).offset(3)
            make.left.right.equalToSuperview().inset(10)
            make.height.equalTo(35)
        }
    }

    private func setupPasswordMarkerLabel() {
        passwordMarkerLabel.font = .systemFont(ofSize: 14, weight: .medium)
        passwordMarkerLabel.textColor = Asset.Colors.veryDarkGray.color
        passwordMarkerLabel.text = L10n.SignUp.Label.password

        bodySlantedView.addSubview(passwordMarkerLabel)

        passwordMarkerLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(10)
            make.left.right.equalTo(emailTextField)
        }
    }

    private func setupPasswordTextField() {
        passwordTextField.font = UIFont.systemFont(ofSize: 14)
        passwordTextField.attributedPlaceholder = NSAttributedString(string: L10n.SignUp.Label.password, attributes: [
            .foregroundColor: Asset.Colors.veryDarkGray.color,
            .font: UIFont.italicSystemFont(ofSize: 14)
        ])
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.textAlignment = .left
        passwordTextField.backgroundColor = Asset.Colors.solitudeGray.color
        passwordTextField.autocapitalizationType = .none
        passwordTextField.clearButtonMode = .whileEditing

        bodySlantedView.addSubview(passwordTextField)

        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordMarkerLabel.snp.bottom).offset(3)
            make.left.right.equalToSuperview().inset(10)
            make.height.equalTo(35)
        }
    }

    private func setupFooterSlantedView() {
        footerSlantedView.slantHeight = 75
        footerSlantedView.roundCorners(corners: [.topLeft, .topRight], radius: 30)
        footerSlantedView.backgroundColor = .white
        footerSlantedView.rotate(angle: 180)

        view.addSubview(footerSlantedView)

        footerSlantedView.snp.makeConstraints { make in
            make.top.equalTo(bodySlantedView.snp.bottom).inset(50)
            make.left.right.equalTo(bodySlantedView)
            make.height.equalTo(150)
            make.bottom.equalToSuperview().inset(30)
        }
    }

    private func setupLogInButton() {
        logInButton.setTitle(L10n.SignIn.Label.login.uppercased(), for: .normal)
        logInButton.setTitleColor(.white, for: .normal)
        logInButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        logInButton.backgroundColor = Asset.Colors.darkModerateViolet.color
        logInButton.roundCorners(corners: .allCorners, radius: 10)
        logInButton.rotate(angle: 180)

        footerSlantedView.addSubview(logInButton)

        logInButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.left.right.equalToSuperview().inset(10)
            make.height.equalTo(45)
        }
    }

    private func setupStackView() {
        stackView.axis = .horizontal
        stackView.spacing = 3
        stackView.alignment = .center
        stackView.addArrangedSubview(messageLabel)
        stackView.addArrangedSubview(accountButton)
        stackView.rotate(angle: 180)

        footerSlantedView.addSubview(stackView)

        stackView.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
            make.top.equalTo(logInButton.snp.bottom).offset(8)
        }
    }

    private func setupMessageLabel() {
        messageLabel.text = L10n.SignIn.Label.accountMessage
        messageLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
    }

    private func setupAccountButton() {
        accountButton.setTitle(L10n.SignUp.Button.account, for: .normal)
        accountButton.setTitleColor(Asset.Colors.darkModerateViolet.color, for: .normal)
        accountButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
    }
}
