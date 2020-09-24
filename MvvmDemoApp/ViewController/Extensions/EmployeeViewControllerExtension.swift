//
//  EmployeeViewControllerExtension.swift
//  MVVMArchitecture
//
//  Created by niraj paul on 01/02/20.
//  Copyright © 2020 administrator. All rights reserved.
//
import Foundation
import UIKit

extension EmployeeViewController : UITableViewDataSource
{
    // MARK: - Table view datasource method
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "employeeCell", for: indexPath)
        return cell
    }
}
