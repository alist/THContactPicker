//
//  THContactPhonePickerTableViewCell.h
//  ContactPicker
//
//  Created by Alexander Hoekje List on 6/13/14.
//  Copyright (c) 2014 Tristan Himmelman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NICellCatalog.h"

@interface THContactPhonePickerTableViewCell : UITableViewCell <NICell>
@property (nonatomic, weak) IBOutlet UIImageView *contactImageView;
@property (nonatomic, weak) IBOutlet UILabel *contactNameLabel;
@property (nonatomic, weak) IBOutlet UILabel *mobilePhoneNumberLabel;

@end
