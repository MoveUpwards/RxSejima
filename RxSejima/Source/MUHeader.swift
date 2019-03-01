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

extension Reactive where Base: MUHeader {
    public var title: Binder<String> {
        return Binder(self.base) { view, text in
            view.title = text
        }
    }

    public var detail: Binder<String> {
        return Binder(self.base) { view, text in
            view.detail = text
        }
    }
}
