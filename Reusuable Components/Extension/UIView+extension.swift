//
//  UIView+extension.swift
//  CollectionViewDemo
//
//  Created by Yoonha Kim on 4/8/21.
//

import Foundation
import UIKit

extension UIView {
    
    func addShadowView(shadowOpacity: Float, shadowRadius: CGFloat) {
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = shadowRadius
    }
    
    func makeRoundImageView() {
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.cgColor
    }
}

extension UILabel {
    
    func addCharacterSpacing(kernValue: Double = 3) {
        if let labelText = text, labelText.isEmpty == false {
            let attributedString = NSMutableAttributedString(string: labelText)
            attributedString.addAttribute(.kern,
                                          value: kernValue,
                                          range: NSRange(location: 0, length: attributedString.length - 1))
            attributedText = attributedString
        }
    }
    
    func applyFont(label: UILabel) {
        
        guard let customFont = UIFont(name: "chunkfive", size: UIFont.labelFontSize) else {
            fatalError("""
                Failed to load the "CustomFont-Light" font.
                Make sure the font file is included in the project and the font name is spelled correctly.
                """
            )
        }
        label.font = UIFontMetrics.default.scaledFont(for: customFont)
        label.adjustsFontForContentSizeCategory = true
    }
}

extension UIButton {
    
    func makeRoundRectangle(cornerRadius: CGFloat) {
        self.layer.cornerRadius = cornerRadius
    }
    
    func addPaddingWith(topInset: CGFloat, leftInset: CGFloat, bottomInset: CGFloat, rightInset: CGFloat ) {
        self.titleEdgeInsets = UIEdgeInsets(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
    }
}

extension UIImageView {
    
    func makeRoundRectangleImageView(cornerRadius: CGFloat) {
        self.layer.cornerRadius = cornerRadius
    }
    
    func makeRounded() {
        self.layer.borderWidth = 0.5
        self.layer.masksToBounds = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
