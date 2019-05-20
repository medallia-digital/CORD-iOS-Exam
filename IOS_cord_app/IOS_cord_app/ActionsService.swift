//
//  ActionsService.swift
//  IOS_cord_app
//
//  Created by sapir on 20/05/2019.
//  Copyright © 2019 Sapir. All rights reserved.
//

import Foundation

class ActionsService {
    
    static func getActions(success: (([ActionData]) -> ())?,
                           failure: (() -> ())?) {
        var actions : [ActionData] = [ActionData]()
        let url = URL(string: "https://raw.githubusercontent.com/medallia-digital/Exams-Data/master/mobileCordData.json")!
        //fetching the data from the url
        URLSession.shared.dataTask(with: url, completionHandler: {(data, response, error) -> Void in
            if let data = data {
                if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [Dictionary<String,Any>] {
                    for dict in json{
                        let actionData = ActionData(type: dict["type"] as? String,
                                                    body: dict["body"] as? String,
                                                    enabled: dict["enabled"] as? Bool,
                                                    text: dict["text"] as? String)
                        actions.append(actionData)
                    }
                    success?(actions)
                } else {
                    failure?()
                }
            } else {
                failure?()
                
            }
        }).resume()
        
        
    }
    
}
