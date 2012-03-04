//
//  TableThumbView.m
//  photoframe
//
//  Created by jinwoo choi on 12. 3. 1..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "TableThumbView.h"

@implementation TableThumbView


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"num");
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *CellIdentifier = @"TestCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if( cell == nil ){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"test %d", indexPath.row];
    
    switch( indexPath.row )
    {
        case 0:
            cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
            break;
        case 1:
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            break;
        case 2:
            break;
        case 3:
            break;
        default:
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
            break;
    }
    
    return cell;
}


@end
