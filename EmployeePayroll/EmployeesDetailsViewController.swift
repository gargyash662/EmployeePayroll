//
//  EmployeeDetailsViewController.swift
//  EmployeePayroll
//
//  Created by MacStudent on 2018-08-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class EmployeesDetailsViewController: UIViewController {
    @IBOutlet weak var typeofparttime: UISegmentedControl!
    @IBOutlet weak var txtid: UITextField!
    @IBOutlet weak var txtempname: UITextField!
    @IBOutlet weak var txtage: UITextField!
    @IBOutlet weak var typeofemployee: UISegmentedControl!
    @IBOutlet weak var fixedbasedview: UIView!
    @IBOutlet weak var commisionedview: UIView!
    @IBOutlet weak var PartTimeview: UIView!
    @IBOutlet weak var InternView: UIView!
    @IBOutlet weak var FullTimeEmployee: UIView!
    @IBOutlet weak var tablevehicle: UITableViewCell!
    @IBOutlet weak var typeofpARTTIMESEGMENT: UISegmentedControl!
    
    @IBOutlet weak var commisionpartimetxt: UITextField!
    @IBOutlet weak var fixedamountpartimetxt: UITextField!
    @IBOutlet weak var hoursworkedpartimetxt: UITextField!
    @IBOutlet weak var rateparttimetxt: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        employeetype()
    }

    
    @IBAction func segmenttypeparttime(_ sender: Any) {
        typeofpartime()
    }
    @IBAction func segmenttypeofemployee(_ sender: Any) {
        employeetype()
    }
    
    
    
    private func employeetype()
    {
        FullTimeEmployee.isHidden = true
        InternView.isHidden = true
        PartTimeview.isHidden = true
        
        
        let various  = typeofemployee.selectedSegmentIndex
        switch various {
        case 0:
            FullTimeEmployee.isHidden = false
           
        case 1:
           
            InternView.isHidden = false
            
        case 2:
           
            PartTimeview.isHidden = false
        default:
            print("check entry")
        }
        typeofpartime()
    }
    private func typeofpartime() {
        
        if !PartTimeview.isHidden {
            commisionpartimetxt.isHidden = true
            fixedamountpartimetxt.isHidden = true
            let parttimetype = typeofpARTTIMESEGMENT.selectedSegmentIndex
            if parttimetype  == 0
            {
                fixedamountpartimetxt.isHidden = false
            }
            else
            {
                commisionpartimetxt.isHidden = false
            }
            
        }
    }
    
    
    
    
    
    
    
    @IBAction func vehicle(_ sender: UISegmentedControl) {
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
