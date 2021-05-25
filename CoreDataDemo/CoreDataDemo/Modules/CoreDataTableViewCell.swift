//
//  CoreDataTableViewCell.swift
//  CoreDataDemo
//
//  Created by Yoonha Kim on 5/24/21.
//

import UIKit

class CoreDataTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var ageLabel: UILabel!
    @IBOutlet private weak var gender: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(person: Person) {
        nameLabel.text = "Name: \(person.name ?? "") "
        ageLabel.text = "Age: \(person.age)"
        gender.text = "Gender: \(person.gender ?? "")"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
