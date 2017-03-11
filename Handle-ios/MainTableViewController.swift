//
//  MainViewController.swift
//  Handle-ios
//
//  Created by  Hirayama.Kotaro on 2017/03/10.
//  Copyright © 2017 com.cloud.handle. All rights reserved.
//

import UIKit
import SafariServices


class MainTableViewController: UITableViewController, SFSafariViewControllerDelegate {
  
  var tasks:[String] = ["task 1", "task 2", "task 3"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: UITableViewDataSource
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tasks.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let task = tasks[indexPath.row]
    let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") as! TaskTableViewCell
    cell.taskLabel.text = task
    return cell
  }
  
  // MARK: UITableViewDelegate
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    //    let webViewController = SFSafariViewController(url: URL(string: "https://google.com")!)
    //    webViewController.delegate = self
    //    present(webViewController, animated: true, completion: nil)
    //        let task = tasks[indexPath.row]
  }
  
  // MARK: SFSafariViewControllerDelegate 
  
  func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
    controller.dismiss(animated: true, completion: nil)
  }
}
