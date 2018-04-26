//
//  AfterSettingsViewController.swift
//  calculator
//
//  Created by Apple on 26/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class AfterSettingsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var buttonRefrence: UIButton!
    var placeHolderforEmail = ["Enter Current Email","Enter New Email","Re-Enter new Email"]
    var placeHolderforPin = ["Enter Current 4 Digit Pin","Enter new 4 Digit Pin","Re-Inter 4 Digit Pin"]
    
    @IBAction func buttonPressed(_ sender: Any) {
        if indexPathReceive == [1,0]
        {
            print("button pressed for changing email")
        }
        else {
            print("button pressed for changing 4 digit pass")
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       if indexPathReceive == [0,0]
        {
            buttonRefrence.isEnabled = false
            buttonRefrence.isHidden = true
            return 1
        }
        else if indexPathReceive == [1,0]
        {
            buttonRefrence.isEnabled = true
            buttonRefrence.isHidden = false
            return 1
        }
        else {
            buttonRefrence.isEnabled = true
            buttonRefrence.isHidden = false
            return 1
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        if indexPathReceive == [0,0]
        {
            buttonRefrence.isEnabled = false
            buttonRefrence.isHidden = true
            return 1
        }
        else if indexPathReceive == [1,0]
        {
            buttonRefrence.isEnabled = true
            buttonRefrence.isHidden = false
            return 3
        }
        else {
            buttonRefrence.isEnabled = true
            buttonRefrence.isHidden = false
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "AfterSettingsCell") as! AfterSettingsTableViewCell
        if indexPathReceive == [0,0]
        {
            cell.outputDisplayText.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
            cell.heightConstraint.constant = 300
            cell.outputDisplayText.isUserInteractionEnabled = false
            return cell
        }
    else if indexPathReceive == [1,0]
        {
            buttonRefrence.titleLabel?.text = "Submit"
            buttonRefrence.titleLabel?.textColor = UIColor.black
            cell.heightConstraint.constant = 80
             cell.outputDisplayText.font = UIFont.boldSystemFont(ofSize: 20)
            return cell
        } else{
            buttonRefrence.titleLabel?.text = "Submit"
            buttonRefrence.titleLabel?.textColor = UIColor.black
            cell.heightConstraint.constant = 80
            cell.outputDisplayText.font = UIFont.boldSystemFont(ofSize: 20)
            return cell
        }
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPathReceive == [0,0]
        {
            return 300
        }
        else {
            return 50
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if indexPathReceive == [0,0]
        {
            return "About Us"
        }
        else if indexPathReceive == [1,0]
        {
            return placeHolderforEmail[section]
        }
        else {
            return placeHolderforPin[section]
        }
    }
    @IBAction func backButtonPRessed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
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
