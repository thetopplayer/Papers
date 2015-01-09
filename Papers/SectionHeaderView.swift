//
//  SectionHeaderView.swift
//  Papers
//
//  Created by Mic Pringle on 09/01/2015.
//  Copyright (c) 2015 Razeware LLC. All rights reserved.
//

import UIKit

class SectionHeaderView: UICollectionReusableView {
  
  @IBOutlet private weak var titleLabel: UILabel!
  
  var title: String? {
    didSet {
      titleLabel.text = title
    }
  }
    
}
