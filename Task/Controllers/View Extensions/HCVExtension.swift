//
//  HomeCollectionViewExtension.swift
//  Task
//
//  Created by Wahyd on 03/11/2020.
//

import UIKit

extension HomeViewController: UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TPSliderCell", for: indexPath) as! TPSliderCell
            
            //handle cell here
            
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RCVSliderCell", for: indexPath) as! RCVSliderCell
            
            //handle cell here
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let view = self.storyboard?.instantiateViewController(identifier: "ProductDetailViewController")
        navigationController?.pushViewController(view!, animated: true)
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //return CGSize(width: 145, height: 200)
        
        let numberOfItemsPerRow:CGFloat = 4
        let spacingBetweenCells:CGFloat = 5
        
        let totalSpacing = (2 * 5) + ((numberOfItemsPerRow - 1) * spacingBetweenCells) //Amount of total spacing in a row
        
        let width = (collectionView.bounds.width - totalSpacing)/numberOfItemsPerRow
        
        return CGSize(width: width * 1.6, height: width * 2.3)
    }
}
