//
//  NetworkClient.swift
//  CoreDataDemo
//
//  Created by Yoonha Kim on 5/26/21.
//

import Alamofire
import Foundation

class NetworkClient {
    
    typealias WebServiceResponse = ([[String: Any]]?, Error?) -> Void
    
    func execute(_ url: URL, completion: @escaping WebServiceResponse) {
        
        // You can change url request type
        let urlRequest = URLRequest(url: url)
//        urlRequest.httpMethod = "PUT"
        
        AF.request(url).validate().responseJSON { response in
            if let error = response.error {
                print(error)
            } else if let jsonArray = response.value as? [[String: Any]] {
                completion(jsonArray, nil)
            } else if let jsonDict = response.value as? [String: Any] {
                completion([jsonDict], nil)
            }
        }
    }
}
