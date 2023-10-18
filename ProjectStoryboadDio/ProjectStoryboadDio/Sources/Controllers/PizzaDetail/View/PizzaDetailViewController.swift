//
//  PizzaDetailViewController.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import Foundation
import UIKit
import Kingfisher

class PizzaDetailViewController: UIViewController {
    
    lazy var viewPizzaDetail: PizzaDetailView = {
        let view = PizzaDetailView()
        return view
    }()
    
    let viewModel = PizzaDetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = viewModel.namePizza
        setupUI()
        setupActions()
    }
    
    override func loadView() {
        self.view = viewPizzaDetail
    }
    
    func setupUI() {
        viewPizzaDetail.imagePizzaDetail.kf.setImage(with: viewModel.imagePizza)
        viewPizzaDetail.labelNamePizza.text = viewModel.namePizza
        viewPizzaDetail.ratioPizza.text = "\(Constants.Key.ratioPizza.stringValue) \(Int(Double(viewModel.ratioPizza)))"
    }
    
    private func setupActions() {
        viewPizzaDetail.buttonDetail.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
    }
    
    @objc
    private func buttonTap() {
        let pizzaDescription = PizzaDescriptionViewController()
        pizzaDescription.viewModel.getPizzaDescription(description: viewModel.getDetailPizza())
        pizzaDescription.modalPresentationStyle = .fullScreen
        pizzaDescription.modalTransitionStyle = .flipHorizontal
        self.present(pizzaDescription, animated: true)
    }
}
