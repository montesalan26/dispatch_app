//
//  SecondView.swift
//  Dispatch App
//
//  Created by Alan Montes on 11/3/24.
//

import UIKit

class SecondView: UIViewController {

    @IBOutlet weak var clock_btn: UIButton!
    @IBOutlet weak var camera_btn: UIButton!
    @IBOutlet weak var fuel_btn: UIButton!
    @IBOutlet weak var truck_btn: UIButton!
    @IBOutlet weak var notes_btn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        clock_btn.layer.cornerRadius = 35
        clock_btn.clipsToBounds = true
        camera_btn.layer.cornerRadius = 35
        camera_btn.clipsToBounds = true
        fuel_btn.layer.cornerRadius = 35
        fuel_btn.clipsToBounds = true
        truck_btn.layer.cornerRadius = 35
        truck_btn.clipsToBounds = true
        notes_btn.layer.cornerRadius = 35
        notes_btn.clipsToBounds = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationItem.hidesBackButton = true
    }
}
