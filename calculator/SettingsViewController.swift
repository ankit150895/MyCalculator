//
//  SettingsViewController.swift
//  calculator
//
//  Created by Apple on 25/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var options = ["About Us","Change Email ID","Change 4 - digit Pin"]
    var titleof = ["About","Recovery","Change Pass"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! SettingsTableViewCell
        cell.settingsOptionLabel.text = "\t\(options[indexPath.section])"
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        // Do any additional setup after loading the view.
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titleof[section]
    }

    @IBAction func LockButtonPressed(_ sender: Any) {
        //let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
        //self.present(vc, animated: true, completion: nil)
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
