//
//  NetworkController.swift
//  CoreDataDemo
//
//  Created by Yoonha Kim on 5/26/21.
//

import UIKit

class NetworkController: UIViewController {
    
    @IBOutlet private weak var fetchButton: UIButton!
    
    private let networkClient = NetworkClient()
    
    private var dataSource: [[String: Any]]?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction private func fetch() {
        
        guard let urlAddress = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }

        networkClient.execute(urlAddress) { data, error in
            if error != nil {
                print("Fetch failed")
            }
            
            self.dataSource = data
        }
        print(dataSource)
    }
    

 

}
