//
//  MUCollectionPicker.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima

#if os(iOS)

extension Reactive where Base: MUCollectionPicker {
    
    /// Bindable sink for `indicatorColor` property.
    public var indicatorColor: Binder<UIColor> {
        return Binder(self.base) { view, value in
            view.indicatorColor = value
        }
    }

    /// Bindable sink for `itemSelectedColor` property.
    public var itemSelectedColor: Binder<UIColor> {
        return Binder(self.base) { view, value in
            view.itemSelectedColor = value
        }
    }

    /// Bindable sink for `itemUnselectedColor` property.
    public var itemUnselectedColor: Binder<UIColor> {
        return Binder(self.base) { view, value in
            view.itemUnselectedColor = value
        }
    }

    /// Bindable sink for `items` property.
    public var items: Binder<[String]> {
        return Binder(self.base) { view, value in
            view.set(value)
        }
    }
}

#endif
