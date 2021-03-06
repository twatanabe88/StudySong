//
//  SearchSongViewController.swift
//  StudySong
//
//  Created by 渡邊翼 on 2016/07/03.
//  Copyright © 2016年 渡邊翼. All rights reserved.
//

import UIKit

class SearchSongViewController: UIViewController {

  
  @IBAction func onClickBackButton(sender: AnyObject) {
    dismissViewControllerAnimated(true, completion: nil)
  }
  
  @IBOutlet weak var inputSongTextField: UITextField!
  
  @IBOutlet weak var inputArtistTextField: UITextField!
  
  @IBAction func onClickEnterButton(sender: AnyObject) {
    let storyboard = UIStoryboard(name: "PlayView", bundle: nil)
    let nextVC = storyboard.instantiateViewControllerWithIdentifier("PlayView") as! PlayViewViewController
    self.presentViewController(nextVC, animated: true, completion: nil)
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
