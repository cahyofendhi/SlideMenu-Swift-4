//
//  SideMenuVC.swift
//  SlideMenu
//
//  Created by DOT Indonesia on 16/01/18.
//  Copyright © 2018 bcr. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        switch indexPath.row {
        case 0:  NotificationCenter.default.post(name: NSNotification.Name("showProfile"), object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("showSetting"), object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("showSignIn"), object: nil)
        default: break
        }
        
    }

}
