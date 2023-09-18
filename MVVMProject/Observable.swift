//
//  Observable.swift
//  MVVMProject
//
//  Created by 김하은 on 2023/09/19.
//

import Foundation

class Observable <T> {
    var listener: ((T) -> Void)?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(method: @escaping (T) -> Void) {
        listener = method
    }
}
