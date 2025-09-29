//
//  TestView.swift
//  LearnSwiftUI
//
//  Created by Chien ND on 26/9/25.
//

import UIKit

class TestView: UIView {
    @IBOutlet var lbCenter: UILabel!
    
    var asda: Bool = false {
        didSet {
            lbCenter.text = asda.description
        }
    }
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        test()
//    }
//    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        test()
//    }
    
    func test() {
        self.backgroundColor = .blue
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        lbCenter.text = asda.description
    }

}
