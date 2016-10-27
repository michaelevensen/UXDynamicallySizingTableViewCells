# UXDynamicallySizingTableViewCells
An example of dynamically sizing UITableViewCells with embedded content. 

Key is keeping track of all items vertically, eg. make sure that all top and bottom spaces for all elements are set, either through height or spacing. Together with this set:

`self.tableView.rowHeight = UITableViewAutomaticDimension` and `self.tableView.estimatedRowHeight = 140`

![image](https://cloud.githubusercontent.com/assets/55974/19768700/e0f5c43c-9c58-11e6-9d38-c238ac754d4f.png)
