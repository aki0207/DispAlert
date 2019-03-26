import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func dispButtonPushed(_ sender: Any) {
        
        let title = "アラートを表示"
        let message = "カモーンぬ"
        let ok_text = "ok"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: ok_text, style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(okButton)
        
        present(alert,animated: true, completion: nil)
        
    }
}

