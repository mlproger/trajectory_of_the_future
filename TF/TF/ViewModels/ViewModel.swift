//
//  ViewModel.swift
//  TF
//
//  Created by Максим on 18/2/2023.
//

import Foundation

class ViewModel{
    var data = Dynamic([])
    var icons = Dynamic([])
    var f = Dynamic(false)
    func getData(){
        JsonApi.shared.setUpJSON{ val, err in
            if err != nil{
                self.f.value = true
            }
            DispatchQueue.main.async {
                self.data.value = val
            }
        }
    }
    
    init(){
        self.getData()
    }
}
