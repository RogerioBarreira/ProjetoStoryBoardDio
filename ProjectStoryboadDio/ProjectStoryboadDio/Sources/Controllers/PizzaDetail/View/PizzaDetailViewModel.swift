//
//  PizzaDetailViewModel.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import Foundation

class PizzaDetailViewModel {
    
    private var pizzaDetail: PizzaElement?
    
    var imagePizza: URL? {
        
        return URL(string: pizzaDetail?.imageURL ?? "")
    }
    
    var namePizza: String {
        return pizzaDetail?.name ?? ""
    }
    
    var ratioPizza: Int {
        return pizzaDetail?.rating ?? 0
    }
    
//    var ratioPizzaM: Int {
//        return pizzaDetail?.rating ?? 0
//    }
//    
//    var ratioPizzaG: Int {
//        return pizzaDetail?.rating ?? 0
//    }
    
    func getDetailPizza() -> PizzaElement? {
        return self.pizzaDetail
    }
    
    func getDetailPizza(detail: PizzaElement?) {
        self.pizzaDetail = detail
    }
}
