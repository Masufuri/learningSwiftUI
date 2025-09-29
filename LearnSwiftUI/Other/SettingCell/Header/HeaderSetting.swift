//
//  HeaderSetting.swift
//  KinhQuranF2
//
//  Created by Chien ND on 3/9/25.
//

import UIKit
import RxSwift

class HeaderSetting: UITableViewCell {
    @IBOutlet var lbTitle: UILabel!
    @IBOutlet var lbSubTitle: UILabel!
    
    @IBOutlet var btnSubmit: UIButton!
    var disposeBag = DisposeBag()

    override func awakeFromNib() {
        super.awakeFromNib()
        lbTitle.text = LocalizedService.shared.text.remove_all_ads()
        lbSubTitle.text = LocalizedService.shared.text.enjoy_a_smooth_experience()
        btnSubmit.setTitle(LocalizedService.shared.text.upgrade(), for: .normal)
        // Initialization code
        setupPurchase()
    }
    
    func setupPurchase() {
        UtilityManager.share.isVip
            .withUnretained(self)
            .subscribe(onNext: { owner, isVip in
                guard isVip else { return }
                owner.btnSubmit.isHidden = true
                owner.lbTitle.isHidden = true
                owner.lbSubTitle.isHidden = true
            }).disposed(by: disposeBag)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        btnSubmit.layoutIfNeeded()
        btnSubmit.applyLinearGradient(colors: [.colorFromHex("FACD51"), .colorFromHex("F38723")])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        disposeBag = DisposeBag()
    }
}
