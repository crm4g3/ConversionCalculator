//
//  Converter.swift
//  Calculator Style Layout
//
//  Created by Cody McIlviane on 4/13/18.
//  Copyright © 2018 Cody McIlviane. All rights reserved.
//

import Foundation

struct Converter{
    let label: String
    let inputUnit: String
    let outputUnit: String
    
    init(label: String, inputUnit: String, outputUnit: String){
        self.label = label
        self.inputUnit = inputUnit
        self.outputUnit = outputUnit
    }
}
