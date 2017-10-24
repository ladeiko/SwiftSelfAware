//
//  SelfAwareProtocol.swift
//
//  Created by Siarhei Ladzeika.
//  Original idea: http://jordansmith.io/handling-the-deprecation-of-initialize/

public protocol SelfAware: class {
    static func awake()
}

