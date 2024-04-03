//
//  Alert.swift
//  DolceKeto
//
//  Created by AS on 4/2/24.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                       message: Text("Unable to complete your request at this time."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                       message: Text("Unable to complete your request at this time."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("Unable to complete your request at this time."),
                                       dismissButton: .default(Text("OK")))
}
