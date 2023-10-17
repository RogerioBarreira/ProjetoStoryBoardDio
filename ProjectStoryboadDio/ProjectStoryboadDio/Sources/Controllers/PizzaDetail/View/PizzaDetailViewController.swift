//
//  PizzaDetailViewController.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import Foundation
import UIKit

class PizzaDetailViewController: UIViewController {
    
    lazy var viewPizzaDetail: PizzaDetailView = {
        let view = PizzaDetailView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = viewPizzaDetail
    }
}
