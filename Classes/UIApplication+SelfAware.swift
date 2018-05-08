//
//  UIApplication+SelfAware.swift
//
//  Created by Siarhei Ladzeika.
//  Original idea: http://jordansmith.io/handling-the-deprecation-of-initialize/

import UIKit

extension UIApplication {
    
    private static let runOnce: Void = {
        UIApplication.harmlessFunction()
    }()
    
    override open var next: UIResponder? {
        // Called before applicationDidFinishLaunching
        UIApplication.runOnce
        return super.next
    }
    
    static func harmlessFunction() {
        let typeCount = Int(objc_getClassList(nil, 0))
    #if swift(>=4.0)
        let types = UnsafeMutablePointer<AnyClass>.allocate(capacity: typeCount)
        let safeTypes = AutoreleasingUnsafeMutablePointer<AnyClass>(types)
        objc_getClassList(safeTypes, Int32(typeCount))
    #else
        let types = UnsafeMutablePointer<AnyClass?>.allocate(capacity: typeCount)
        let safeTypes = AutoreleasingUnsafeMutablePointer<AnyClass?>(types)
        objc_getClassList(safeTypes, Int32(typeCount))
    #endif
        for index in 0 ..< typeCount { (types[index] as? SelfAware.Type)?.awake() }
        types.deallocate()
    }
}
