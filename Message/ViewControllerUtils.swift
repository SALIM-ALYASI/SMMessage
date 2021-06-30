//
//  ViewControllerUtils.swift
//  Pods
//
//  Created by الياسي on 30/06/2021.
//

import UIKit
import SystemConfiguration
class ViewControllerUtils {
    
    static let shared = ViewControllerUtils()
    //public init() {
    //}
   
    var container: UIView = UIView()
    var loadingView: UIView = UIView()
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    let Label : UILabel = UILabel()
    /*
     Show customized activity indicator,
     actually add activity indicator to passing view
     
     @param uiView - add activity indicator to this view
     */
    
    func showActivityIndicator(uiView: UIView) {
        container.frame = uiView.frame
        container.center = uiView.center
       // container.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) //UIColorFromHex(rgbValue: 0xffffff, alpha: 0.3)
        Label.text = "true"
        loadingView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        loadingView.center = uiView.center
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
        uiView.addSubview(container)
        activityIndicator.startAnimating()
    }
    
    /*
     Hide activity indicator
     Actually remove activity indicator from its super view
     
     @param uiView - remove activity indicator from this view
     */
    func hideActivityIndicator(uiView: UIView) {
       
        activityIndicator.stopAnimating()
        container.removeFromSuperview()
        loadingView.removeFromSuperview()
        
    }
    
    /*
     Define UIColor from hex value
     
     @param rgbValue - hex color value
     @param alpha - transparency level
     */
//    func UIColorFromHex(rgbValue:UInt32, alpha:Double=1.0)->UIColor {
//        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
//        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
//        let blue = CGFloat(rgbValue & 0xFF)/256.0
//        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
//    }
    
}
