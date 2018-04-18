//
//  MenuViewController.swift
//  calculator
//
//  Created by Apple on 18/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit
import SideMenu
class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var menuHeading = ["Row 1","Row 2"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuTableViewCell
        cell.menuLabel.text = menuHeading[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
     // let menuLeftNavigationController = UISideMenuNavigationController(rootViewController:  CustomView())
     //   SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
     let menuRightNavigationController = UISideMenuNavigationController(rootViewController: CustomView())
     SideMenuManager.default.menuRightNavigationController = menuRightNavigationController
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}