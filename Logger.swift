//
//  Logger.swift
//
//  Created by Sisov Alexandr on 9/27/19.
//  Copyright © 2019 Sisov Alexandr. All rights reserved.
//

import os
import Foundation

func log(_ type: OSLogType, log: OSLog = .default, _ message: String) {
    #if DEBUG
    os_log(type, log: log, "%@", message)
    #endif
}

extension OSLog {
    private static var subsystem = Bundle.main.bundleIdentifier!
    
    static let network   = OSLog(subsystem: subsystem, category: "Network")
    static let storage   = OSLog(subsystem: subsystem, category: "Storage")
    static let activity  = OSLog(subsystem: subsystem, category: "Activity")
    static let bluetooth = OSLog(subsystem: subsystem, category: "Bluetooth")
}
