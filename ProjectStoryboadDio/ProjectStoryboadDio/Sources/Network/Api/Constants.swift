//
//  Constants.swift
//  ProjectStoryboadDio
//
//  Created by Rogerio Martins on 17/10/23.
//

import Foundation

struct Constants {
    static let baseUrl = "https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza"
    
    enum Key {
        case nibName
        case cellReuseIdentifier
        case withIdentifier
        case alertActionTitle
        case titleViewController
        case labelPricePizzaP
        case labelPricePizzaM
        case labelPricePizzaG
        case ratioPizza
        
        var stringValue: String {
            switch self {
                
            case .nibName:
                return "PizzaListCell"
            case .cellReuseIdentifier:
                return "PizzaListCell"
            case .withIdentifier:
                return "PizzaListCell"
            case .alertActionTitle:
                return "OK"
            case .titleViewController:
                return "Lista de Pizzas"
            case .labelPricePizzaP:
                return "Preço Pequena: R$"
            case .labelPricePizzaM:
                return "Preço Média: R$"
            case .labelPricePizzaG:
                return "Preço Grande: R$"
            case .ratioPizza:
                return "Nota = "
            }
        }
    }
    
}
