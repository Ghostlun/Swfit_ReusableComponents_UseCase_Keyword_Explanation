//
//  UIImageView+Extension.swift
//  CollectionViewDemo
//
//  Created by Yoonha Kim on 4/8/21.
//

import UIKit

extension UIImageView {
    
    static var cache = ImageCache()
    
    func downloadImage(with url: String?) {
        guard let unwrappedUrl = url, let finalUrl = URL(string: unwrappedUrl) else {
            self.image = UIImage(named: "NewsPicture.png")
            return
        }
        if let image = UIImageView.cache.getImage(for: NSString(string: unwrappedUrl)) {
            self.image = image
        }
        URLSession.shared.dataTask(with: finalUrl) {data, _, _ in
            guard let data = data else {
                return
            }
            DispatchQueue.main.async {
                guard let image = UIImage(data: data) else { return }
                UIImageView.cache.saveImage(image, for: NSString(string: unwrappedUrl))
                self.image = image
            }
        }
        .resume()
    }
}
