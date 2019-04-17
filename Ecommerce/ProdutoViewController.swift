//
//  ProdutoViewController.swift
//  Ecommerce
//
//  Created by Aluno on 06/04/2019.
//  Copyright © 2019 ufg. All rights reserved.
//

import UIKit

class ProdutoViewController: UIViewController {

    @IBOutlet weak var vrNomeProduto: UILabel!
    @IBOutlet weak var vrPrecoProduto: UILabel!
    @IBOutlet weak var vrDescricaoProduto: UILabel!
    @IBOutlet weak var vrNomeContato: UILabel!
    @IBOutlet weak var vrTelContato: UILabel!
    @IBOutlet weak var vrImagem: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
