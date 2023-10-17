//
//  PizzaDetailView.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import Foundation
import UIKit

class PizzaDetailView: UIView {
    
    let imagePizzaDetail: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.red.cgColor
        image.layer.cornerRadius = 10
        image.clipsToBounds = true
        return image
    }()
    
    let labelNamePizza: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.textAlignment = .center
        label.textColor = .black
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.red.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        addElementsVisual()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElementsVisual() {
        addSubview(imagePizzaDetail)
        addSubview(labelNamePizza)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            imagePizzaDetail.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50),
            imagePizzaDetail.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            imagePizzaDetail.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            imagePizzaDetail.heightAnchor.constraint(equalToConstant: 250),
            
            labelNamePizza.topAnchor.constraint(equalTo: imagePizzaDetail.bottomAnchor, constant: 20),
            labelNamePizza.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            labelNamePizza.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            labelNamePizza.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
