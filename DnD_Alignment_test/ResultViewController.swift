//
//  ResultViewController.swift
//  DnD_Alignment_test
//
//  Created by Calvin Lee on 2023/5/22.
//

import UIKit


protocol ResultViewControllerProtocol {
    func dialogueDismissed()
}


class ResultViewController: UIViewController {
    var alignmentInfo: Alignment!
    var alignmentIndex = 0
    var delegate: ResultViewControllerProtocol?
    
    
    
    @IBOutlet weak var resultImageView: UIImageView!
    @IBOutlet weak var resultTypeLabel: UILabel!
    @IBOutlet weak var resultDescriptionLabel: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        //resultImageView.image = UIImage(named: "\(alignmentIndex) \(alignmentInfo.type)")
        resultTypeLabel.text = alignmentInfo.type
        resultDescriptionLabel.text = alignmentInfo.description
        
    }
    
    
    
    @IBAction func tryAgainButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        delegate?.dialogueDismissed()
    }
    
    
    
}
    
    

