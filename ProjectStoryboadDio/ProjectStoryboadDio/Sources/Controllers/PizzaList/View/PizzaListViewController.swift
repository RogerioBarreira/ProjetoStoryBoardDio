//
//  PizzaListViewController.swift
//  ProjectStoryboardDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import UIKit

class PizzaListViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UINib.init(nibName: "PizzaListCell", bundle: nil), forCellReuseIdentifier: "PizzaListCell")
    }
}

extension PizzaListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PizzaListCell", for: indexPath) as? PizzaListCell {
            
            cell.setupCell(name: "Mussarela")
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailPizza = PizzaDetailViewController()
            self.navigationController?.pushViewController(detailPizza, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 232
    }
}

