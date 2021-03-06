//
//  IMUIUserProtocol.swift
//  IMUIChat
//
//  Created by oshumini on 2017/2/24.
//  Copyright © 2017年 HXHG. All rights reserved.
//

import UIKit

/**
 *  The `IMUIUserProtocol` protocol defines the common interface with user model objects
 *  It declares the required methods which model should implement it
 */

@objc public protocol IMUIUserProtocol: NSObjectProtocol {
  
  /**
   *  return user id, to identifies this user
   */
  func userId() -> String
  
  /**
   *  return user displayName, which will display in IMUIBaseMessageCell.nameLabel
   */
  func displayName() -> String
  
  /**
   *  return user header image, which will display in IMUIBaseMessageCell.avatarImage.
   *  if use avatarUrlString function to get web image you can use this function to set avatar placehold image.
   */
  func Avatar() -> UIImage?
    
  /**
   *  return avatar image url string, for web image.
   */
  @objc optional func avatarUrlString() -> String?
}

