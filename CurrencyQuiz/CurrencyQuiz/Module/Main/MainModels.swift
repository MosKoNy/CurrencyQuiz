//
//  MainModels.swift
//  CurrencyQuiz
//
//  Created by GA007295 on 26/2/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Main
{
  // MARK: Use cases
  
  enum CurrentPrice
  {
    struct Request
    {
    }
    struct Response
    {
        var currencyPrice: CurrentPriceModel
    }
    struct ViewModel
    {
        var currencyPrice: CurrentPriceModel
    }
  }
}