//
//  ScreenAction.swift
//  IOS_cord_app
//
//  Created by sapir on 19/05/2019.
//  Copyright © 2019 Sapir. All rights reserved.
//

import UIKit

class ScreenAction : BaseAction {

    override func performAction() {
        let vc = UIViewController()
        vc.view.backgroundColor = UIColor.red
        self.view.navigationController?.pushViewController(vc, animated: true)
    }
}
