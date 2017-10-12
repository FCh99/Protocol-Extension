//
//  ViewController.swift
//  MyApp
//
//  Created by Fausto Checa on 12/10/17.
//  Copyright © 2017 Fausto Checa. All rights reserved.
//

import UIKit

protocol Viajar {
    var diaSalida : DiasSemana {get set}
    var destino : String {get set}
    func hacerEquipaje ()
    func viajar ()
    func llegar ()
}

extension Viajar {
    func tomaFotos () -> Void{
        print("Clck, click, click")
        
    }
    
}

enum DiasSemana {
    case Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo
    
}

class Verano : Viajar {
    
    var diaSalida: DiasSemana = .Lunes
    var destino: String = ""
    
    func hacerEquipaje() {
        print ("Haciendo el euqipaje")
    }
    
    func viajar() {
        print ("viajando...")
    }
    
    func llegar() {
        print ("abre la puerta ¡¡¡")
    }
    
    init(dia: DiasSemana, destino: String) {
        self.diaSalida = dia
        self.destino = destino
    }
}

class SemanaSanta : Viajar {
    
    var diaSalida: DiasSemana
    var destino: String = ""
    
    func hacerEquipaje() {
        print("llenando la maleta...")
    }
    
    func viajar() {
        print("run run")
    }
    
    func llegar() {
        print("LLama a casa que ya hemos llegado")
    }
    
    init(dia:DiasSemana, destino:String) {
        self.diaSalida = dia
        self.destino = destino
    }
    
}



class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let misQuinceDias = Verano(dia: .Domingo, destino: "Chiclana")
        
        print(misQuinceDias.diaSalida)
        print(misQuinceDias.destino)
        misQuinceDias.hacerEquipaje()
        misQuinceDias.viajar()
        misQuinceDias.llegar()
        misQuinceDias.tomaFotos()
        
        print("--------------")
        
        let miSemanita = SemanaSanta(dia: .Jueves, destino: "Malaga")
        print(miSemanita.diaSalida)
        print(miSemanita.destino)
        miSemanita.hacerEquipaje()
        miSemanita.viajar()
        miSemanita.tomaFotos()
        miSemanita.llegar()
        
    }
    
}


