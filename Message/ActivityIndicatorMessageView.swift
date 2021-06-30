//
//  ActivityIndicatorMessageView.swift
//  Pods
//
//  Created by الياسي on 28/06/2021.
//

import UIKit
 class ActivityIndicatorMessageView: UIViewController {
   
   override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
     func showActivityIndicator(_ title:String)  {
        showActivityIndicator2(title)
    }
     func hideActivityIndicator()  {
        hideActivityIndicator2()
    }
}
let activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
var container: UIView = UIView()
var loadingView: UIView = UIView()
extension UIViewController {
     func showActivityIndicator2(_ title:String) {
        
        let Label : UILabel = UILabel()
        container.frame = view.frame
        container.center = view.center
        container.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 0.5) //UIColorFromHex(rgbValue: 0xffffff, alpha: 0.3)
        Label.text = title
        loadingView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        loadingView.center = view.center
        loadingView.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1) //UIColorFromHex(rgbValue: 0x444444, alpha: 0.7)
        loadingView.clipsToBounds = true
        loadingView.layer.cornerRadius = 10
        
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 30.0, height: 30.0)
        activityIndicator.style = UIActivityIndicatorView.Style.whiteLarge
        activityIndicator.center = CGPoint(x: loadingView.frame.size.width / 2, y: loadingView.frame.size.height / 2);
        //
        Label.textAlignment = .center
       // container.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        Label.frame = CGRect(x: 100, y:100, width: 100.0, height: 50)
       // Label.style = UIActivityIndicatorView.Style.whiteLarge
        Label.center = CGPoint(x:loadingView.frame.size.width / 2, y: 80);
         loadingView.addSubview(Label)
         loadingView.addSubview(activityIndicator)
        container.addSubview(loadingView)
        view.addSubview(container)
        activityIndicator.startAnimating()
        for subview in container.subviews {
            if subview.tag == 100 {
                print("already added")
                return
            }
        }

      //  container.addSubview(activityIndicator)
    }

    func hideActivityIndicator2() {
        let activityIndicator = container.viewWithTag(100) as? UIActivityIndicatorView
        activityIndicator?.stopAnimating()

        // I think you forgot to remove it?
        container.removeFromSuperview()

        //UIApplication.shared.endIgnoringInteractionEvents()
    }
}

 
public struct Message {
    public init() {}
    public func hideActivityIndicator(){
       ActivityIndicatorMessageView.init().hideActivityIndicator()
    }

    public func showActivityIndicator(_ Message : String ){
        ActivityIndicatorMessageView.init().showActivityIndicator("String")
    }
 }
