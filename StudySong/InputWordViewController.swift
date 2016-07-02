//
//  InputWordViewController.swift
//  studyKaraoke
//
//  Created by 渡邊翼 on 2016/07/02.
//  Copyright © 2016年 x. All rights reserved.
//

import UIKit

class InputWordViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate {
  @IBOutlet weak var enterButton: UIBarButtonItem!
  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var InputTextField: UITextField!
  var searchResult = [String]()
  override func prefersStatusBarHidden() -> Bool {
    return true
  }
  
  func textFieldDidBeginEditing(textField: UITextField) {
    enterButton.title = "入力"
  }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool{
    InputTextField.resignFirstResponder()
    searchResult.append(InputTextField.text!)
    tableView.reloadData()
    enterButton.title = "完了"
    return true
  }
  
  @IBAction func onClickEnterButton(sender: AnyObject) {
    if enterButton.title == "完了" {
    let storyboard = UIStoryboard(name: "SearchSong", bundle: nil)
    let nextVC = storyboard.instantiateViewControllerWithIdentifier("SearchSong") as! SearchSongViewController
    self.presentViewController(nextVC, animated: true, completion: nil)
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    InputTextField.delegate = self
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem()
  }
  
  
  
  func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
    
    //セルを取得する。
    let cell = tableView.dequeueReusableCellWithIdentifier("RememberWordCustomCell", forIndexPath:indexPath) as!  RememberWordCustomCell
    cell.wordLabel.text = searchResult[indexPath.row]
    return cell
  }
  
  //データの個数を返すメソッド
  func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
    return searchResult.count
  }
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    print("Selected \(indexPath.section)-\(indexPath.row)")
    
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: - Table view data source
  
  
  /*
   override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
   let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
   
   // Configure the cell...
   
   return cell
   }
   */
  
  /*
   // Override to support conditional editing of the table view.
   override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
   // Return false if you do not want the specified item to be editable.
   return true
   }
   */
  
  /*
   // Override to support editing the table view.
   override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
   if editingStyle == .Delete {
   // Delete the row from the data source
   tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
   } else if editingStyle == .Insert {
   // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
   }
   }
   */
  
  /*
   // Override to support rearranging the table view.
   override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
   
   }
   */
  
  /*
   // Override to support conditional rearranging of the table view.
   override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
   // Return false if you do not want the item to be re-orderable.
   return true
   }
   */
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}
