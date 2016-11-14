//
//  ViewController.swift
//  LiipKit
//
//

import UIKit
import LiipKit

class ViewController: UIViewController {
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Alert", message: "Alert message", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        alert.show(animated: true, completion: nil)
    }
}
