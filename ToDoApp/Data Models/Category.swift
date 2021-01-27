//
//  Category.swift
//  ToDoApp
//
//  Created by NIKOLAI BORISOV on 27.01.2021.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var color: String = ""
    let items = List<Item>()
    
}
