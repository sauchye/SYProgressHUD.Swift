//
//  ViewController.swift
//  SYProgressHUD.Swift
//
//  Created by Saucheong Ye on 3/24/19.
//  Copyright © 2019 sauchye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.9568627451, alpha: 1)
    }
    
    
    @IBAction func indicatorAction(_ sender: UIButton) {
        let hud = SYProgressHUD.showLoadingAddView(view: view)
        hud.label.text = "Loading..."
        hud.hide(animated: true, afterDelay: 2);
    }
    
    
    @IBAction func customAction(_ sender: UIButton) {
        SYProgressHUD.showCustomView(icon: "nav_back_icon", text: "just test")
    }
    
    
    @IBAction func successAction(_ sender: UIButton) {
        SYProgressHUD.showSuccessHUD(text: "success info")
    }
    
    @IBAction func errorAction(_ sender: UIButton) {
        SYProgressHUD.showErrorHUD(text: "failed info")
    }
}

