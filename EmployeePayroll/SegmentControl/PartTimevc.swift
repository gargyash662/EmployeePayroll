//
//  PartTimevc.swift
//  EmployeePayroll
//
//  Created by yash on 17/08/18.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class PartTimevc: UIViewController {

    
    
    
    @IBOutlet weak var parttimeview: UIView!
    var commview: UIView!
    var fixview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        commview = commissionvc().view
        fixview = fixedvc().view
        parttimeview.addSubview(commview)
        parttimeview.addSubview(fixview)
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
   

    @IBAction func TypeOfPartTime(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            parttimeview.bringSubview(toFront: commview)
            break
        case 1:
            parttimeview.bringSubview(toFront: fixview)
            break
        default:
            break
        }
       
    }
    override func didReceiveMemoryWarning() {
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
