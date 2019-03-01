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

extension Reactive where Base: MUTextField {
    public var title: Binder<String> {
        return Binder(self.base) { view, value in
            view.title = value
        }
    }

    public var placeholder: Binder<String> {
        return Binder(self.base) { view, value in
            view.placeholder = value
        }
    }

    public var text: Binder<String> {
        return Binder(self.base) { view, value in
            view.text = value
        }
    }

    public var isSecure: Binder<Bool> {
        return Binder(self.base) { view, value in
            view.isSecure = value
        }
    }

    public var isEditable: Binder<Bool> {
        return Binder(self.base) { view, value in
            view.isEditable = value
        }
    }
}
