//
//  HomeViewController.swift
//  Task
//
//  Created by Wahyd on 03/11/2020.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    //MARK:IBActions Methods
    @IBAction func btnLocationClicked(_ sender: Any) {
        showAlert(msg: "Location list will show")
    }
    
    @IBAction func btnBedRoomClicked(_ sender: Any) {
        showAlert(msg: "Bed room list will show")
    }
    
    @IBAction func btnLivingRoomClicked(_ sender: Any) {
        showAlert(msg: "Living room list will show")
    }
    
    @IBAction func btnCameraClicked(_ sender: Any) {
        showAlert(msg: "Camera list will show")
    }
    
    @IBAction func btnApplianceClicked(_ sender: Any) {
        showAlert(msg: "Appliance list will show")
    }
    
    @IBAction func btnStorageClicked(_ sender: Any) {
        showAlert(msg: "Storage list will show")
    }
    
    @IBAction func btnPackgeClicked(_ sender: Any) {
        showAlert(msg: "Packges list will show")
    }
}


