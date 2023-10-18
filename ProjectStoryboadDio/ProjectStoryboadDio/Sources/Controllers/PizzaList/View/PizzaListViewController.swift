//
//  PizzaListViewController.swift
//  ProjectStoryboardDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import UIKit

class PizzaListViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    let viewModel = PizzaListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupRequest()
    }
    
    private func setupTableView() {
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.register(UINib.init(nibName: "PizzaListCell", bundle: nil), forCellReuseIdentifier: "PizzaListCell")
    }
    
    private func setupRequest() {
        viewModel.requestPizza { [weak self] success in
            guard let self = self else { return }
            if success {
                DispatchQueue.main.async {
                    self.myTableView.reloadData()
                }
            } else {
                self.showMessageError(title: "Erro", message: "Erro ao Buscar as Imagens")
            }
        }
    }
    
    private func showMessageError(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let buttonAction = UIAlertAction(title: "OK", style: .destructive)
        alert.addAction(buttonAction)
        self.present(alert, animated: true)
    }
}

extension PizzaListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsPizza
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PizzaListCell", for: indexPath) as? PizzaListCell {
            
            cell.setupCell(pizza: viewModel.cellForRowPizza(indexPath: indexPath))
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailPizza = PizzaDetailViewController()
            self.navigationController?.pushViewController(detailPizza, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 310
    }
}

