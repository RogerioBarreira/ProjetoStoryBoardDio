//
//  PizzaDescriptionView.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 18/10/23.
//

import Foundation
import UIKit

class PizzaDescriptionView: UIView {
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray5
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    let labelNamePizza: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.textAlignment = .center
        label.textColor = .white
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    let labelPricePizzaP: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.textAlignment = .center
        label.textColor = .white
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    let labelPricePizzaM: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.textAlignment = .center
        label.textColor = .white
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    let labelPricePizzaG: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.textAlignment = .center
        label.textColor = .white
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.white.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    let buttonClose: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Fechar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .bold)
        button.backgroundColor = .black
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        return button
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
        addSubViews(contentView)
        contentView.addSubViews(
            labelNamePizza,
            labelPricePizzaP,
            labelPricePizzaM,
            labelPricePizzaG,
            buttonClose
        )
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            contentView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            contentView.heightAnchor.constraint(equalToConstant: 450),
            
            labelNamePizza.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            labelNamePizza.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            labelNamePizza.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            labelNamePizza.heightAnchor.constraint(equalToConstant: 40),
            
            labelPricePizzaP.topAnchor.constraint(equalTo: labelNamePizza.bottomAnchor, constant: 20),
            labelPricePizzaP.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            labelPricePizzaP.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            labelPricePizzaP.heightAnchor.constraint(equalToConstant: 40),
            
            labelPricePizzaM.topAnchor.constraint(equalTo: labelPricePizzaP.bottomAnchor, constant: 10),
            labelPricePizzaM.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            labelPricePizzaM.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            labelPricePizzaM.heightAnchor.constraint(equalToConstant: 40),
            
            labelPricePizzaG.topAnchor.constraint(equalTo: labelPricePizzaM.bottomAnchor, constant: 10),
            labelPricePizzaG.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            labelPricePizzaG.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            labelPricePizzaG.heightAnchor.constraint(equalToConstant: 40),
            
            buttonClose.topAnchor.constraint(equalTo: labelPricePizzaG.bottomAnchor, constant: 30),
            buttonClose.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 80),
            buttonClose.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -80),
            buttonClose.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
