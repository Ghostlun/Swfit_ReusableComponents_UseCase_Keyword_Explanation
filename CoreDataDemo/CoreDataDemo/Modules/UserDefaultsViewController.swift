//
//  UserDefaultsViewController.swift
//  CoreDataDemo
//
//  Created by Yoonha Kim on 5/26/21.
//

import UIKit

class UserDefaultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        
        //You save various data type into defaults
        defaults.setValue(25, forKey: "Age")
        defaults.setValue(true, forKey: "UserFaceId")
        defaults.setValue(CGFloat.pi, forKey: "Pi")
        
        //Collection types are possible too
        let array = ["Paul", "Mike", "Hall"]
        defaults.setValue(array, forKey: "array")
        
        // To access defaults values
        let data = defaults.integer(forKey: "Age")
        print(data) // 25
        
    }


}
