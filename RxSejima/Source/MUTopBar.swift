//
//  MUTopBar.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import UIKit.UIImage
import RxSwift
import RxCocoa
import Sejima

#if os(iOS)

extension Reactive where Base: MUTopBar {
    
    /// Bindable sink for `title` property.
    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.title = value
        }
    }

    /// Bindable sink for `buttonImage` property.
    public var buttonImage: Binder<UIImage?> {
        return Binder(self.base) { view, value in
            view.buttonImage = value
        }
    }

    /// Bindable sink for `showButton` property.
    public var showButton: Binder<Bool> {
        return Binder(self.base) { view, value in
            view.showButton = value
        }
    }
}

#endif
