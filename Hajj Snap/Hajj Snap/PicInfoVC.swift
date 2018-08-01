//
//  PicInfoVC.swift
//  Hajj Snap
//
//  Created by Majed Hariri on 8/1/18.
//  Copyright © 2018 Majed Hariri. All rights reserved.
//

import UIKit

class PicInfoVC: UIViewController {

    @IBOutlet weak var HolderView: UIView!
    @IBOutlet weak var PicTextView: UITextView!
    @IBOutlet weak var PicImageView: UIImageView!
    @IBOutlet weak var Lab_TitleInfo: UILabel!
    var Picked_Image : UIImage!
    var Image_Info : String!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        



Lab_TitleInfo.layer.masksToBounds = true
Lab_TitleInfo.layer.cornerRadius = 5.0
HolderView.layer.cornerRadius = 5.0
PicTextView.layer.cornerRadius = 5.0
HolderView.layer.borderWidth = 0.5
HolderView.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
HolderView.dropShadow()
PicImageView.image = Picked_Image
PicTextView.text = Image_Info
        
    }


    @IBAction func Close_Func(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
    }




}
