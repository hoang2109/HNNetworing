//
//  JSONResponseDecoder.swift
//  HNNetworking
//
//  Created by Hoang Nguyen on 21/9/21.
//

import Foundation

public class JSONResponseDecoder: ResponseDecoder {
    private let jsonDecoder = JSONDecoder()
    public init() { }
    public func decode<T: Decodable>(_ data: Data) throws -> T {
        return try jsonDecoder.decode(T.self, from: data)
    }
}
