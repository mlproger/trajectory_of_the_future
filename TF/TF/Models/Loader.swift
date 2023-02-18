//
//  Loader.swift
//  TF
//
//  Created by Максим on 18/2/2023.
//

import Foundation

class Loader{
    var vm: ViewModel
    
    func load(){
        vm.f.bind({ (value) in
            if vm.f.value == true{
                DispatchQueue.main.async {
                    self.catchError()
                }
            }
        })
        vm.data.bind({ (val) in
            self.vm = val as! [Item]
            self.tableView.reloadData()
        })
    }
    
    init(vm: ViewModel) {
        self.vm = vm
    }
}
