//
//  inside_load_tab.swift
//  Dispatch App
//
//  Created by Alan Montes on 11/6/24.
//

import UIKit

class inside_load_tab: UIViewController {
    
    @IBOutlet weak var notesField: UITextView!
    @IBOutlet weak var firstNote: UILabel!
    @IBOutlet weak var secondNote: UILabel!
    @IBOutlet weak var thirdNote: UILabel!
    @IBOutlet weak var fourthNote: UILabel!
    @IBOutlet weak var notesView: UIView!
    @IBOutlet weak var saveBtn: UIButton!
    @IBOutlet weak var textFieldView: UITextView!
    @IBOutlet weak var pullNumberView: UIView!
    @IBOutlet weak var permaNotesView: UIView!
    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var truckBtn: UIButton!
    @IBOutlet weak var fuelBtn: UIButton!
    @IBOutlet weak var cameraBtn: UIButton!
    @IBOutlet weak var clockBtn: UIButton!
    @IBOutlet weak var bottomView: UIView!
    
    var currentLabel = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        
        notesView.layer.borderColor = UIColor.gray.cgColor
        notesView.layer.borderWidth = 2
        
        textFieldView.layer.borderColor = UIColor.gray.cgColor
        textFieldView.layer.borderWidth = 2
        textFieldView.layer.cornerRadius = 20
        textFieldView.layer.masksToBounds = true
        
        saveBtn.layer.borderColor = UIColor.gray.cgColor
        saveBtn.layer.borderWidth = 2
        saveBtn.layer.cornerRadius = 10
        saveBtn.layer.masksToBounds = true
        
        pullNumberView.layer.borderColor = UIColor.white.cgColor
        pullNumberView.layer.borderWidth = 1
        pullNumberView.layer.cornerRadius = 40
        pullNumberView.layer.masksToBounds = true
        
        permaNotesView.layer.borderColor = UIColor.white.cgColor
        permaNotesView.layer.borderWidth = 1
        permaNotesView.layer.cornerRadius = 40
        permaNotesView.layer.masksToBounds = true
        
        homeBtn.layer.cornerRadius = 20
        homeBtn.layer.masksToBounds = true
        homeBtn.layer.borderColor = UIColor.white.cgColor
        homeBtn.layer.borderWidth = 2
        
        truckBtn.layer.cornerRadius = 20
        truckBtn.layer.masksToBounds = true
        truckBtn.layer.borderColor = UIColor.white.cgColor
        truckBtn.layer.borderWidth = 2
        
        fuelBtn.layer.cornerRadius = 20
        fuelBtn.layer.masksToBounds = true
        fuelBtn.layer.borderColor = UIColor.white.cgColor
        fuelBtn.layer.borderWidth = 2
        
        cameraBtn.layer.cornerRadius = 20
        cameraBtn.layer.masksToBounds = true
        cameraBtn.layer.borderColor = UIColor.white.cgColor
        cameraBtn.layer.borderWidth = 2
        
        clockBtn.layer.cornerRadius = 20
        clockBtn.layer.masksToBounds = true
        clockBtn.layer.borderColor = UIColor.white.cgColor
        clockBtn.layer.borderWidth = 2
        
        
        // Add a tap gesture recognizer to the view
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
        
        firstNote.isHidden = true
        secondNote.isHidden = true
        thirdNote.isHidden = true
        fourthNote.isHidden = true
        
        
    }
    
    @objc func dismissKeyboard() {
        // Dismiss the keyboard
        view.endEditing(true)
        
    }
    
    // UITextFieldDelegate method to handle Return key press
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // Dismiss the keyboard
        return true
        
    }
    
    // Action for the button press
    @IBAction func submitButtonPressed(_ sender: Any) {
        switch currentLabel {
                case 1:
                    firstNote.text = notesField.text
                    firstNote.isHidden = false
                    currentLabel = 2
                case 2:
                    secondNote.text = notesField.text
                    secondNote.isHidden = false
                    currentLabel = 3
                case 3:
                    thirdNote.text = notesField.text
                    thirdNote.isHidden = false
                    currentLabel = 4
                case 4:
                    fourthNote.text = notesField.text
                    fourthNote.isHidden = false
                default:
                    break
                }

                notesField.text = ""
        
        // Dismiss the keyboard
        notesField.resignFirstResponder()
        
    }

}
