//
//  ViewController.swift
//  ActivityIndecator
//
//  Created by Seungjun Lim on 22/05/2019.
//  Copyright © 2019 Seungjun Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    @IBOutlet weak var hiddenSwitch: UISwitch!
    
    @IBAction func toggleHidden(_ sender: UISwitch) {
        loader.hidesWhenStopped = sender.isOn
    }
    
    @IBAction func start(_ sender: Any) {
        if !loader.isAnimating {
            loader.startAnimating()
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        if loader.isAnimating {
            loader.stopAnimating()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hiddenSwitch.isOn = loader.hidesWhenStopped
        loader.startAnimating()
    }


}

