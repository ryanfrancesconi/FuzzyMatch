// ===----------------------------------------------------------------------===//
//
// This source file is part of the FuzzyMatch open source project
//
// Copyright (c) 2026 Ordo One, AB. and the FuzzyMatch project authors
// Licensed under Apache License v2.0
//
// See LICENSE for license information
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

/// Test helper that provides convenient UnsafeBufferPointer access for arrays.
/// Used by tests that call internal functions which previously took Span parameters.

extension Array {
    /// Provides an `UnsafeBufferPointer` view of this array for test convenience.
    /// Replaces `.ubp` usage in tests after the Span → UnsafeBufferPointer migration.
    var ubp: UnsafeBufferPointer<Element> {
        withUnsafeBufferPointer { $0 }
    }
}
