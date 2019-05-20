//
//  ViewController.swift
//  IOS_cord_app
//
//  Created by sapir on 18/05/2019.
//  Copyright © 2019 Sapir. All rights reserved.
//

import UIKit
import SVProgressHUD

class ViewController: UIViewController {
    var actions : [ActionData] = [ActionData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show()
        ActionsService.getActions(success: { [weak self] (actions) in
            SVProgressHUD.dismiss()
            if let strongSelf = self {
                strongSelf.actions = actions
            }
            }, failure: {
                SVProgressHUD.dismiss()
                print("Failed to fetch action data")
        })
    }
    
    @IBAction func prefromActionPressed(_ sender: Any) {
        if let randomAction : ActionData = actions.randomElement() {
            if let enabled = randomAction.enabled {
                if (enabled){
                    switch randomAction.type {
                    case "alert":
                        let alertAction : AlertAction = AlertAction(action: randomAction , view: self)
                        alertAction.performAction()
                        break
                    case "screen" :
                        let screenAction : ScreenAction = ScreenAction(action: randomAction , view: self)
                        screenAction.performAction()
                        break
                    case "alertSheet" :
                        let alertSheet : BottomSheetAction = BottomSheetAction(action: randomAction , view: self)
                        alertSheet.performAction()
                    default:
                        print("No action found")
                    }
                }
            }
        }
    }
}

