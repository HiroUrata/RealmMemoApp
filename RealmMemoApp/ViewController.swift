//
//  ViewController.swift
//  RealmMemoApp
//
//  Created by UrataHiroki on 2021/09/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addView: UIView!
    @IBOutlet weak var upTextField: UITextField!
    @IBOutlet weak var underTextField: UITextField!
    @IBOutlet weak var addButtton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradient = CAGradientLayer()
        gradient.frame = CGRect(x: view.frame.minX, y: view.frame.minY, width: view.frame.size.width, height: view.frame.size.height)
        gradient.colors = [UIColor.systemIndigo.cgColor,UIColor.white.cgColor]
        gradient.startPoint = CGPoint(x: 0.5, y: 0.5)
        gradient.endPoint = CGPoint(x: 0.5, y: 0)
        view.layer.insertSublayer(gradient, at: 0)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        DesignGroup.targetDesign(targetView: addView, targetButton: addButtton, targetTableView: tableView)
    }

}

