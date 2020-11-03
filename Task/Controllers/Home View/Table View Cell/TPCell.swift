//
//  TPTableViewCell.swift
//  Task
//
//  Created by Wahyd on 03/11/2020.
//

import UIKit

class TPCell: UITableViewCell {

    @IBOutlet weak var slider: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
