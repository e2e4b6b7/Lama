#ifndef LAMA_RUNTIME_AVL_TREE_H
#define LAMA_RUNTIME_AVL_TREE_H
#include <stddef.h>
#include <malloc.h>

struct Node;

struct Node {
  int key;
  struct Node *left;
  struct Node *right;
  int height;
};

typedef struct Node Node;

int avl_get_height(Node *root);

Node *avl_create_node(int key);

int avl_balance_diff(Node *root);

Node* avl_rotate_right(Node *root);

Node* avl_rotate_left(Node *root);

Node *avl_insert(Node *root, int key);

void avl_free(Node *root);

Node *avl_search(Node *root, int key);

#endif  //LAMA_RUNTIME_AVL_TREE_H