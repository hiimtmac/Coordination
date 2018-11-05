//
//  AppCoordinator.swift
//  Coordination
//
//  Created by Taylor McIntyre on 2018-10-29.
//  Copyright © 2018 hiimtmac. All rights reserved.
//

import UIKit

public protocol ApplicationCoordinator: Coordinator {
    func handleShortcut(_ shortcutitem: UIApplicationShortcutItem)
}

extension ApplicationCoordinator {
    public func handle(_ launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        if let shortcutItem = launchOptions?[UIApplication.LaunchOptionsKey.shortcutItem] as? UIApplicationShortcutItem {
            handleShortcut(shortcutItem)
        }
    }
}
