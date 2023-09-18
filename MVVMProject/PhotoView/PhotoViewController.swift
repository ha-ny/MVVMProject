//
//  PhotoViewController.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/19.
//

import UIKit
import Kingfisher

class PhotoViewController: UIViewController {

    let mainView = PhotoView()
    let apiService = APIService.shared
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    func imageSetting(completion: @escaping () -> Void ) {
        apiService.randomPhoto { data in
            self.mainView.photoImageView.kf.setImage(with: URL(string: data.urls.regular))
            completion()
        }
    }
}
