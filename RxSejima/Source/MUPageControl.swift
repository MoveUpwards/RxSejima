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

#if os(iOS)

extension Reactive where Base: MUPageControl {
    
    /// Bindable sink for `numberOfPages` property.
    public var numberOfPages: Binder<Int> {
        return Binder(self.base) { view, value in
            view.numberOfPages = value
        }
    }

    /// Bindable sink for `set(page: Int, animated: Bool)` method.
    public var currentPage: Binder<Int> {
        return Binder(self.base) { view, value in
            view.set(page: value, animated: true)
        }
    }
}

#endif
