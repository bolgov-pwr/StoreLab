//
//  ViewController.swift
//  StoreProject
//
//  Created by admin on 06.06.2020.
//  Copyright © 2020 Ivan Bolgov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	
	let storage = Storage()
	
	var itemsInCard: Int {
		return Card.shared.items.count
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let barButton = UIBarButtonItem(title: "Card (\(itemsInCard))", style: .done, target: self, action: nil)
		barButton.tintColor = UIColor.black
		navigationItem.rightBarButtonItem = barButton
		tableView.delegate = self
		tableView.dataSource = self
	}
	
	static func create() -> UIViewController {
		let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String(describing: ViewController.self)) as! ViewController
		return vc
	}
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return storage.items.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ItemCell.self), for: indexPath) as! ItemCell
		let item = storage.items[indexPath.row]
		cell.itemImageView.image = UIImage(named: item.imageName)
		cell.titleLabel.text = item.title
		cell.textView.text = item.description
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
		let item = storage.items[indexPath.row]
		if Card.shared.items.contains(where: { $0.title == item.title }) {
			Card.shared.remove(item: item)
		} else {
			Card.shared.add(item: item)
		}
		
		navigationItem.rightBarButtonItem?.title = "Card (\(itemsInCard))"
	}
}
