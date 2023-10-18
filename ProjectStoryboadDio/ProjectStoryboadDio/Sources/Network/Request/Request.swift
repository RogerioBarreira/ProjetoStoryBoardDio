//
//  Request.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import Foundation
import Alamofire

class Request {
    
    func requestPizza(completion: @escaping (Pizza?, Bool) -> Void) {
        let url = Constants.baseUrl
        AF.request(url, method: .get).responseDecodable(of: Pizza.self) { response in
            switch response.result {
            case .success(let myPizza):
                completion(myPizza, true)
            case .failure(_):
                completion(nil, false)
            }
        }
    }
}
