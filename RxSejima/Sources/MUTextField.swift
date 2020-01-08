//
//  MUTextField.swift
//  RxSejima
//
//  Created by Loïc GRIFFIE on 13/02/2019.
//  Copyright © 2019 Loïc GRIFFIE. All rights reserved.
//

import RxSwift
import RxCocoa
import Sejima

#if os(iOS)

extension Reactive where Base: MUTextField {
    
    /// Bindable sink for `title` property.
    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.title = value
        }
    }

    /// Bindable sink for `placeholder` property.
    public var placeholder: Binder<String> {
        return Binder(self.base) { view, value in
            view.placeholder = value
        }
    }

    /// Bindable sink for `text` property.
    public var text: Binder<String?> {
        return Binder(self.base) { view, value in
            view.text = value
        }
    }

    /// Bindable sink for `isSecure` property.
    public var isSecure: Binder<Bool> {
        return Binder(self.base) { view, value in
            view.isSecure = value
        }
    }

    /// Bindable sink for `isEditable` property.
    public var isEditable: Binder<Bool> {
        return Binder(self.base) { view, value in
            view.isEditable = value
        }
    }
}

#endif
