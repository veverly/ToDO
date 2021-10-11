//
//  ToDoAPI.swift
//  ToDo
//
//  Created by Veverly Mae Ricaza on 10/11/21.
//

import Moya
import Alamofire

enum ToDoAPI {
    case login(email: String, password: String)

}

extension ToDoAPI: TargetType, AccessTokenAuthorizable {
    var baseURL: URL {
        return URL(string: "https://todo-7f5bc-default-rtdb.firebaseio.com/")!
    }

    var path: String {
        switch self {
        case .login(let email, let password):
            return "/member/\(email)\(password)"
        }
    }

    var method: Moya.Method {
        switch self {
        case .login:
            return .post
        }
    }

    var sampleData: Data {
        return Data()
    }

    var task: Task {
        switch self {
        case .login:
            return .requestPlain
        }
    }

    var headers: [String : String]? {
        return ["Content-Type": "application/json", "Accept": "application/json"]
    }

    var authorizationType: AuthorizationType? {
        switch self {
        case .login:
            return nil
        }
    }

    var parameters: [String: Any]? {
        switch self {
        case .login(let email, let password):
            return ["email": email, "password": password]
        }
    }

    var parameterEncoding: ParameterEncoding {
        if method == .get {
            return URLEncoding.queryString
        }
        return JSONEncoding.default
    }
}
