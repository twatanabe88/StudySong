import Foundation
import UIKit


class LoginViewController: UIViewController {
  @IBOutlet weak var loginButton: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  @IBAction func clickLoginButton(sender: AnyObject) {
    let storyboard = UIStoryboard(name: "InputWord", bundle: nil)
    let nextVC = storyboard.instantiateViewControllerWithIdentifier("InputWord") as! InputWordViewController
    self.presentViewController(nextVC, animated: true, completion: nil)
  }
  
}
