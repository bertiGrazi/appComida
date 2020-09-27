//
//  ViewController.swift
//  appComida
//
//  Created by Grazi Berti on 27/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldNome: UITextField!
 
    @IBOutlet weak var textFieldNumero: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldNome.delegate = self
        textFieldNumero.delegate = self
    }
    
    
    @IBAction func buttonAdicionar(_ sender: Any) {
        if let nomeDaRefeicao = textFieldNome?.text! {
            print("Refeição")
        }
        
        if let felicidade = textFieldNumero?.text! {
            print("Felicidade")
            
            textFieldNumero.text! = ""
            textFieldNome.text! = ""
        }
    }
    private func validaInformacoes() -> Bool {
        if textFieldNome.text == nil || textFieldNome.text!.isEmpty {
            print("Por favor, insira a refeição")
            
            
        }
        if textFieldNumero.text == nil || textFieldNumero.text!.isEmpty {
            print("Por favor, insira sua satisfação")
            
        }
        return true
    }
    
    

}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textFieldNome {
            textFieldNumero.becomeFirstResponder()
        } else {
            if validaInformacoes() {
                textField.resignFirstResponder()
            }
        }
        return true
    }
}
