//
//  BottomSheetAction.swift
//  IOS_cord_app
//
//  Created by sapir on 19/05/2019.
//  Copyright © 2019 Sapir. All rights reserved.
//

import UIKit
class BottomSheetAction : BaseAction {
    
    
    
    override func performAction() {
        let optionMenu = UIAlertController(title: self.action.text, message: self.action.body, preferredStyle: .actionSheet);
        
        let saveAction = UIAlertAction(title: "OK", style: .default, handler:
        {
            (alert: UIAlertAction!) -> Void in
        })
        
        optionMenu.addAction(saveAction)
        
        self.view.present(optionMenu, animated: true, completion: nil)
    }
    
}
