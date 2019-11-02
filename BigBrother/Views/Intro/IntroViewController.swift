//
//  IntroViewController.swift
//  BigBrother
//
//  Created by Ayaz Rahman on 2/11/19.
//  Copyright © 2019 M Rahman. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func scanButton(_ sender: Any) {
        performSegue(withIdentifier: "Scan", sender: nil)
    }
    
    @IBOutlet weak var scanButtonRef: UIButtonX!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        animateViews()
    }
    
    func animateViews(){
        welcomeLabel.alpha = 0
        messageLabel.alpha = 0
        scanButtonRef.alpha = 0
        
        UIView.animate(withDuration: 0.5, delay: 1, options: [], animations: {
            self.welcomeLabel.alpha = 1
        })
        UIView.animate(withDuration: 0.5, delay: 3, options: [], animations: {
            self.messageLabel.alpha = 1
        })
        UIView.animate(withDuration: 1, delay: 5, options: [], animations: {
            self.scanButtonRef.alpha = 1
        })
    }
    

}
