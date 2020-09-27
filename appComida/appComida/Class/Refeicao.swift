//
//  Refeicao.swift
//  appComida
//
//  Created by Grazi Berti on 27/09/20.
//

import Foundation

class Refeicao {
    var nome: String
    var felicidade: String
    var itens: Array <Item> = []
    
    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        return total
    }
}
