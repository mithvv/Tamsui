//
//  HomeViewController.swift
//  Tamsui
//
//  Created by mAir on 2015/2/5.
//  Copyright (c) 2015年 mithvv. All rights reserved.
//

import UIKit


let kLifeCollectionCell         = "kLifeCollectionCell";

let kPaddingBaseVaule           : CGFloat       = 16.0;


class LifeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
{
    var cellSize                : CGSize;
    var yearsArray              : [Int];
    

    required init(coder aDecoder: NSCoder) {
        // init cellSize.
        let lineCellsCount : CGFloat = UIDevice.currentDevice().userInterfaceIdiom == .Phone ? 5 : 9;
        
        let padding : CGFloat = CGFloat(kPaddingBaseVaule);
        let screenWidth = UIScreen.mainScreen().preferredMode.size.width/UIScreen.mainScreen().scale;
        let cellWidth = ((screenWidth - padding) / lineCellsCount) - padding;
        
        self.cellSize = CGSizeMake(cellWidth, cellWidth/0.618);
        
        self.yearsArray = Array()
        for i in 2001...2075
        {
            self.yearsArray.append(i)
        }
        
        super.init(coder: aDecoder)
    }
    
    
    override func awakeFromNib() {

    }
    
    // UICollectionViewDataSource&UICollectionViewDelegate
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return yearsArray.count;
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell : LifeCollectionCell = collectionView.dequeueReusableCellWithReuseIdentifier(
            kLifeCollectionCell,
            forIndexPath: indexPath)
            as LifeCollectionCell;
        
        cell.yearLabel.text = "\(yearsArray[indexPath.row])"
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        
    }
    
    
    // TODO: move to BaseCollectionViewController
    // UICollectionViewDelegateFlowLayout
    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    {
        return self.cellSize;
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(kPaddingBaseVaule, kPaddingBaseVaule, kPaddingBaseVaule*5, kPaddingBaseVaule)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return kPaddingBaseVaule;
    }
    
}
