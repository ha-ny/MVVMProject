//
//  PhotoView.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/19.
//

import UIKit

class PhotoView: BaseView {

    let photoImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 8
        view.backgroundColor = .darkGray
        return view
    }()
   
    override func setConfigure() {
        addSubview(photoImageView)
    }

    override func setContains() {
        
        photoImageView.snp.makeConstraints { make in
            make.width.equalTo(self.safeAreaLayoutGuide).multipliedBy(0.8)
            make.height.equalTo(photoImageView.snp.width)
            make.center.equalTo(self.safeAreaLayoutGuide)
        }
    }
}

