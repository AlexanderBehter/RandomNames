//
//  DetailViewController.swift
//  RandomNames
//
//  Created by Александр Бехтер on 09.06.2020.
//  Copyright © 2020 Alexander Bekhter. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!

    @IBOutlet var viewMail: UIView!
    @IBOutlet var viewPhone: UIView!
    @IBOutlet var personView: UIView!
    
    @IBOutlet var imageMail: UIImageView!
    @IBOutlet var imagePhone: UIImageView!
    @IBOutlet var personImage: UIImageView!
    
    
    var detailPersons: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewMail.customView()
        viewPhone.customView()
        personView.customView()
        
        personImage.customView()
        imageMail.customView()
        imagePhone.customView()
        
        emailLabel.text = detailPersons.eMails
        phoneNumberLabel.text = detailPersons.phoneNumbers
    }
}
extension UIView {
    func customView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
    }
}

