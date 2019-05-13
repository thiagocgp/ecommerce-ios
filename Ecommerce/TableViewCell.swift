//
//  TableViewCell.swift
//  Ecommerce
//
//  Created by Aluno on 06/04/2019.
//  Copyright © 2019 ufg. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var vrNomeProduto: UILabel!
    @IBOutlet weak var vrImagemProduto: UIImageView!
    @IBOutlet weak var vrPrecoProduto: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
