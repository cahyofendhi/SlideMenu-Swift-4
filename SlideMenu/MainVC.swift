//
//  MainVC.swift
//  SlideMenu
//
//  Created by DOT Indonesia on 16/01/18.
//  Copyright © 2018 bcr. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(showProfile), name: NSNotification.Name("showProfile"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showSetting), name: NSNotification.Name("showSetting"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showSignIn), name: NSNotification.Name("showSignIn"), object: nil)
        
    }
    
    @objc func showProfile(){
        performSegue(withIdentifier: "ShowProfile", sender: nil)
    }
    
    @objc func showSetting(){
        performSegue(withIdentifier: "ShowSetting", sender: nil)
    }
    
    @objc func showSignIn(){
        performSegue(withIdentifier: "ShowSignIn", sender: nil)
    }
    
    
    @IBAction func onMoreTapped(){
        print("TOGGLE SIDE MENU")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }

}
