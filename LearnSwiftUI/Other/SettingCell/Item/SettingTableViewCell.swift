//
//  SettingTableViewCell.swift
//  KinhQuranF2
//
//  Created by Chien ND on 29/8/25.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    @IBOutlet var imgCell: UIImageView!
    @IBOutlet var lbCell: UILabel!
    @IBOutlet var lbSub: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        // Initialization code
    }
    
    func setup(data: SettingItems, subTitle: String? = nil) {
//        if data == .language || data == .location {
//            lbSub.isHidden = false
//        } else { lbSub.isHidden = true }
        lbSub.text = data == .location ? subTitle : ""
        lbSub.isHidden = (data == .language || data == .location) ? false : true
        imgCell.image = data.icon
        lbCell.text = data.title
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    
}
