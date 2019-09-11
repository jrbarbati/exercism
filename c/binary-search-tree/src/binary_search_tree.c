#include "binary_search_tree.h"
#include <stdlib.h>
#include <stdio.h>

void add_to_tree(node_t *current_node, int data);
node_t *initialize_node(int data);
void inorder_traversal(node_t *node, int *array, int *index);

node_t *build_tree(int *tree_data, size_t tree_data_len)
{
	if (tree_data_len == 0)
		return NULL;

	node_t *head = malloc(sizeof(node_t));
	head->data = tree_data[0];
	head->right = NULL;
	head->left = NULL;

	for (size_t i = 1; i < tree_data_len; i++) {
		add_to_tree(head, tree_data[i]);
	}

	return head;
}

void add_to_tree(node_t *current_node, int data)
{
	if (current_node->data >= data && current_node->left == NULL)
	{
		current_node->left = initialize_node(data);
		return;
	}

	if (current_node->data < data && current_node->right == NULL)
	{
		current_node->right = initialize_node(data);
		return;
	}

	add_to_tree(current_node->data >= data ? current_node->left : current_node->right, data);
}

node_t *initialize_node(int data) 
{
	node_t *node = malloc(sizeof(node_t));

	node->data = data;
	node->left = NULL;
	node->right = NULL;

	return node;
}

/*
 * Postorder traversal to free all nodes
 */
void free_tree(node_t *tree)
{
	if (tree == NULL)
		return;

	free_tree(tree->left);
	free_tree(tree->right);
	free(tree);
}

int *sorted_data(node_t *tree)
{
	int *sorted, *index;
	sorted = calloc(100, sizeof(int));
	index = calloc(1, sizeof(int));

	inorder_traversal(tree, sorted, index);

	return sorted;
}

void inorder_traversal(node_t *node, int *array, int *index) 
{
	if (node == NULL)
		return;

	inorder_traversal(node->left, array, index);
	array[(*index)++] = node->data;
	inorder_traversal(node->right, array, index);
}
