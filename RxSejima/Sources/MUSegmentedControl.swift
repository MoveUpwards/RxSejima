//
//  MUSegmentedControl.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import UIKit.UIImage
import RxSwift
import RxCocoa
import Sejima

extension Reactive where Base: MUSegmentedControl {
    public var index: Binder<Int> {
        return Binder(self.base) { view, value in
            view.set(index: value)
        }
    }

    public var selectedColor: Binder<UIColor> {
        return Binder(self.base) { view, value in
            view.selectedColor = value
        }
    }

    public var selectedTitleColor: Binder<UIColor> {
        return Binder(self.base) { view, value in
            view.selectedTitleColor = value
        }
    }
}
