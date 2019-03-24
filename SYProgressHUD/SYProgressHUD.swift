//
//  MBProgressHUD.swift
//  SYProgressHUD.Swift
//
//  Created by Saucheong Ye on 3/24/19.
//  Copyright © 2019 sauchye. All rights reserved.
//



import MBProgressHUD

//enum SYProgressHUDStatus {
//    case info
//    case success
//    case error
//}

struct CommonHUDConfig {
    let delyedTime   = 2.0
    let hudFontSize  = 14
}

let kKeyWindow  = UIApplication.shared.keyWindow

class SYProgressHUD: MBProgressHUD {
    // MARK: showHUDAddView
    private class func showHUDAddView(view: UIView, mode:MBProgressHUDMode, text: String) -> SYProgressHUD {
        let hud = SYProgressHUD.showAdded(to: view, animated: true)
        hud.label.font = UIFont.systemFont(ofSize: CGFloat(CommonHUDConfig.init().hudFontSize))
        hud.mode       = mode
        hud.label.text    = text
        hud.animationType = .zoom
        return hud
    }
    
    // MARK: showStatusView
    private class func showStatusView(icon: String, text: String) {
        let hud = self.showHUDAddView(view: (kKeyWindow ?? nil)!, mode: .customView, text: text)
        let image = UIImage.init(named: icon)
        if image != nil {
            hud.customView = UIImageView.init(image: image)
        }
        hud.hide(animated: true, afterDelay: CommonHUDConfig.init().delyedTime)
    }

    // MARK: showLoadingAddView
    class func showLoadingAddView(view: UIView) -> SYProgressHUD{
        let hud = self.showHUDAddView(view:view, mode:.indeterminate, text: "")
        return hud
    }
    
    // MARK: showTextAddWindow
    class func showTextAddWindow(text: String) {
        let hud = self.showHUDAddView(view: (kKeyWindow ?? nil)!, mode: .text, text: text)
        hud.hide(animated: true, afterDelay: CommonHUDConfig.init().delyedTime)
    }
    
    // MARK: showCustomView
    class func showCustomView(icon: String, text: String) {
        self.showStatusView(icon: icon, text: text)
    }
    
    // MARK: showInfoHUD
    class func showInfoHUD(text: String) {
        self.showStatusView(icon: "syhud_info", text: text)
    }
    
    // MARK: showSuccessHUD
    class func showSuccessHUD(text: String) {
        self.showStatusView(icon: "syhud_success", text: text)
    }

    // MARK: showSuccessHUD
    class func showErrorHUD(text: String) {
        self.showStatusView(icon: "syhud_error", text: text)
    }
}
