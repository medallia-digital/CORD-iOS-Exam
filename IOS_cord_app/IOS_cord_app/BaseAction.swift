//
//  BaseAction.swift
//  IOS_cord_app
//
//  Created by sapir on 18/05/2019.
//  Copyright © 2019 Sapir. All rights reserved.
//

import Foundation

class BaseAction{
    
    var action: ActionData
    var view: ViewController
    
    init(action: ActionData, view: ViewController) {
        
        self.action = action
        self.view = view
    }
    
    func performAction() -> Void {
        
    }
    
    
}
