#include<stdio.h>
#include<stdlib.h>

struct node
{
    int data;
    struct node *next;
};

struct node *head=NULL;
struct node *tail=NULL;
struct node *current=NULL;

void printList(){
    struct node *ptr = head;
    printf("[head]=>");
    while (ptr!=NULL)
    {
        printf("%d =>", ptr->data);
        ptr=ptr->next;
    }
    printf("[null]\n");
}

void insert(int data){
    struct node *link=(struct node*) malloc(sizeof(struct node));
    link->data=data;
    link->next=head;
    head=link;
}

int main(){
    insert(1);
    insert(2);
    insert(3);
    insert(4);
    insert(5);
    printList();
    return 0;
}

