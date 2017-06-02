//
//  TratarTelefone.swift
//  TratamentoDeTelefone
//
//  Created by Matheus Azevedo on 02/06/17.
//  Copyright © 2017 Matheus Azevedo. All rights reserved.
//

import UIKit

public class TratarTelefone: NSObject {
    
    var telefone: String?
    
    internal override init() {
        super.init()
    }
    
    
    
    
    
    
    
    
    /**
     Reponsável por receber uma string e fazê-la adequar-se ao padrão de telefone (__) _____-____
     - parameter telefone : aksjdhad
     */
    func formatarTelefone(telefone: String) -> String {
        let qtdCaracteres = telefone.characters.count
        var novoTelefone: String
        
        if qtdCaracteres != 11 || qtdCaracteres != 10 {
            return "A quantidade de caracteres no telefone está inválida. É preciso ter 11 ou 10 números"
        }
        
        // verifica se contém apenas números
        if let numeros: Int = Int(telefone)  {
            novoTelefone = telefone.replacingOccurrences(of: " ", with: "") //tira espaço em branco
            
            // Usar essa expresão: ^\([1-9]{2}\) [2-9][0-9]{3,4}\-[0-9]{4}$
            var regex: String = "^\\([1-9]{2}\\) [2-9][0-9]{3,4}\\-[0-9]{4}$"
            
            if let range = novoTelefone.range(of:regex, options: .regularExpression) {
                let result = novoTelefone.substring(with:range)
            }
            return novoTelefone
        } else {
            return "O número deve conter somente números"
        }
    }
    
    
    
    
}
