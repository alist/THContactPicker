//
//  THContactPhonePickerTableViewCell.m
//  ContactPicker
//
//  Created by Alexander Hoekje List on 6/13/14.
//  Copyright (c) 2014 Tristan Himmelman. All rights reserved.
//

#import "THContactPhonePickerTableViewCell.h"
#import "THContact.h"

@implementation THContactPhonePickerTableViewCell

-(id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
	
	UINib * nib = [self viewNib];
	if ((self = [[nib instantiateWithOwner:nil options:nil] objectAtIndex:0])){
		[self setup];
	}
	return self;
}

-(UINib*) viewNib{
	return [UINib nibWithNibName:@"THContactPhonePickerTableViewCell" bundle:[NSBundle mainBundle]];
}

-(void)setup{
}


- (BOOL)shouldUpdateCellWithObject:(THContact*)contact{
    
    self.contactNameLabel.text = [contact fullName];
    
    self.mobilePhoneNumberLabel.text = contact.phone;
    if(contact.image) {
        self.contactImageView.image = contact.image;
    }else{
        self.contactImageView.image = [UIImage imageNamed:@"icon-avatar-60x60"];
    }
    
	return TRUE;
}


+ (CGFloat)heightForObject:(NSObject*)request atIndexPath:(NSIndexPath *)indexPath tableView:(UITableView *)tableView{
    const double cellHeight = 67;
    return cellHeight;
}


@end
