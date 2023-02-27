//
//  CurrencyPriceTableViewCell.swift
//  currency
//
//  Created by GA007295 on 25/2/2566 BE.
//

import UIKit

class CurrencyPriceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var firstCurrencyLabel: UILabel!
    @IBOutlet weak var secondCurrencyLabel: UILabel!
    @IBOutlet weak var thirdCurrencyLabel: UILabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
    
    struct Data {
        var firstCurrency: String
        var secondCurrency: String
        var thirdCurrency: String
        var dateTimeString: String
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViewCell()
    }
    
    func setupViewCell() {
    }
    
    func setupData(data: Data) {
        firstCurrencyLabel.text = data.firstCurrency
        secondCurrencyLabel.text = data.secondCurrency
        thirdCurrencyLabel.text = data.thirdCurrency
        dateTimeLabel.text = data.dateTimeString == "-" ? "-" : data.dateTimeString.formattedDate()
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
