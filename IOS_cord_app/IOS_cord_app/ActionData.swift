//
//  ActionData.swift
//  IOS_cord_app
//
//  Created by sapir on 18/05/2019.
//  Copyright © 2019 Sapir. All rights reserved.
//

import Foundation

class ActionData {
    
    var type : String?
    var body : String?
    var enabled : Bool?
    var text : String?
    
    init(type : String?, body : String? , enabled : Bool? , text: String?) {
        self.body = body
        self.enabled = enabled
        self.text = text
        self.type = type
    }
    
}
