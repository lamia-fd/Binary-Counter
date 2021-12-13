//
//  ViewController.swift
//  Binary Counter
//
//  Created by لمياء فالح الدوسري on 09/05/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
var total=0
    @IBOutlet weak var totalLable: UILabel!
  
    
    var numbers:[Int]=[]
    var num=1
  //  @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       // let nib = UINib(nibName:"TableViewCell",bundle:nil)
      //  table.register(nib, forCellReuseIdentifier: "TableViewCell")
        table.delegate=self
        table.dataSource=self
        table.backgroundColor=UIColor.black
        totalLable.text="Total:"
        for _ in 0...15{
            numbers.append(num)
            print(num)
            num = num*10
            
        }
        // Do any additional setup after loading the view.
    }


   
}
extension ViewController:UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let call = tableView.dequeueReusableCell(withIdentifier: "call", for: indexPath) as! customCell
        
      //  call?.lable
            // call.textLabel?.text="ho"
       // call.backgroundColor = color[indexPath.row]
        call.delegate=self
        call.lable.text="\(numbers[indexPath.row])"
       // totalLable.text=String(call.total)
        
        return call
    }
    

    
}
extension ViewController:delegateCell{
    func valueCange(Value: Int) {
        self.total += Value
        totalLable.text="Total:\(total)"
    }
}
