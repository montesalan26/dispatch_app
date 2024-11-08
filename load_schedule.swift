//
//  load_schedule.swift
//  Dispatch App
//
//  Created by Alan Montes on 11/6/24.
//

import UIKit

class load_schedule: UIViewController {
    
    @IBOutlet weak var firstLoadBtn: UIButton!
    @IBOutlet weak var secondLoadBtn: UIButton!
    @IBOutlet weak var thirdLoadBtn: UIButton!
    @IBOutlet weak var fourthLoadBtn: UIButton!
    @IBOutlet weak var clockOutBtn: UIButton!
    @IBOutlet weak var lunchBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        
        firstLoadBtn.layer.cornerRadius = 80
        firstLoadBtn.layer.masksToBounds = true
        secondLoadBtn.layer.cornerRadius = 80
        secondLoadBtn.layer.masksToBounds = true
        thirdLoadBtn.layer.cornerRadius = 80
        thirdLoadBtn.layer.masksToBounds = true
        fourthLoadBtn.layer.cornerRadius = 80
        fourthLoadBtn.layer.masksToBounds = true
        
        
        
        clockOutBtn.layer.cornerRadius = 40
        clockOutBtn.layer.masksToBounds = true
        lunchBtn.layer.cornerRadius = 40
        lunchBtn.layer.masksToBounds = true
        
        
        firstLoadBtn.layer.shadowColor = UIColor.black.cgColor
        firstLoadBtn.layer.shadowOpacity = 0.7
        firstLoadBtn.layer.shadowOffset = CGSize(width: 3, height: 3)
        firstLoadBtn.layer.shadowRadius = 15
        
        // Set corner radius to 80 for a more rounded appearance
        firstLoadBtn.layer.cornerRadius = 80
        firstLoadBtn.layer.borderWidth = 2
        firstLoadBtn.layer.borderColor = UIColor.darkGray.cgColor
        firstLoadBtn.clipsToBounds = true
        
        // Apply gradient background
        let gradient = CAGradientLayer()
        gradient.frame = firstLoadBtn.bounds
        gradient.colors = [UIColor.lightGray.cgColor, UIColor.darkGray.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        firstLoadBtn.layer.insertSublayer(gradient, at: 0)
        
        // Add target for button interaction
        firstLoadBtn.addTarget(self, action: #selector(buttonHighlighted(_:)), for: .touchDown)
        firstLoadBtn.addTarget(self, action: #selector(buttonNormal(_:)), for: .touchUpInside)
        
    }
    
    
    // These methods must be instance methods of the class (not local)
    @objc func buttonHighlighted(_ sender: UIButton) {
        sender.layer.shadowOpacity = 0.6
        sender.layer.shadowOffset = CGSize(width: 1, height: 1)
        
        
    }
    
    @objc func buttonNormal(_ sender: UIButton) {
        sender.layer.shadowOpacity = 0.3
        sender.layer.shadowOffset = CGSize(width: 3, height: 3)
        
        
    }
}
