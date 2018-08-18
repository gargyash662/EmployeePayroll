//
//  EmployeeDetailsViewController.swift
//  EmployeePayroll
//
//  Created by MacStudent on 2018-08-13.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class EmployeesDetailsViewController: UIViewController {
    
    @IBOutlet weak var typeofemployee: UISegmentedControl!
    @IBOutlet weak var txtid: UITextField!
    @IBOutlet weak var txtempname: UITextField!
    @IBOutlet weak var txtage: UITextField!
    
    
    
    
    @IBOutlet weak var viewControl: UIView!
    var view1: UIView!
    var view2: UIView!
    var view3: UIView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view1 = FullTimeViewController().view
        view3 = PartTimevc().view
        view2 = Internvc().view
        viewControl.addSubview(view1)
        viewControl.addSubview(view2)
        viewControl.addSubview(view3)
    }

    
   
    
    
    
    
    
    
    @IBAction func segment_view(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            viewControl.bringSubview(toFront: view1)
            break
        case 1:
            viewControl.bringSubview(toFront: view2)
            break
        case 2:
            viewControl.bringSubview(toFront: view3)
            break
        default:
            break
        }
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
