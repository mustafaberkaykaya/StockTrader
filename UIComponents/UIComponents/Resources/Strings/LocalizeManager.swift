//
//  LocalizeManager.swift
//  UIComponents
//
//  Created by Berkay on 14.01.2023.
//

import Foundation

public class LocalizeManager {

    static public let shared = LocalizeManager()
    
    private var strings: [String: String]?
    
    public func set(strings: [String: String]) {
        self.strings = strings
    }
    
    public func string(by key: String, args: [CVarArg]) -> String? {
        guard let format = self.strings?[key] else { return nil }
        return String(format: format, arguments: args)
    }
}

