//
//  DescriptionsViewController.swift
//  TF
//
//  Created by Максим on 18/2/2023.
//

import UIKit

class DescriptionsViewController: UIViewController {
    
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var btnHref: UIButton!
    var img: UIImage?
    var name: String?
    var descriptiontxt: String?
    var btnText: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if img != nil{
            imgView.image = img
        }
        if name != nil {
            nameLbl.text = name
        }
        if descriptiontxt != nil {
            descriptionLbl.text = descriptiontxt
        }
        if btnText != nil{
            btnHref.setTitle(btnText, for: .normal)
        }
    }
    
    

    
}
