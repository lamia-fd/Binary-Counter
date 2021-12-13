//
//  customCell.swift
//  Binary Counter
//
//  Created by لمياء فالح الدوسري on 09/05/1443 AH.
//

import UIKit

protocol delegateCell:class{
    func valueCange(Value:Int)
}

class customCell: UITableViewCell {

    weak var delegate:delegateCell?
    @IBOutlet weak var lable: UILabel!
    
    @IBAction func addAndSub(_ sender: UIButton) {
        var value=Int(lable.text!)!
        if sender.restorationIdentifier == "-"{
            value = -value
        }
        delegate?.valueCange(Value: value)
    }
   
}
