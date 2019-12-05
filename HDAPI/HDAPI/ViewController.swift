//
//  ViewController.swift
//  HDAPI
//
//  Created by Hieu Dinh on 8/31/19.
//  Copyright © 2019 Hieu Dinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func action(_ sender: Any) {
        HDApiRequest.shared.getGeolocationFromIPAdress { (response) in
            print(response?.query ?? "")
        }
    }
}
