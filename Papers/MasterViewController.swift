//
//  MasterViewController.swift
//  Papers
//
//  Created by Mic Pringle on 09/01/2015.
//  Copyright (c) 2015 Razeware LLC. All rights reserved.
//

import UIKit

class MasterViewController: UICollectionViewController {
  
  private var papersDataSource = PapersDataSource()
  
  // MARK: UIViewController
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let width = CGRectGetWidth(collectionView!.frame) / 3
    let layout = collectionViewLayout as UICollectionViewFlowLayout
    layout.itemSize = CGSize(width: width, height: width)
  }
  
  // MARK: UICollectionViewDataSource
  
  override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
    return 1
  }
  
  override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return papersDataSource.count
  }
  
  override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PaperCell", forIndexPath: indexPath) as UICollectionViewCell
    return cell
  }
  
}
