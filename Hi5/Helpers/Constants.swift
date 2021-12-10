//
//  Constants.swift
//  Hi5
//
//  Created by Rudr Bansal on 07/12/21.
//

import Foundation

class Constants {
    
    enum Storyboards: String {
        case main = "Main"
        case offers = "Offers"
        case otp = "OTP"
        case signIn = "SignIn"
        case redeem = "Redeem"
    }
    
    enum ViewControllers: String {
        case dashboardViewController = "DashboardViewController"
        case offersViewController = "OffersViewController"
        case rewardsViewController = "RewardsViewController"
        case discoverViewController = "DiscoverViewController"
        case walletViewController = "WalletViewController"
        case offerDetailsViewController = "OfferDetailsViewController"
        case onboardingLastViewController = "OnboardingLastViewController"
        case homeTabViewController = "HomeTabViewController"
        case signInViewController = "SignInViewController"
        case signUpViewController = "SignUpViewController"
        case otpViewController = "OTPViewController"
        case notificationsViewController = "NotificationsViewController"
        case redeemHistoryViewController = "RedeemHistoryViewController"
        case redemptionViewController = "RedemptionViewController"
    }

    enum TableviewCellIdentifiers: String {
        case offerTableViewCell = "OfferTableViewCell"
        case notificationTableViewCell = "NotificationTableViewCell"
    }
}
