//
//  PaletteViewController.swift
//  Sample
//
//  Created by u0939404 on 11/20/18.
//  Copyright © 2018 u0939404. All rights reserved.
//

import UIKit

class PaletteViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    override func loadView() {
        let colorTableView: UITableView = UITableView()
        view = colorTableView
    }
    
    override func viewDidLoad() {
        title = "Palette of Colors"
        contentView.dataSource = self
        contentView.delegate = self
    }
    
    private let _numRows: Int = 100
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _numRows
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell()
        cell.textLabel?.text = "Hello from cell \(indexPath.row)"
        cell.backgroundColor = colorForIndex(indexPath.row)[1]
        
        return cell
    }
    
    private func colorForIndex(_ index: Int) -> [UIColor] {
        return [UIColor(hue: CGFloat(Double(index-1) / Double(_numRows)), saturation: 1.0, brightness: 1.0, alpha: 1.0),
                UIColor(hue: CGFloat(Double(index) / Double(_numRows)), saturation: 1.0, brightness: 1.0, alpha: 1.0),
                UIColor(hue: CGFloat(Double(index+1) / Double(_numRows)), saturation: 1.0, brightness: 1.0, alpha: 1.0)]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color: [UIColor] = colorForIndex(indexPath.row)
        
        let colorDetailViewController: ColorViewController = ColorViewController()
        colorDetailViewController.color = [color[0], color[1], color[2]]
        
        navigationController?.pushViewController(colorDetailViewController, animated: true)
    }
    
    private var contentView: UITableView! { return view as! UITableView }
}
