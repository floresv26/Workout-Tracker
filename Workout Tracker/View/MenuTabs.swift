//
//  MenuTabs.swift
//  Workout Tracker
//
//  Created by Vanessa Flores on 8/2/18.
//  Copyright © 2018 Vanessa Flores. All rights reserved.
//

import UIKit

class MenuTabs: UIView {

    @IBOutlet weak var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
//        fatalError("init(coder:) has not been implemented")
        
        if self.subviews.count == 0{
            self.setup()
        }
    }

    func setup() {
        Bundle.main.loadNibNamed("MenuTabs", owner: self, options: nil)
        guard let content = contentView else { return }
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        addSubview(content)
    }
}
