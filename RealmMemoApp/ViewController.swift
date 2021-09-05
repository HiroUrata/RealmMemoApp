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
        
        tableView.delegate = self
        tableView.dataSource = self
        
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

    @IBAction func add(_ sender: Any) {
        
        RealmCRUDGroup.createRealm(createDataOne: upTextField.text!, createDataTwo: underTextField.text!)
        
        if RealmCRUDGroup.resultRealmArray.count >= 0{

            RealmCRUDGroup.readAllRealm()
            tableView.reloadData()
        }
        
    }
}



extension ViewController:UITableViewDelegate{
    
    
}

extension ViewController:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return tableView.frame.height / 7
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        RealmCRUDGroup.resultRealmArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let cellLeftLabel = cell.contentView.viewWithTag(1) as! UILabel
        let cellRightLabel = cell.contentView.viewWithTag(2) as! UILabel
        
        cellLeftLabel.text = RealmCRUDGroup.resultRealmArray[indexPath.row]["OneData"]
        cellRightLabel.text = RealmCRUDGroup.resultRealmArray[indexPath.row]["TwoData"]
        
        return cell
    }
    
    
    
}
