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
    
    @IBAction func transitionButton(_ sender: Any) {
        
        let title = "こっちはなんと"
        let message = "画面遷移しちゃいまーす"
        let ok_text = "let'sらgo"
        

        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        //OKボタン追加
        let okAction = UIAlertAction(title: ok_text, style: UIAlertAction.Style.default, handler:{(action: UIAlertAction!) in
            
            //アラートが消えるのと画面遷移が重ならないように0.5秒後に画面遷移するようにしてる
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                // 0.5秒後に実行したい処理
                self.performSegue(withIdentifier: "toSub", sender: nil)
            }
        }
        )
        
        alert.addAction(okAction)
        
        //アラートを表示する
        present(alert, animated: true, completion: nil)

    }
}


