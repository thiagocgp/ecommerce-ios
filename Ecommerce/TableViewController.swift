//
//  TableTableViewController.swift
//  Ecommerce
//
//  Created by Thiago on 10/04/19.
//  Copyright © 2019 ufg. All rights reserved.
//

import UIKit
import FirebaseDatabase

class TableViewController: UITableViewController {

    var ref:DatabaseReference!
    var myList:[Produto] = []
    var handle:DatabaseHandle?
    var nome = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        ref.child("Produtos").observe( .value) { snapshot in
            self.myList = [Produto]()
            for produtoSnapshot in snapshot.children {
                let produto = Produto(snapshot: produtoSnapshot as! DataSnapshot)
                self.myList.append(produto)
                print("produto nome:")
                print(produto.produtoNome)
                self.tableView.reloadData()
                self.ref?.keepSynced(true)
            }
        }
        
//        handle = ref?.child("Produtos").observe(.childAdded, with: { (snapshot) in
//            if let item = snapshot.value as? String {
//                self.myList.append(item)
//                self.tableView.reloadData()
//                self.ref?.keepSynced(true)
//            }
//        })
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("número de produtos")
        print(myList.count)
        return myList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let produto = myList[indexPath.row]
        print(produto.contatoNome + " contato")
        cell.vrNomeProduto?.text = produto.produtoNome
        cell.vrPrecoProduto?.text = produto.produtoPreco
        cell.vrImagemProduto?.image = produto.produtoImagem

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
