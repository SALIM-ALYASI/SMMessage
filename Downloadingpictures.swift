//
//  Downloadingpictures.swift
//  Pods-SMMessage_Example
//
//  Created by الياسي on 24/06/2021.
//

import UIKit

public class Downloadingpictures: UIView {
    
   static let instance = Downloadingpictures()
    
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var alertView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("downloadingpictures", owner: self, options: nil)
        commonInit()
        activityIndicatorView.startAnimating()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
//        img.layer.cornerRadius = 30
//        img.layer.borderColor = UIColor.white.cgColor
//        img.layer.borderWidth = 2
        
        alertView.layer.cornerRadius = 10
        
        parentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        parentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    enum AlertType {
        case success
        case failure
    }
    
    public func showAlert(title: String) {
        self.titleLbl.text = title
        
      UIApplication.shared.keyWindow?.addSubview(parentView)
    }
    
    
    
    public func onClickDone() {
       DispatchQueue.main.async {
         self.activityIndicatorView.stopAnimating()
         self.parentView.removeFromSuperview()
         }
    }
    
    
    
    
    
    
    
}
 
 
public struct Device {
    public init() {}
    public func Message(_ Message : String ){
        Downloadingpictures.instance.showAlert(title: Message)
    }
    
    public func Messaged(){
        Downloadingpictures.instance.onClickDone()
    }
}
