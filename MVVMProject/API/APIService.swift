//
//  APIService.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/19.
//

import Foundation
import Alamofire

class APIService {
    
    static let shared = APIService()
    
    private init() { }
    
    func randomPhoto(completion: @escaping (UnsplashData) -> Void) {

        guard let url = URL(string: "https://api.unsplash.com/photos/random?client_id=\(APIKey.unsplash)") else { return }

        AF.request(url).validate().responseDecodable(of: UnsplashData.self) { response in
            switch response.result {
            case .success(let value):
                completion(value)
            case .failure(let error):
                print(error)
            }
        }
    }
}
