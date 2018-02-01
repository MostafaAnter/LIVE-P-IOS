//
//  ViewController.swift
//  LIVE PLUS
//
//  Created by Mostafa Anter on 1/9/18.
//  Copyright © 2018 LIVE PLUS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // make timer to open second page after 4 seconds
        _ = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(self.update), userInfo: nil, repeats: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func update() {
        // go to second screen HomeVC is view controller id of new screen
        // present to ViewController programmatically
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "HomeVC")
        self.present(controller, animated: true, completion: nil)
        
        // Safe Present
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeVC") as? HomeViewController
        {
            present(vc, animated: true, completion: nil)
        }
    }
    
}

