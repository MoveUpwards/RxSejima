//
//  MUButton.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima
import UIKit

#if os(iOS)

extension Reactive where Base: MUButton {

    /// Bindable sink for `title` property.
    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.title = value
        }
    }

    /// Bindable sink for `isLoading` property.
    public var isLoading: Binder<Bool> {
        return Binder(self.base) { view, value in
            view.isLoading = value
        }
    }

    /// Bindable sink for `state` property.
    public var state: Binder<UIControl.State> {
        return Binder(self.base) { view, value in
            view.state = value
        }
    }

    /// Bindable sink for `buttonBackgroundColor` property.
    public var backgroundColor: Binder<UIColor> {
        return Binder(self.base) { view, value in
            view.buttonBackgroundColor = value
        }
    }
}

#endif
