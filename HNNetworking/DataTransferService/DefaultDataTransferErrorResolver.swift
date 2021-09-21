//
//  DefaultDataTransferErrorResolver.swift
//  HNNetworking
//
//  Created by Hoang Nguyen on 21/9/21.
//

import Foundation

public class DefaultDataTransferErrorResolver: DataTransferErrorResolver {
    public init() { }
    public func resolve(error: NetworkError) -> Error {
        return error
    }
}
