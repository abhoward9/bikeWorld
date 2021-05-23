//
//  TestViewController.swift
//  bikeWorld
//
//  Created by Andrew Howard on 5/22/21.
//

import UIKit




class TestViewController: UIViewController, WFDiscoveryManagerDelegate, WFHardwareConnectorDelegate {
    @IBOutlet weak var statusLabel: UILabel!
    func discoveryManager(_ discoveryManager: WFDiscoveryManager!, didDiscoverDevice deviceInformation: WFDeviceInformation!) {
        print("discovered device")
        statusLabel.text = "connected"

    }
    
    func discoveryManager(_ discoveryManager: WFDiscoveryManager!, didLooseDevice deviceInformation: WFDeviceInformation!) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        statusLabel.text = "no connection"

        let discoverMangager = WFDiscoveryManager()
        discoverMangager.delegate = self
       
        let sensorType = WF_SENSORTYPE_WAHOO_ADVANCED_FITNESS_MACHINE
        discoverMangager.discoverSensorTypes(<#T##sensorTypes: [Any]!##[Any]!#>, on: <#T##WFNetworkType_t#>)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
