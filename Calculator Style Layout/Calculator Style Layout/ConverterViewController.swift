//
//  ConverterViewController.swift
//  Calculator Style Layout
//
//  Created by Cody McIlviane on 4/13/18.
//  Copyright © 2018 Cody McIlviane. All rights reserved.
//

import Foundation
import UIKit

class ConverterViewController: UIViewController {
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    var converters: [Converter] = []
    
    @IBAction func ConverterButtonPressed(_ sender: Any) {
        let popUpAction = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        popUpAction.addAction(UIAlertAction(title: converters[0].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.outputDisplay.text = self.converters[0].outputUnit
            self.inputDisplay.text = self.converters[0].inputUnit
        }))
        
        popUpAction.addAction(UIAlertAction(title: converters[1].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.outputDisplay.text = self.converters[1].outputUnit
            self.inputDisplay.text = self.converters[1].inputUnit
        }))
        
        popUpAction.addAction(UIAlertAction(title: converters[2].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.outputDisplay.text = self.converters[2].outputUnit
            self.inputDisplay.text = self.converters[2].inputUnit
        }))
        
        popUpAction.addAction(UIAlertAction(title: converters[3].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.outputDisplay.text = self.converters[3].outputUnit
            self.inputDisplay.text = self.converters[3].inputUnit
        }))
        
        self.present(popUpAction, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fToC = Converter(label:"fahrenheit to celcius",inputUnit:"°F",outputUnit:"°C");
        let cToF = Converter(label:"celcius to fahrenheit",inputUnit:"°C",outputUnit:"°F");
        let mToK = Converter(label:"miles to kilometers",inputUnit:"mi",outputUnit:"km");
        let kToM = Converter(label:"kilometers to miles",inputUnit:"km",outputUnit:"mi");
        
        converters = [fToC, cToF, mToK, kToM]
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
