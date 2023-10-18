//
//  PizzaListViewModel.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import Foundation

class PizzaListViewModel {
    
    private let request = Request()
    private var myPizza: Pizza?
    
    var numberOfRowsPizza: Int {
        return myPizza?.count ?? 0
    }
    
    func cellForRowPizza(indexPath: IndexPath) -> PizzaElement? {
        return myPizza?[indexPath.row]
    }
    
    func requestPizza(completion: @escaping (Bool) -> Void) {
        request.requestPizza { [weak self] pizza, success in
            guard let self = self else { return }
            if success {
                self.myPizza = pizza
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
