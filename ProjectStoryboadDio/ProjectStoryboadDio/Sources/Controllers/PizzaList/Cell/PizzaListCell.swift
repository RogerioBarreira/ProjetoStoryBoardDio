//
//  PizzaListCell.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import UIKit

class PizzaListCell: UITableViewCell {
    
    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var labelPizza: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCell(name: String) {
        imagePizza.image = UIImage(systemName: "person")
        imagePizza.backgroundColor = .gray
        imagePizza.layer.cornerRadius = 10
        imagePizza.layer.borderWidth = 2
        imagePizza.layer.borderColor = UIColor.black.cgColor
        imagePizza.clipsToBounds = true
        labelPizza.text = "Mussarela"
    }
}
