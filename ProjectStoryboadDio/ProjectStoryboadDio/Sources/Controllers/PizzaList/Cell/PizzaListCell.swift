//
//  PizzaListCell.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import UIKit
import Kingfisher

class PizzaListCell: UITableViewCell {
    
    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var labelPizza: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(pizza: PizzaElement?) {
        if let url = URL(string: pizza?.imageURL ?? "") {
            imagePizza.kf.indicatorType = .activity
            imagePizza.kf.setImage(with: url)
            imagePizza.contentMode = .scaleAspectFill
            imagePizza.backgroundColor = .gray
            imagePizza.layer.cornerRadius = 10
            imagePizza.layer.borderWidth = 2
            imagePizza.layer.borderColor = UIColor.black.cgColor
            imagePizza.clipsToBounds = true
        } else {
            imagePizza.image = nil
        }
        labelPizza.text = pizza?.name ?? ""
        labelPizza.layer.borderWidth = 2
        labelPizza.layer.borderColor = UIColor.black.cgColor
        labelPizza.layer.cornerRadius = 8
        labelPizza.clipsToBounds = true
    }
}
