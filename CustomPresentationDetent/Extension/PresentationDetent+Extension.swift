//
//  PresentationDetent+Extension.swift
//  CustomPresentationDetent
//
//  Created by Amarildo João Custódio Lucas on 08/03/23.
//

import SwiftUI

extension PresentationDetent {
    static let bottom = Self.custom(BottomBarDetent.self)
    static let mediumBottomBar = Self.medium
    static let largeBottomBar = Self.large
}

private struct BottomBarDetent: CustomPresentationDetent {
    static func height(in context: Context) -> CGFloat? {
        max(64, context.maxDetentValue * 0.1)
    }
}
