//
//  ViewController.swift
//  EmployeePayroll
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        perform(#selector(self.goToLoginScreen), with: nil, afterDelay: 5)
        
    }
    
    @objc func goToLoginScreen()
        
    {
        performSegue(withIdentifier: "showLoginScreen", sender: self)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
