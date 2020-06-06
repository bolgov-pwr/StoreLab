//
//  ItemCell.swift
//  StoreProject
//
//  Created by admin on 06.06.2020.
//  Copyright © 2020 Ivan Bolgov. All rights reserved.
//

import UIKit

final class ItemCell: UITableViewCell {
	
	@IBOutlet weak var itemImageView: UIImageView!
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var textView: UITextView!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		
		itemImageView.clipsToBounds = true
		textView.isUserInteractionEnabled = false
		selectionStyle = .none
	}
}

