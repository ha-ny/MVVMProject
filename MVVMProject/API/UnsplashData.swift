//
//  UnsplashData.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/19.
//

import Foundation

struct UnsplashData: Codable {
    let urls: Urls

    enum CodingKeys: String, CodingKey {
        case urls
    }
}

struct Urls: Codable {
    let regular: String

    enum CodingKeys: String, CodingKey {
        case regular
    }
}
