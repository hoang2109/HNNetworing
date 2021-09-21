//
//  DefaultDataTransferErrorLogger.swift
//  HNNetworking
//
//  Created by Hoang Nguyen on 21/9/21.
//

import Foundation

public final class DefaultDataTransferErrorLogger: DataTransferErrorLogger {
    public init() { }

    public func log(error: Error) {
        printIfDebug("-------------")
        printIfDebug("\(error)")
    }
}
