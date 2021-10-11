//
//  Member.swift
//  ToDo
//
//  Created by Veverly Mae Ricaza on 10/11/21.
//

struct Member {
    let email: String
    let address: String
    let age: Int
    let firstname: String
    let middlename: String
    let lastname: String
    let gender: String
    let mobile: Int
    let password: String
}

extension Member: Decodable {
    enum MemberCodingKeys: String, CodingKey {
        case email
        case address
        case age
        case firstname
        case middlename
        case lastname
        case gender
        case mobile
        case password
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: MemberCodingKeys.self)

        email = try container.decode(String.self, forKey: .email)
        address = try container.decode(String.self, forKey: .address)
        age = try container.decode(Int.self, forKey: .age)
        firstname = try container.decode(String.self, forKey: .firstname)
        middlename = try container.decode(String.self, forKey: .middlename)
        lastname = try container.decode(String.self, forKey: .lastname)
        gender = try container.decode(String.self, forKey: .gender)
        mobile = try container.decode(Int.self, forKey: .mobile)
        password = try container.decode(String.self, forKey: .password)
    }
}
