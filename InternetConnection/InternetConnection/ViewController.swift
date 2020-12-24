//
//  ViewController.swift
//  InternetConnection
//
//  Created by Pixster Studio on 23/12/20.
//

import UIKit
import PSConnectionFinder

class ViewController: UIViewController {

    @IBOutlet weak var lblConnection: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        PSConnection.shared.startMonitoring()
        
        PSConnection.shared.netStatusChangeHandler = {
            DispatchQueue.main.async { [unowned self] in
                lblConnection.text = PSConnection.shared.isConnected ? "Connected" : "Not Connected"
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }


}

