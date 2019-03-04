//
//  MUNavigationBar.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima

#if os(iOS)

extension Reactive where Base: MUNavigationBar {
    
    /// Bindable sink for `leftButtonImage` property.
    public var leftButtonImage: Binder<UIImage?> {
        return Binder(self.base) { view, value in
            view.leftButtonImage = value
        }
    }

    /// Bindable sink for `mainButtonTitle` property.
    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.mainButtonTitle = value
        }
    }

    /// Bindable sink for `mainButtonIsLoading` property.
    public var isLoading: Binder<Bool> {
        return Binder(self.base) { view, value in
            view.mainButtonIsLoading = value
        }
    }

    /// Bindable sink for `mainButtonState` property.
    public var state: Binder<UIControl.State> {
        return Binder(self.base) { view, value in
            view.mainButtonState = value
        }
    }
}

#endif
