//
//  MUCollectionButton.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima

#if os(iOS)

extension Reactive where Base: MUCollectionButton {

    /// Bindable sink for `isLoading` property.
    public var isLoading: Binder<Bool> {
        return Binder(self.base) { view, value in
            view.isLoading = value
        }
    }
}

#endif
