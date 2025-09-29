//
//  HeaderSetting.swift
//  KinhQuranF2
//
//  Created by Chien ND on 3/9/25.
//

import UIKit

class HeaderSetting: UITableViewCell {
    @IBOutlet var lbTitle: UILabel!
    @IBOutlet var lbSubTitle: UILabel!
    
    @IBOutlet var btnSubmit: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        lbTitle.text = "asdasd"
        lbSubTitle.text = "asdasd"
        btnSubmit.setTitle("asdasd", for: .normal)
        // Initialization code
        setupPurchase()
    }
    
    func setupPurchase() {
//        UtilityManager.share.isVip
//            .withUnretained(self)
//            .subscribe(onNext: { owner, isVip in
//                guard isVip else { return }
//                owner.btnSubmit.isHidden = true
//                owner.lbTitle.isHidden = true
//                owner.lbSubTitle.isHidden = true
//            }).disposed(by: disposeBag)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        btnSubmit.layoutIfNeeded()
//        btnSubmit.applyLinearGradient(colors: [.colorFromHex("FACD51"), .colorFromHex("F38723")])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        disposeBag = DisposeBag()
    }
}
