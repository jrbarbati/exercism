class TreeNode:
    def __init__(self, data: str, left=None, right=None):
        self.data = data
        self.left = left
        self.right = right

    def __str__(self) -> str:
        fmt = 'TreeNode(data={}, left={}, right={})'
        return fmt.format(self.data, self.left, self.right)


class BinarySearchTree:
    def __init__(self, tree_data: list = []):
        self.head = TreeNode(tree_data[0]) if tree_data else None

        for data in tree_data[1:]:
            self.add(self.head, TreeNode(data))

    def data(self) -> TreeNode:
        return self.head

    def sorted_data(self) -> list:
        return self.inorder_traversal(self.head, [])

    def add(self, curr_node: TreeNode, new_node: TreeNode):
        if curr_node.data >= new_node.data and curr_node.left is None:
            curr_node.left = new_node
            return

        if curr_node.data < new_node.data and curr_node.right is None:
            curr_node.right = new_node
            return

        self.add(curr_node.left if curr_node.data > new_node.data else curr_node.right, new_node)

    def inorder_traversal(self, curr_node: TreeNode, arr: list):
        if curr_node is None:
            return arr

        arr = self.inorder_traversal(curr_node.left, arr)
        arr.append(curr_node.data)
        arr = self.inorder_traversal(curr_node.right, arr)

        return arr

