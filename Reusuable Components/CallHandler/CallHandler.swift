//
//  CallHandler.swift
//  NewsAppDemo
//
//  Created by Yoonha Kim on 4/23/21.
//

import UIKit

class CallHandler {
    
    func call(number: String) {
       let number = number
       guard let url = URL(string: "TEL://\(number)") else { return }
       if UIApplication.shared.canOpenURL(url) {
           UIApplication.shared.open(url, options: [:], completionHandler: nil)
       }
   }
}
