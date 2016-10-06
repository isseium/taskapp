//
//  Category.swift
//  taskapp
//
//  Created by Issei Komatsu on 2016/10/05.
//  Copyright © 2016年 Issei Komatsu. All rights reserved.
//

import RealmSwift

class Category: Object {
    // 管理用 ID。プライマリーキー
    dynamic var id = 0
    
    // カテゴリ名
    dynamic var title = ""
    
    /**
     id をプライマリーキーとして設定
     */
    override static func primaryKey() -> String? {
        return "id"
    }
}