//
//  AgreementController.swift
//  NewsAppDemo
//
//  Created by Yoonha Kim on 4/22/21.
//

import MessageUI
import UIKit

class ContactFunctionHandler: NSObject {
    
    private weak var controller: UIViewController?
    private weak var view: UIView?

    init(presenting controller: UIViewController) {
        self.controller = controller
    }
    
    init(presenting view: UIView) {
        self.view = view
    }
    func sendMailWith(recipient: [String], messageBody: String, subject: String) -> MFMailComposeViewController {
        guard MFMailComposeViewController.canSendMail() else {
            return MFMailComposeViewController()
    }
        let controller = MFMailComposeViewController()
        controller.mailComposeDelegate = self
        controller.setToRecipients(recipient)
        controller.setMessageBody(messageBody, isHTML: false)
        controller.setSubject(subject)
        return controller
    }
    
    func message(recipients: String) -> MFMessageComposeViewController {
        guard MFMessageComposeViewController.canSendText() else {
            return MFMessageComposeViewController()
        }
        let controller = MFMessageComposeViewController()
        controller.messageComposeDelegate = self
        controller.recipients = [recipients]
        controller.body = "Message"
        return controller
    }
    
    func call(number: String) {
       let number = number
       guard let url = URL(string: "TEL://\(number)") else { return }
       if UIApplication.shared.canOpenURL(url) {
           UIApplication.shared.open(url, options: [:], completionHandler: nil)
       }
   }
}
extension ContactFunctionHandler: MFMailComposeViewControllerDelegate, UINavigationControllerDelegate, MFMessageComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        controller.dismiss(animated: true, completion: nil)
    }
}
