//
//  THContactPickerTableViewCell.h
//  ContactPicker
//
//  Created by Mac on 3/27/14.
//  Copyright (c) 2014 Tristan Himmelman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NICellCatalog.h"

@interface THContactPickerTableViewCell : UITableViewCell <NICell>

@property (nonatomic, weak) IBOutlet UIImageView *contactImageView;
@property (nonatomic, weak) IBOutlet UIImageView *checkboxImageView;
@property (nonatomic, weak) IBOutlet UILabel *contactNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *mobilePhoneNumberLabel;

@end
