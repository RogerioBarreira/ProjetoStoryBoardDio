//
//  PizzaDescriptionViewController.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 18/10/23.
//

import Foundation
import UIKit

class PizzaDescriptionViewController: UIViewController {
    
    lazy var viewPizzaDescription: PizzaDescriptionView = {
        let view = PizzaDescriptionView()
        return view
    }()
    
    let viewModel = PizzaDescriptionViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = viewModel.namePizza
        navigationController?.navigationBar.prefersLargeTitles = true
        setupUI()
        setupAction()
    }
    
    override func loadView() {
        self.view = viewPizzaDescription
    }
    
    private func setupUI() {
        viewPizzaDescription.labelNamePizza.text = viewModel.namePizza
        viewPizzaDescription.labelPricePizzaP.text = String("\(Constants.Key.labelPricePizzaP.stringValue) \(viewModel.pricePizzaP)")
        viewPizzaDescription.labelPricePizzaM.text = String("\(Constants.Key.labelPricePizzaM.stringValue) \(viewModel.pricePizzaM)")
        viewPizzaDescription.labelPricePizzaG.text = String("\(Constants.Key.labelPricePizzaG.stringValue) \(viewModel.pricePizzaG)")
    }
    
    private func setupAction() {
        viewPizzaDescription.buttonClose.addTarget(self, action: #selector(buttonCloseTap), for: .touchUpInside)
    }
    
    @objc
    private func buttonCloseTap() {
        self.dismiss(animated: true)
    }
}
