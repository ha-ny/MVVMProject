//
//  BaseView.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/18.
//

import UIKit
import SnapKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setConfigure()
        setContains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConfigure() { }
    func setContains() { }
}
