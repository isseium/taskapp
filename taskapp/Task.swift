//
//  Task.swift
//  taskapp
//
//  Created by Issei Komatsu on 2016/10/05.
//  Copyright © 2016年 Issei Komatsu. All rights reserved.
//

import RealmSwift

class Task: Object {
    // 管理用 ID。プライマリーキー
    dynamic var id = 0
    
    // タイトル
    dynamic var title = ""
    
    // 内容
    dynamic var contents = ""
    
    /// 日時
    dynamic var date = NSDate()
    
    // カテゴリ
    dynamic var category:Category?
    
    /**
     id をプライマリーキーとして設定
     */
    override static func primaryKey() -> String? {
        return "id"
    }
}