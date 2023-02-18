//
//  ViewController.swift
//  TF
//
//  Created by Максим on 18/2/2023.
//

import UIKit

class ViewController: UIViewController{
    
    var viewModel = ViewModel()
    
    func catchError(){
        navigationController?.performSegue(withIdentifier: "ErrorView", sender: self)
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    private var data: [Item] = []
    private var icon: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Проекты VK"
        tableView.backgroundColor = #colorLiteral(red: 0.3625308871, green: 0.8594543934, blue: 0.5849038363, alpha: 1)
        bindViewModel()
    }
    
    
    func bindViewModel(){
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        viewModel.f.bind({ (value) in
            if self.viewModel.f.value == true{
                DispatchQueue.main.async {
                    self.catchError()
                }
            }
        })
        viewModel.data.bind({ (val) in
            self.data = val as! [Item]
            self.tableView.reloadData()
        })
    }
    
    
}
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "vkCell") as! CustomCel
        let newText = data[indexPath.row].name
        let newImg = data[indexPath.row].icon_url
        cell.customLbl.text = newText
        newImg.loadImg{img in
            DispatchQueue.main.async {
                cell.customImg.image = img
                self.icon.append(img)
            }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "DVC") as! DescriptionsViewController
        controller.name = data[indexPath.row].name
        controller.title = data[indexPath.row].name
        controller.img = self.icon[indexPath.row]
        controller.descriptiontxt = data[indexPath.row].description
        controller.btnText = data[indexPath.row].service_url
        self.navigationController!.pushViewController(controller, animated: true)
    }
    
}



