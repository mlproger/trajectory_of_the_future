//
//  CustomCel.swift
//  TF
//
//  Created by Максим on 18/2/2023.
//

import UIKit

class CustomCel: UITableViewCell {
    
    
    @IBOutlet weak var customView: UIView!
    
    @IBOutlet weak var customImg: UIImageView!
    
    
    @IBOutlet weak var customLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
