//
//  LogInScreenViewController.swift
//  EmployeePayroll
//
//  Created by MacStudent on 2018-08-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LogInScreenViewController: UIViewController {
    
   
    @IBOutlet weak var txtuserEmail: UITextField!
    @IBOutlet weak var password: UITextField!
   
    var userDefault: UserDefaults?
    @IBOutlet weak var Swtchremember: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userDefault = UserDefaults.standard
        if let username = userDefault?.value(forKey: "username")
        {
            if let userpassword1 = userDefault?.value(forKey: "password")
            {
                txtuserEmail.text = username as? String
                password.text = userpassword1 as? String
                Swtchremember.setOn(true, animated: true)
            }
        }
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnlogin(_ sender: Any){
        if txtuserEmail.text?.elementsEqual("admin") == true  && password.text?.elementsEqual("admin@123") == true
        {
            if Swtchremember.isOn
            {
                userDefault?.setValue(txtuserEmail.text, forKey: "username")
                userDefault?.setValue(password.text, forKey: "password")
            }else
            {
                userDefault?.removeObject(forKey: "username")
                userDefault?.removeObject(forKey: "password")
            }
            
            performSegue(withIdentifier: "EmployeeDetailsViewController", sender: self)
            
        }
        else {
            let myAlert = UIAlertController(title: "Who is this?", message: "UserName/Password Incorrect", preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert,animated: true, completion: nil)
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
