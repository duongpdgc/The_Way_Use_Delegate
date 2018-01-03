//
//  VC2.swift
//  The_Way_Use_Delegate
//
//  Created by Admin on 1/3/18.
//  Copyright © 2018 anhhao. All rights reserved.
//

import UIKit

protocol DetailVC1Delegate🐶 {
    func passData(_ name: String)
}

class VC2: UIViewController {

    @IBOutlet weak var txtChange: UITextField!
    var delegate: DetailVC1Delegate🐶?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func btnPopInVC2(_ sender: Any) {
//        if txtChange.text != "" {
//        delegate?.passData(txtChange.text!)
//        navigationController?.popViewController(animated: true)
//        }
//    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        delegate?.passData(txtChange.text!)
    }
}
