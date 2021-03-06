// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors

// RUN: %target-swift-frontend %s -emit-ir

// Issue found by https://github.com/robrix (Rob Rix)
// http://www.openradar.me/17501507
// https://twitter.com/rob_rix/status/483456023773315073

protocol A {
    associatedtype B
    func b(_: B)
}
struct X<Y> : A {
    func b(_ b: X.Type) {
    }
}
