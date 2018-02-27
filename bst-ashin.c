#include<stdio.h>
typedef struct bst{

int data;
struct bst *left, *right;
}node;



node *get_node(){

node *temp;
temp=(node*)malloc(sizeof(node));
temp->left=NULL;
temp->right=NULL;
return temp;
}

void insert(node *root, node *new){

if(new->data<root->data){

	if(root->left==NULL)
		root->left=new;
	else
		insert(root->left, new);

}
if(new->data>root->data){

	if(root->right==NULL)
		root->right=new;
	else
		insert(root->right, new);
}


}



node *search(node *root, int key, node **parent){

node *temp;
temp=root;
while(temp!=NULL){

	if(temp->data == key){
		if(temp==root)
			*parent=root;

		//printf("\nThe element is at %d", temp->data);
		return temp;
	}

	*parent=temp;
	if(temp->data>key)
		temp=temp->left;
	else
		temp=temp->right;
}
return NULL;
}




void del(node *root, int key){


node *temp, *parent, *temp_succ;
temp=search(root,key,&parent);
if(temp->left!=NULL && temp->right !=NULL){

parent=temp;
temp_succ=temp->right;
if(temp_succ->left!=NULL && temp_succ->right!=NULL){
while(temp_succ->left!=NULL){


parent=temp_succ;
temp_succ=temp_succ->left;


}

temp->data=temp_succ->data;
parent->left=NULL;
}
else
{

temp_succ=temp->left;
temp->data=temp_succ->data;
parent->left=NULL;
}
return;
}


if(temp->left!=NULL && temp->right==NULL){


if(parent->left==temp)
	parent->left=temp->left;
else
	parent->right=temp->left;
temp=NULL;
free(temp);
return;

}

if(temp->left==NULL && temp->right!=NULL){


if(parent->left==temp)
	parent->left=temp->right;
else
	parent->right=temp->right;
temp=NULL;
free(temp);
return;

}

if(temp->left==NULL && temp->right==NULL){

if(parent->left==temp)
	parent->left=NULL;
else
	parent->right=NULL;
return;


}


}


void inorder(node *temp){

if(temp!=NULL){
inorder(temp->left);
printf("%d", temp->data);
inorder(temp->right);

}
}
void postorder(node *temp){

if(temp!=NULL){
postorder(temp->left);

postorder(temp->right);
printf("%d", temp->data);

}
}
void preorder(node *temp){

if(temp!=NULL){
printf("%d", temp->data);
preorder(temp->left);

preorder(temp->right);

}

}


void main(){

int ch;

int key;
node *new, *root, *temp, *parent;
node *get_node();
root=NULL;
do{


printf("\n1.Create\n2.Search\n3.Delete\n4.Display");
printf("\nEnter Choice: ");
scanf("%d", &ch);
switch(ch){

case 1:{




new=get_node();
printf("Element: ");
scanf("%d", &new->data);

if(root==NULL)
	root=new;
else
	insert(root, new);


break;

}
case 2:{
printf("\nEnter element to search: ");
scanf("%d", &key);
temp=search(root, key, &parent);

printf("\nParent of node %d is %d ", temp->data, parent->data);

break;

}
case 3:{

printf("\nEnter element to delete: ");
scanf("%d", &key);
del(root, key);
break;

}

case 4:{

if(root==NULL)
	printf("\nTree Is Empty!");
else{

printf("\nThe Tree is:\n");
printf("inorder\n");
inorder(root);
printf("postorder\n");
postorder(root);
printf("preorder\n");
preorder(root);

}
break;
}
}

}while(ch!=5);

}


