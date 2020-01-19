//
//  ViewController.swift
//  Light
//
//  Created by Siddharth Ganesh on 11/2/19.
//  Copyright © 2019 Siddharth Ganesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn: Bool = true
//    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
//        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) {
//            _ in
//            self.lightOn.toggle()
//            self.updateUI()
//        }
    }

    @IBOutlet var lightButton: UIButton!
    

    @IBAction func buttonPressed(_ sender: Any) {
//        timer.invalidate()
        lightOn.toggle()
        
        updateUI()
        }
    
    func strobe() {
        
    }
    
    
    
    
    func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
            lightButton.setTitleColor(.black, for: .normal)
            lightButton.setTitleColor(.darkGray, for: .selected)
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
            lightButton.setTitleColor(.white, for: .normal)
        }
    }
}

