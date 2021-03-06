// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors

// RUN: %target-swift-frontend %s -emit-silgen

// REQUIRES: objc_interop

// Issue found by http://github.com/martijnwalraven (Martijn Walraven)
// rdar://18662915

import Foundation
class Test: NSObject {
  override func isEqual(object: AnyObject?) -> Bool {
    return false && super.isEqual(object)
  }
}
