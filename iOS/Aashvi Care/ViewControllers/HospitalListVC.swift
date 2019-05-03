//
//  HospitalListVC.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 5/3/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import UIKit
import AsyncDisplayKit
import IGListKit

public protocol RefreshingSectionControllerType {
    func refreshContent(completion: (() -> Void)?)
}

final class HospitalListVC: ASViewController<ASCollectionNode> {
    
    var listAdapter: ListAdapter!
    var collectionNode: ASCollectionNode!
    var spinner: UIActivityIndicatorView!
    var refreshCtrl: UIRefreshControl!
    
    init() {
        let layout = UICollectionViewFlowLayout()
        let node = ASCollectionNode(collectionViewLayout: layout)
        super.init(node: node)
        
        title = "Hospitals"
        let screenRect = UIScreen.main.bounds
        let screenScale = UIScreen.main.scale
        let screenWidthImageSize = CGSize(width: screenRect.size.width * screenScale, height: screenRect.size.height * screenScale)
        
        let updater = ListAdapterUpdater()
        listAdapter = ListAdapter(updater: updater, viewController: self, workingRangeSize: 0)
        listAdapter.dataSource = self
        listAdapter.setASDKCollectionNode(collectionNode)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("storyboards are incompatible with truth and beauty")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionNode.view.alwaysBounceVertical = true
        refreshCtrl = UIRefreshControl()
        refreshCtrl.addTarget(self, action: #selector(refreshFeed), for: .valueChanged)
        collectionNode.view.addSubview(refreshCtrl)
        spinner = UIActivityIndicatorView.init(style: .gray)
    }
    
    @objc
    func refreshFeed() {
        
    }
    
}

extension HospitalListVC: ListAdapterDataSource {
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return [HospitalFeedModel()]
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return spinner
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return HospitalFeedSectionController()
    }
    
}

/**
 Conform to `IGListAdapterDelegate` to receive display events for objects in a list.
 @protocol IGListAdapterDelegate <NSObject>
extension HospitalListVC {
    
    
    
    /**
     Notifies the delegate that a list object is about to be displayed.
     
     @param listAdapter The list adapter sending this information.
     @param object The object that will display.
     @param index The index of the object in the list.
     */
    - (void)listAdapter:(IGListAdapter *)listAdapter willDisplayObject:(id)object atIndex:(NSInteger)index;
    
    /**
     Notifies the delegate that a list object is no longer being displayed.
     
     @param listAdapter The list adapter sending this information.
     @param object The object that ended display.
     @param index The index of the object in the list.
     */
    - (void)listAdapter:(IGListAdapter *)listAdapter didEndDisplayingObject:(id)object atIndex:(NSInteger)index;

}
*/

/**
 Implement this protocol to provide data to an `IGListAdapter`.
 NS_SWIFT_NAME(ListAdapterDataSource)
 @protocol IGListAdapterDataSource <NSObject>
extension HospitalListVC {
    
    /**
     Asks the data source for the objects to display in the list.
     @param listAdapter The list adapter requesting this information.
     @return An array of objects for the list.
     */
    - (NSArray<id <IGListDiffable>> *)objectsForListAdapter:(IGListAdapter *)listAdapter;
    
    /**
     Asks the data source for a section controller for the specified object in the list.
     
     @param listAdapter The list adapter requesting this information.
     @param object An object in the list.
     
     @return A new section controller instance that can be displayed in the list.
     
     @note New section controllers should be initialized here for objects when asked. You may pass any other data to
     the section controller at this time.
     
     Section controllers are initialized for all objects whenever the `IGListAdapter` is created, updated, or reloaded.
     Section controllers are reused when objects are moved or updated. Maintaining the `-[IGListDiffable diffIdentifier]`
     guarantees this.
     */
    - (IGListSectionController *)listAdapter:(IGListAdapter *)listAdapter sectionControllerForObject:(id)object;
    
    /**
     Asks the data source for a view to use as the collection view background when the list is empty.
     
     @param listAdapter The list adapter requesting this information.
     
     @return A view to use as the collection view background, or `nil` if you don't want a background view.
     
     @note This method is called every time the list adapter is updated. You are free to return new views every time,
     but for performance reasons you may want to retain the view and return it here. The infra is only responsible for
     adding the background view and maintaining its visibility.
     */
    - (nullable UIView *)emptyViewForListAdapter:(IGListAdapter *)listAdapter;

}
 
 */

