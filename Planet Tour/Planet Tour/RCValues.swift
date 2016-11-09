//
//  RCValues.swift
//  Planet Tour
//
//  Created by Mao on 09/11/2016.
//  Copyright © 2016 Razeware. All rights reserved.
//

import Foundation
import Firebase

enum ValueKey: String {
  case appPrimaryColor
}

class RCValues {
  
  static let sharedInstance = RCValues()
  
  var loadingDoneCallback: (() -> ())?
  var fetchComplete: Bool = false
  
  private init() {
    loadDefaultValues()
    fetchCloudValues()
  }
  
  func loadDefaultValues() {
//    let appDefaults: [String: NSObject] = [
//      "appPrimaryColor" : "#FBB03B" as NSObject
//    ]
    let appDefaults: [String: NSObject] = [
      ValueKey.appPrimaryColor.rawValue : "#FBB03B" as NSObject
    ]
    FIRRemoteConfig.remoteConfig().setDefaults(appDefaults)
  }
  func fetchCloudValues() {
    // 1
    // WARNING: Don't actually do this in production!
    let fetchDuration: TimeInterval = 0
    FIRRemoteConfig.remoteConfig().fetch(withExpirationDuration: fetchDuration) {
      [weak self] (status, error) in
      
      guard error == nil else {
        print ("Uh-oh. Got an error fetching remote values \(error)")
        return
      }
      
      // 2
      FIRRemoteConfig.remoteConfig().activateFetched()
      print ("Retrieved values from the cloud!")
      print ("Our app's primary color is \(FIRRemoteConfig.remoteConfig().configValue(forKey: "appPrimaryColor").stringValue)")
      
      
      // ADD THESE TWO LINES HERE!
      self?.fetchComplete = true
      self?.loadingDoneCallback?()
    }
    activateDebugMode()
  }
  func activateDebugMode() {
    let debugSettings = FIRRemoteConfigSettings(developerModeEnabled: true)
    FIRRemoteConfig.remoteConfig().configSettings = debugSettings!
  }
  
  func color(forKey key: ValueKey) -> UIColor {
    let colorAsHexString = FIRRemoteConfig.remoteConfig()[key.rawValue].stringValue ?? "#FFFFFFFF"
    let convertedColor = UIColor(rgba: colorAsHexString)
    return convertedColor
  }
}
