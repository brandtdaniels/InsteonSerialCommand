//
//  SerialCommand.swift
//  
//
//  Created by Brandt Daniels on 5/17/20.
//

import Foundation

public let acknowledgement = 0x06

public let negativeAcknowledgement = 0x15

public let startOfText = 0x02

// MARK: - SerialCommand

public struct SerialCommand {

  public let type: SerialCommandType
  
  public init(_ type: SerialCommandType) {
    
    self.type = type
    
  }
  
}

// MARK: - SerialCommandProtocol

extension SerialCommand: SerialCommandProtocol {
  
  public var stringValue: String {
    
    return String(
      format: "%02X%@", startOfText, type.stringValue
    )
    
  }
  
}
