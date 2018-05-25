//
//  ViewControllerFinal.swift
//  Delegate
//
//  Created by tham gia huy on 5/10/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

protocol DetailViewControllerDelegate: class {
    func finishPassing(string: String)
}
class DetailViewController: UIViewController {
    
    weak var delegate: DetailViewControllerDelegate?
    
    @IBAction func btnPassDataPressed(_ sender: Any) {
        delegate?.finishPassing(string: "Data from Detail")
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
