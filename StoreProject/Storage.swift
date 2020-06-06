//
//  Storage.swift
//  StoreProject
//
//  Created by admin on 06.06.2020.
//  Copyright © 2020 Ivan Bolgov. All rights reserved.
//

import Foundation

struct Item {
	let title: String
	let imageName: String
	let description: String
}

class Storage {
	
	let items = [
		Item(title: "Fanatec F1", imageName: "fanatec.jpg", description: "Officially licensed by Formula 1™, the limited edition ClubSport Steering Wheel F1® 2020 features forged carbon and magnetic shifter paddles."),
		Item(title: "SimCore F1", imageName: "simcore.jpeg", description: "Fully custom designed Indy 2019 model carbon fiber steering wheel with 280mm diameter."),
//		Item(title: "Thrustmaster F1", imageName: "thrustmaster.jpg", description: "Ferrari F1 Wheel Add-On"),
		Item(title: "CubeControl F1", imageName: "cube.jpg", description: "Pure Carbon and aluminium body. Huge Display, to be always in control. Designed to make an impact."),
		Item(title: "PrecisionSImRacing F1", imageName: "precision.jpg", description: "The state of the art 290mm diameter grand prix wheel for the serious sim racer.")
	]
}
