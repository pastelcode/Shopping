//
//  ISO8601WithFractionalSecondsDateDecoder.swift
//  Shopping
//
//  Created by Samuel Marroquín on 2/08/24.
//

import Foundation

// From: https://stackoverflow.com/a/46458771
extension ParseStrategy where Self == Date.ISO8601FormatStyle {
    static var iso8601withFractionalSeconds: Self {
        .init(includingFractionalSeconds: true)
    }
}

extension JSONDecoder.DateDecodingStrategy {
    static let iso8601withOptionalFractionalSeconds = custom { decoder in
        let string = try decoder.singleValueContainer().decode(String.self)
        do {
            return try .init(string, strategy: .iso8601withFractionalSeconds)
        } catch {
            return try .init(string, strategy: .iso8601)
        }
    }
}
