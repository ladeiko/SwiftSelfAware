# SwiftSelfAware

[Original idea](http://jordansmith.io/handling-the-deprecation-of-initialize/)

## Purpose
Swift solution to run the code on application startup.

## Changes

### v1.0.4
* Fix compilation warnings

## Installation

### Cocoapods

Add this to your *Podfile*

```
pod 'SwiftSelfAware'
```

If cocoapod spec file was not found, then you can set direct git url:

```
pod 'SwiftSelfAware', :git => 'https://github.com/ladeiko/SwiftSelfAware.git'
```

Then install pods by running:

```bash
pod install
```

## Usage

```swift
import Foundation
import SwiftSelfAware

class SomeClass: SelfAware {

    static func awake() {
        print("Run before applicationDidFinishLaunching")
    }

}
```

