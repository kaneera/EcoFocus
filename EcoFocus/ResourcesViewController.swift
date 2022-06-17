//
//  ResourcesViewController.swift
//  EcoFocus
//
//  Created by Kaneera on 2022-06-17.
//  Copyright © 2022 Kaneera. All rights reserved.
//

import UIKit
import WebKit

class ResourcesViewController: UIViewController {
    
    @IBAction func placesToDonate(_ sender: Any) {
        let donateURL = URL(string:"https://www.vox.com/future-perfect/2019/12/2/20976180/climate-change-best-charities-effective-philanthropy")
        UIApplication.shared.open(donateURL!)
    }
    
    @IBAction func organizations(_ sender: Any) {
        let orgURL = URL(string:"https://climatebiodiversity.carrd.co/")
        UIApplication.shared.open(orgURL!)
    }
    
    @IBAction func climate101(_ sender: Any) {
        let climateURL = URL(string:"https://www.nrdc.org/stories/global-climate-change-what-you-need-know")
        UIApplication.shared.open(climateURL!)
    }
    
    @IBAction func ecoFriendly(_ sender: Any) {
        let ecoURL = URL(string:"https://greenglobaltravel.com/going-green-earth-day-tips/")
           UIApplication.shared.open(ecoURL!)
    }
    
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let googleURL = URL (string: "https://youtu.be/yiw6_JakZFc?list=PLIDGpLmJEIeZL_2Ra-4IxRknlcQmUN1D5")
          myWebView.load(URLRequest(url:googleURL!))

        // Do any additional setup after loading the view.
    }
    
}
