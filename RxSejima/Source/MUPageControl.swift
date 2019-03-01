//
//  MUPageControl.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima

extension Reactive where Base: MUPageControl {
    public var numberOfPages: Binder<Int> {
        return Binder(self.base) { view, value in
            view.numberOfPages = value
        }
    }

    public var currentPage: Binder<Int> {
        return Binder(self.base) { view, value in
            view.set(page: value, animated: true)
        }
    }
}
