//
//  HomeViewExtension.swift
//  Task
//
//  Created by Wahyd on 03/11/2020.
//

import UIKit

extension HomeViewController: UITableViewDelegate , UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 2 {
            return 5
        }
        else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TPCell") as! TPCell
            
            //handle cell here
            
            return cell
        }
        else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RCVCell") as! RCVCell
            
            //handle cell here
            
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NACell") as! NACell
            
            //handle cell here
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let view = self.storyboard?.instantiateViewController(identifier: "ProductDetailViewController")
        navigationController?.pushViewController(view!, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 210
        }
        else if indexPath.section == 1 {
            return 281
        }
        else {
            return 170
        }
    }
}

