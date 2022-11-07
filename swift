//
//  ViewController.swift
//  HelloWorld
//
//  Created by etesy on 2022/11/6.
//

import UIKit

class ViewController: UIViewController {
    
    var intNumber: Int = 0
    var doubleNumber: Double = 0
    var step: Int = 1

    @IBOutlet weak var RUN: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        intNumber += step
        doubleNumber += Double(step)
        
        if intNumber >= 10 || intNumber <= 0 {
            step *= -1
        }
        
        updateUI()
    }
    
    func updateUI() {
        RUN.text = "Int: \(intNumber)\nDouble: \(doubleNumber)"
        
        let title = step > 0 ? "+\(step)" : "\(step)"
        button.setTitle(title, for: .normal)
    }

}

