//
//  Initializer.swift
//  Demo
//
//  Created by Siarhei Ladzeika.
//

import Foundation
import SwiftSelfAware

class Initializer: SelfAware {

    static func awake() {
        print("Run before applicationDidFinishLaunching")
    }

}
