//
//  TratarTelefone.swift
//  TratamentoDeTelefone
//
//  Created by Matheus Azevedo on 02/06/17.
//  Copyright © 2017 Matheus Azevedo. All rights reserved.
//

import UIKit

public class TratarTelefone: NSObject {
    
    
    public override init() {
        super.init()
    }
    
    public func limparTelefone(telefone: String) -> String{
        var novoTelefone = telefone
        let caracteres = ["(", ")", "-", " "]
        
        for caractere in caracteres {
            novoTelefone = novoTelefone.replacingOccurrences(of: caractere, with: "")
        }
        
        if Int(novoTelefone) != nil {
            return novoTelefone
        }else {
            return ""
        }
    }
    
}

