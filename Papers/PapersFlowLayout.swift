//
//  PapersFlowLayout.swift
//  Papers
//
//  Created by Mic Pringle on 19/01/2015.
//  Copyright (c) 2015 Razeware LLC. All rights reserved.
//

import UIKit

class PapersFlowLayout: UICollectionViewFlowLayout {
  
  var appearingItemIndexPath: NSIndexPath?
  
  override func initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath: NSIndexPath) -> UICollectionViewLayoutAttributes? {
    let attributes = super.initialLayoutAttributesForAppearingItemAtIndexPath(itemIndexPath)
    if let indexPath = appearingItemIndexPath {
      if let attributes = attributes {
        if indexPath == itemIndexPath {
          let width = CGRectGetWidth(collectionView!.frame)
          attributes.alpha = 1.0
          attributes.center = CGPoint(x: CGRectGetWidth(collectionView!.frame) - 23.5, y: -24.5)
          attributes.transform = CGAffineTransformMakeScale(0.15, 0.15)
          attributes.zIndex = 99
        }
      }
    }
    return attributes
  }
  
}
