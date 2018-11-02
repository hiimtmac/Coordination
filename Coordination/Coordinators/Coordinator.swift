//
//  Coordinator.swift
//  Coordination
//
//  Created by Taylor McIntyre on 2018-10-29.
//  Copyright © 2018 hiimtmac. All rights reserved.
//

import UIKit

public protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
}

extension Coordinator {
    public func addDependency(_ coordinator: Coordinator) {
        for childCoordinator in childCoordinators {
            if childCoordinator === coordinator {
                return
            }
        }
        childCoordinators.append(coordinator)
    }
    
    public func removeDependency(_ coordinator: Coordinator) {
        for (index, childCoordinator) in childCoordinators.enumerated() {
            if childCoordinator === coordinator {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}
