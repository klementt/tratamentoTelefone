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
    
    
    
    
    
    
    /**
     Reponsável por receber uma string e fazê-la adequar-se ao padrão de telefone (__) _____-____
     - parameter telefone : aksjdhad
     */
    public func formatarTelefone(telefone: String) -> String {
        let qtdCaracteres = telefone.characters.count
        var novoTelefone: String
        
        if qtdCaracteres != 11 && qtdCaracteres != 10 {
            return "A quantidade de caracteres no telefone está inválida. É preciso ter 11 ou 10 números"
        }
        
        // verifica se contém apenas números
        if let numeros: Int = Int(telefone)  {
            novoTelefone = telefone.replacingOccurrences(of: " ", with: "") //tira espaço em branco
            
            // Usar essa expresão: ^\([1-9]{2}\) [2-9][0-9]{3,4}\-[0-9]{4}$
            var regexPattern: String = "^\\([1-9]{2}\\) [2-9][0-9]{3,4}\\-[0-9]{4}$"
            var regex: NSRegularExpression?
            
            
            do {
                regex = try NSRegularExpression(pattern: regexPattern, options: NSRegularExpression.Options.anchorsMatchLines)
            } catch let error {
                print(error.localizedDescription)
            }
            
            
            let result: NSMutableString = novoTelefone as! NSMutableString
            
            let retorno = regex?.stringByReplacingMatches(in: novoTelefone, options: [], range: NSMakeRange(0, novoTelefone.characters.count), withTemplate: "XX")
            
//            if let range = novoTelefone.range(of:regex, options: .regularExpression) {
//                novoTelefone = novoTelefone.substring(with:range)
//            }
            return retorno!
        } else {
            return "O número deve conter somente números"
        }
    }
    
    
    
    
}

