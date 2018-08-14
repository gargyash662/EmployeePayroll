//
//  LogInScreenViewController.swift
//  EmployeePayroll
//
//  Created by MacStudent on 2018-08-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController
{
    
    @IBOutlet weak var txtuserEmail: UITextField!
    @IBOutlet weak var password: UITextField!
    var userDefault: UserDefaults?
    
    @IBOutlet weak var Swtchremember: UISwitch!
    @IBAction func btnlogin(_ sender: Any)
    {
        if txtuserEmail.text == "admin" && password.text == "password"
        {
            userDefault?.setValue(txtuserEmail.text, forKey: "email")
            userDefault?.setValue(password.text, forKey: "password")
            performSegue(withIdentifier: "ElectricityBillViewController", sender: self)
            
        } else
        {
            print("Invalid Email and Password")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userDefault = UserDefaults.standard
        
        if let userEmail = userDefault?.value(forKey: "email")
        {
            //if let userPassword
            txtuserEmail.text = userEmail as? String
        }
        // Do any additional setup after loading the view.
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
