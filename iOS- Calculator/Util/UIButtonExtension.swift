//
//  UIButtonExtension.swift
//  iOS- Calculator
//
//  Created by David Robles Lopez on 7/1/23.
//

import UIKit


private let orange = UIColor(red: 254/255, green: 148/255, blue: 0/255, alpha: 1)

extension UIButton {
    
    // Borde redondo
    func round() {
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    // Brilla
    func shine() {
        UIView.animate(withDuration: 0.1, animations:  {
            self.alpha = 0.5
        }) {(completion) in
            UIView.animate(withDuration: 0.1, animations: {
                self.alpha = 1
            })
        }
    }
    
    
    // aparencia selección botón de operación
    func selectOperation(_ selected: Bool) {
        backgroundColor = selected ? .white : orange                                // si esta seleccionado el fondo es blanco, si no es naranja
        setTitleColor(selected ? orange : .white , for: .normal)
    }
    
    
}
