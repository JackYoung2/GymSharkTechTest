//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import SwiftUI

private extension CGFloat {
    static var medium = space5
    static var small = space4
    static var extraSmall = space3
}

public extension Font {
    struct Title {
        public static let medium: UIFont = UIFont.systemFont(ofSize: .medium, weight: .medium)
        public static let mediumBold: UIFont = UIFont.systemFont(ofSize: .medium, weight: .bold)
        public static let small: UIFont = UIFont.systemFont(ofSize: .small, weight: .semibold)
    }
    
    struct Body {
           public static let medium: UIFont = UIFont.systemFont(ofSize: .medium, weight: .regular)
           public static let small: UIFont = UIFont.systemFont(ofSize: .small, weight: .semibold)
           public static let extraSmall: UIFont = UIFont.systemFont(ofSize: .extraSmall, weight: .semibold)
       }
}
