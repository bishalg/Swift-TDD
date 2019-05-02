//
//  CellTitleDetails.swift
//  Aashvi Care
//
//  Created by Bishal Ghimire on 5/2/19.
//  Copyright © 2019 Bishal Ghimire. All rights reserved.
//

import UIKit

typealias CellTitleDetailsPresentables = CellTitlePresentable

class CellTitleDetails: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel! {
        didSet {
            
        }
    }
    @IBOutlet var detailLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

extension CellTitleDetails: NibLoadableView { }
extension CellTitleDetails: ReusableView { }

extension CellTitleDetails: CellTitleDetailsPresentables {
    
    var title: String {
        get {
            return titleLabel.text ?? ""
        }
        set {
            titleLabel.text = title
        }
    }
    
    var detail: String {
        get {
            return detailLabel.text ?? ""
        }
        set {
            detailLabel.text = detail
        }
    }
    
}
