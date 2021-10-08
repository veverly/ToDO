// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {

  internal enum SignIn {
    internal enum Label {
      /// Don't have an
      internal static let accountMessage = L10n.tr("Localizable", "sign_in.label.accountMessage")
      /// Log in
      internal static let login = L10n.tr("Localizable", "sign_in.label.login")
      /// Remember me
      internal static let rememberMe = L10n.tr("Localizable", "sign_in.label.rememberMe")
    }
  }

  internal enum SignUp {
    internal enum Button {
      /// Account?
      internal static let account = L10n.tr("Localizable", "sign_up.button.account")
    }
    internal enum Label {
      /// Already have an
      internal static let accountMessage = L10n.tr("Localizable", "sign_up.label.accountMessage")
      /// Address
      internal static let address = L10n.tr("Localizable", "sign_up.label.address")
      /// Age
      internal static let age = L10n.tr("Localizable", "sign_up.label.age")
      /// Confirm Password
      internal static let confirmPassword = L10n.tr("Localizable", "sign_up.label.confirmPassword")
      /// Email
      internal static let email = L10n.tr("Localizable", "sign_up.label.email")
      /// First Name
      internal static let firstName = L10n.tr("Localizable", "sign_up.label.firstName")
      /// Last Name
      internal static let lastName = L10n.tr("Localizable", "sign_up.label.lastName")
      /// Middle Name
      internal static let middleName = L10n.tr("Localizable", "sign_up.label.middleName")
      /// Mobile
      internal static let mobile = L10n.tr("Localizable", "sign_up.label.mobile")
      /// Password
      internal static let password = L10n.tr("Localizable", "sign_up.label.password")
      /// Sign Up
      internal static let signup = L10n.tr("Localizable", "sign_up.label.signup")
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
