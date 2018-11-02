//
//  AlertPresenting.swift
//  Coordination
//
//  Created by Taylor McIntyre on 2018-10-29.
//  Copyright © 2018 hiimtmac. All rights reserved.
//

import UIKit

public protocol AlertPresenting: AnyObject {}

extension AlertPresenting where Self: UIViewController {
    public func showOkMessage(title: String, withMessage: String? = nil, onDismiss: (() -> ())? = nil) {
        let ac = UIAlertController(title: title, message: withMessage, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default) { _ in
            onDismiss?()
        })
        present(ac, animated: true)
    }
}
