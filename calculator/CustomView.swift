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
    var albumImage: [UIImage] = [#imageLiteral(resourceName: "defaultImage")]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as! HomeTableViewCell
        cell.homeAlbumName.text = "\ttest Album"
        cell.homeAlbumName.textColor = UIColor.white
        cell.homeAlbumName.font = UIFont.boldSystemFont(ofSize: 20)
        cell.homeImage.image = albumImage[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    @IBAction func addTouchUpInside(_ sender: Any) {
        print("check")
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let newAlbum = UIAlertAction(title: "Add New Album", style: .default){
            (action) in print("New Album")
            
            self.popUpView.center = self.view.center
            self.popUpView.layer.cornerRadius = 20
            self.popUpView.clipsToBounds = true
            self.view.addSubview(self.popUpView)
            
        }
        
        let editAlbum = UIAlertAction(title: "Edit Album", style: .default){
            (action) in print("Edit Album")
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){
            (action) in print("Cancel There")
        }
        
        alert.addAction(newAlbum)
        alert.addAction(editAlbum)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBOutlet var popUpView: UIVisualEffectView!
    
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
