//
//  DesignGroup.swift
//  RealmMemoApp
//
//  Created by UrataHiroki on 2021/09/05.
//

import Foundation
import UIKit

class DesignGroup{
    
    static func targetDesign(targetView:UIView,targetButton:UIButton,targetTableView:UITableView){
        
        targetView.layer.cornerRadius = 15.0
        targetView.layer.shadowOffset = CGSize(width: 4, height: 4)
        targetView.layer.shadowRadius = 15.0
        targetView.layer.shadowOpacity = 0.8
        
        targetButton.layer.cornerRadius = 10.0
        
        targetTableView.layer.cornerRadius = 15.0
    }
    
}
