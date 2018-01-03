//
//  VC1.swift
//  The_Way_Use_Delegate
//
//  Created by Admin on 1/3/18.
//  Copyright © 2018 anhhao. All rights reserved.
//

import UIKit

class VC1: UIViewController, DetailVC1Delegate🐶 {

    @IBOutlet weak var txtDisplay: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func passData(_ name: String){
        txtDisplay.text = name
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController2 = segue.destination as? VC2 {
            viewController2.delegate = self
        }
    }
}
