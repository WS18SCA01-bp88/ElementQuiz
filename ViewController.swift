//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Balmes Pavlov on 11/5/18.
//  Copyright © 2018 Balmes Pavlov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentElementIndex: Int = 0
    
    @IBOutlet weak var labelView: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var showerAnswerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateElement()
        //let color: UIColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1.0)
        //labelView.backgroundColor = color
           // .backgroundColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha: 1.0)
    }
    
    @IBAction func gotoNextElement(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elements.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elements[currentElementIndex].elementName
        showerAnswerButton.isEnabled = false
    }
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elements[currentElementIndex]
        labelView.text = "\(elementName.atomicNumber) \n \(elementName.symbol)\n\(elementName.atomicMass)"
        labelView.font = UIFont.systemFont(ofSize: 36.0)
        labelView.textAlignment = .center
        labelView.backgroundColor = elementName.backgroundColor
        
        showerAnswerButton.isEnabled = true
        
        //let label: UILabel = UILabel.
        //let image: UIImage = UIImage(named: elementName)!
        //imageView.image = image
    }


}

