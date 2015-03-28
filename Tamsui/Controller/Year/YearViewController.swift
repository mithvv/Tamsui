//
//  YearViewController.swift
//  Tamsui
//
//  Created by mithvv on 2/5/15.
//  Copyright (c) 2015 mithvv. All rights reserved.
//

import UIKit


let kYearCollectionCell             = "kYearCollectionCell"
let kYearReusableHeaderView         = "kYearReusableHeaderView"


class YearViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout
{
    
    var cellSize                : CGSize;
    var yearsArray              : [Int];
    
    
    required init(coder aDecoder: NSCoder) {
        
        // init cellSize.
        let lineCellsCount : CGFloat = UIDevice.currentDevice().userInterfaceIdiom == .Phone ? 3 : 6;
        
        let padding : CGFloat = CGFloat(kPaddingBaseVaule);
        let screenWidth = UIScreen.mainScreen().preferredMode.size.width/UIScreen.mainScreen().scale;
        let cellWidth = ((screenWidth - padding) / lineCellsCount) - padding;
        
        self.cellSize = CGSizeMake(cellWidth, cellWidth);
        
        self.yearsArray = Array()
        for i in 2001...2075
        {
            self.yearsArray.append(i)
        }
        
        super.init(coder: aDecoder)
    }
    
    
    override func awakeFromNib() {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
//        self.navigationController?.navigationBarHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

    
    // UICollectionViewDataSource&UICollectionViewDelegate
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 75;
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 12;
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell : YearCollectionCell = collectionView.dequeueReusableCellWithReuseIdentifier(
            kYearCollectionCell,
            forIndexPath: indexPath)
            as YearCollectionCell
        
        cell.monthLabel.text = "\(indexPath.row+1)月"
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        let view : YearReusableHeaderView = collectionView.dequeueReusableSupplementaryViewOfKind(UICollectionElementKindSectionHeader, withReuseIdentifier: kYearReusableHeaderView, forIndexPath: indexPath) as YearReusableHeaderView
        
        view.yearLabel.text = "\(indexPath.section + 2000)年"
        
        return view
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        
    }
    
    
    // UICollectionViewDelegateFlowLayout
    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize
    {
        return self.cellSize;
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(kPaddingBaseVaule, kPaddingBaseVaule, kPaddingBaseVaule, kPaddingBaseVaule)
    }

    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return kPaddingBaseVaule;
    }
}
