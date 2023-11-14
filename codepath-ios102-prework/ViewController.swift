//
//  ViewController.swift
//  codepath-ios102-prework
//
//  Created by Philip Lee on 11/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSelectionSegController: UISegmentedControl!
    
    @IBOutlet weak var numPetsLabel: UILabel!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var numPetsStepper: UIStepper!
    
    @IBOutlet weak var introduceButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSelectionSegController.titleForSegment(at: yearSelectionSegController.selectedSegmentIndex)
        
        let intro = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: intro, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
}

