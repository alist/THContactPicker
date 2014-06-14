//
//  THContactPickerTableViewCell.m
//  ContactPicker
//
//  Created by Mac on 3/27/14.
//  Copyright (c) 2014 Tristan Himmelman. All rights reserved.
//

#import "THContactPickerTableViewCell.h"
#import "Friend.h"

@implementation THContactPickerTableViewCell

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{
    [super setSelected:selected animated:animated];
}

-(id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
	
	UINib * nib = [self viewNib];
	if ((self = [[nib instantiateWithOwner:nil options:nil] objectAtIndex:0])){
		[self setup];
	}
	return self;
}

-(void)setup{
    self.contactImageView.layer.masksToBounds = YES;
    self.contactImageView.layer.cornerRadius = 20;
}

-(UINib*) viewNib{
	return [UINib nibWithNibName:@"THContactPickerTableViewCell" bundle:[NSBundle mainBundle]];
}

- (BOOL)shouldUpdateCellWithObject:(Friend*)contact{
    
    self.contactNameLabel.text = [contact displayName];
    if (contact.isLocalUser.boolValue){
        self.contactNameLabel.text = [NSString stringWithFormat:NSLocalizedString(@"%@ (YOU)", @"users own name on cell string format"),contact.displayName];
    }
    
    self.mobilePhoneNumberLabel.text = contact.formattedPhoneNumber;
    if(contact.userImage) {
        self.contactImageView.image = contact.userImage;
    }else{
        self.contactImageView.image = [UIImage imageNamed:@"icon-avatar-60x60"];
    }
    
    // Set the checked state for the contact selection checkbox
    UIImage *image;
    if (contact.isActive.boolValue){
        image = [UIImage imageNamed:@"icon-checkbox-selected-green-25x25"];
    } else {
        image = [UIImage imageNamed:@"icon-checkbox-unselected-25x25"];
    }
    self.checkboxImageView.image = image;
    
	return TRUE;
}


+ (CGFloat)heightForObject:(NSObject*)request atIndexPath:(NSIndexPath *)indexPath tableView:(UITableView *)tableView{
    const double cellHeight = 67;
    return cellHeight;
}


@end
