//
//  Card.swift
//  StoreProject
//
//  Created by admin on 06.06.2020.
//  Copyright © 2020 Ivan Bolgov. All rights reserved.
//

import Foundation

class Card {
	
	static var shared = Card()
	
	private init() {
		
	}
	
	var items = [Item]()
	
	func add(item: Item) {
		items.append(item)
	}
	
	func remove(item: Item) {
		guard let index = items.firstIndex(where: { item.title == $0.title})  else { return }
		items.remove(at: index)
	}
}
