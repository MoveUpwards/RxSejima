//
//  MUHeader.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima

#if os(iOS)

extension Reactive where Base: MUHeader {
    
    /// Bindable sink for `title` property.
    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.title = value
        }
    }

    /// Bindable sink for `detail` property.
    public var detail: Binder<String> {
        return Binder(self.base) { view, value in
            view.detail = value
        }
    }
}

#endif
