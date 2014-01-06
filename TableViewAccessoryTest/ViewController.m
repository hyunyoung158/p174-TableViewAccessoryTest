//
//  ViewController.m
//  TableViewAccessoryTest
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"
#define CELL_ID @"CELL_ID"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController {
    NSArray *data;
}


//셀 선택시 로그로 확인
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"select row : %d", (int)indexPath.row);
}

//악세사리 버튼 클릭시
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Accessory button tapped : %d", (int)indexPath.row);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID forIndexPath:indexPath];
    
    if (0 == indexPath.row) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else if (1 == indexPath.row) {
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    }else if (2 == indexPath.row) {
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    cell.textLabel.text = data[indexPath.row];
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    data = @[@"a", @"b", @"c", @"d", @"f", @"g",@"h",@"i",@"j",@"k"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
