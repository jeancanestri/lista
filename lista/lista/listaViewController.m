//
//  listaViewController.m
//  lista
//
//  Created by Hugo on 19/06/13.
//  Copyright (c) 2013 Jean. All rights reserved.
//


#import "listaViewController.h"

//@interface variasListasViewController ()

//@end

@implementation listaViewController

@synthesize arrayLista;



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Criando um NSMutableArray
    NSMutableArray *myArray = [[NSMutableArray alloc] init];
    
    // Populando com nomes fictícios o MutableArray
    for(int i=5; i<10; i++)
    {
        NSString *tempNome = [[NSString alloc] initWithFormat:@"Nome %d", i];
        NSString *tempSobreNome = [[NSString alloc] initWithFormat:@"Sobrenome %d", i];
        NSArray *tempArray = [[NSArray alloc] initWithObjects:tempNome, tempSobreNome, nil];
        
        [myArray addObject:tempArray];
    }
    
    self.arrayLista = myArray;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}


// Retorna o número de elementos de uma seção da tabela
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.arrayLista count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *myId = @"Exemplo";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myId];
    
    if (cell == nil)
    {
        // Exemplos de estilo para células de tabelas
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:myId];
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:myId];
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:myId];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:myId];
    }
    
    
    // Configure the cell...
    NSArray *myObject = [arrayLista objectAtIndex:[indexPath row]];
    
    // Define os textos primários e secundários da célula
    cell.textLabel.text = [myObject objectAtIndex:0];
    cell.detailTextLabel.text = [myObject objectAtIndex:1];
    
    // Adiciona um ícone para a célula
    //UIImage *myIcon = [UIImage imageNamed:@"iconeCubo.png"];
    //cell.imageView.image = myIcon;
    
    // Adiciona um ícone para o estado de HIGHLIGHTED da célula
    //UIImage *myIconHighlighted = [UIImage imageNamed:@"iconeCuboDestaque.png"];
    //cell.imageView.highlightedImage = myIconHighlighted;
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [arrayVariasListas removeObjectAtIndex:indexPath.row];
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
