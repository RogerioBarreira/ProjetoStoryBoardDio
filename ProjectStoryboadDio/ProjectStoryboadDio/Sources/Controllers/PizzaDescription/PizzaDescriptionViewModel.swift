//
//  PizzaDescriptionViewModel.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 18/10/23.
//

import Foundation

class PizzaDescriptionViewModel {
    
    private var pizzaDescription: PizzaElement?
    
    var namePizza: String {
        pizzaDescription?.name ?? ""
    }
    
    var pricePizzaP: Double {
        pizzaDescription?.priceP ?? 0
    }
    
    var pricePizzaM: Double {
        pizzaDescription?.priceM ?? 0
    }
    
    var pricePizzaG: Double {
        pizzaDescription?.priceG ?? 0
    }
    
    func getPizzaDescription(description: PizzaElement?) {
        self.pizzaDescription = description
    }
}
