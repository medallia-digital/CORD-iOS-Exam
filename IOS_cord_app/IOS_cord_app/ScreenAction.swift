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
        let nextScreenLable = UITextField(frame: CGRect(x: 120, y: 130, width: 173, height: 50))
        nextScreenLable.textColor = UIColor.black
        nextScreenLable.text = self.action.body
        vc.view.addSubview(nextScreenLable)
        vc.view.backgroundColor = UIColor.white
        self.view.navigationController?.pushViewController(vc, animated: true)
    }
}
