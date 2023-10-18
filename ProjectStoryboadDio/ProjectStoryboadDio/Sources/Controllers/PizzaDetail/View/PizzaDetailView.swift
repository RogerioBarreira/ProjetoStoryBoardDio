//
//  PizzaDetailView.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import Foundation
import UIKit
import Cosmos

class PizzaDetailView: UIView {
    
    let imagePizzaDetail: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.black.cgColor
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
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        return label
    }()
    
    let ratioPizza: CosmosView = {
        let view = CosmosView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBackground
        view.settings.textColor = .label
        view.settings.updateOnTouch = false
        view.settings.textFont = .systemFont(ofSize: 20, weight: .bold)
        view.settings.starSize = 25
        view.settings.starMargin = 1
        view.settings.totalStars = 10
        view.settings.filledColor = .systemYellow
        view.settings.filledBorderWidth = 1
        view.settings.filledBorderColor = .label
        view.tintColor = .blue
        return view
    }()
    
    let buttonDetail: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Mais Detalhes", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .bold)
        button.backgroundColor = .black
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
        addSubViews(
            imagePizzaDetail,
            labelNamePizza,
            buttonDetail,
            ratioPizza
        )
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            imagePizzaDetail.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            imagePizzaDetail.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            imagePizzaDetail.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            imagePizzaDetail.heightAnchor.constraint(equalToConstant: 350),
            
            labelNamePizza.topAnchor.constraint(equalTo: imagePizzaDetail.bottomAnchor, constant: 10),
            labelNamePizza.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            labelNamePizza.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            labelNamePizza.heightAnchor.constraint(equalToConstant: 40),
            
            ratioPizza.topAnchor.constraint(equalTo: labelNamePizza.bottomAnchor, constant: 10),
            ratioPizza.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            ratioPizza.heightAnchor.constraint(equalToConstant: 40),
            
            buttonDetail.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            buttonDetail.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
            buttonDetail.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            buttonDetail.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
