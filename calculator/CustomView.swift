//
//  CustomView.swift
//  calculator
//
//  Created by Apple on 12/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit
import SideMenu
class CustomView: UIViewController,UITableViewDataSource,UITableViewDelegate,UISideMenuNavigationControllerDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as! HomeTableViewCell
        cell.homeAlbumName.text = "test Album"
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MenuSeague"
        {
           // self.present(UISideMenuNavigationController(rootViewController:CustomView()), animated: true, completion: nil)
        }
    }

  
    var menuVisible = false
    override func viewDidLoad() {
        
        super.viewDidLoad()
        /*let menuLeftNavigationController = UISideMenuNavigationController(rootViewController:  CustomView())
        SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
        let menuRightNavigationController = UISideMenuNavigationController(rootViewController: CustomView())
        SideMenuManager.default.menuRightNavigationController = menuRightNavigationController
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        */
    }

   
    

}
