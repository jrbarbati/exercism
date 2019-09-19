class Node:
	def __init__(self, value, next=None):
		self.val = value
		self.nxt = next

	def value(self):
		return self.val

	def next(self):
		return self.nxt


class LinkedList:
	def __init__(self, values=[]):
		self.root = None
		self.count = 0

		for value in values:
			self.push(value)

	def head(self):
		if self.is_empty():
			raise EmptyListException("Tried to get head of empty list")

		return self.root

	def push(self, value):
		self.count += 1

		if self.is_empty():
			self.root = Node(value)
			return

		new_node = Node(value, next=self.root)
		self.root = new_node

	def pop(self):
		if self.is_empty():
			raise EmptyListException("Tried to pop on empty list")

		self.count -= 1

		node = self.root
		self.root = node.next()

		return node.value()

	def reversed(self):
		if self.is_empty():
			return self

		prev = None
		curr = self.root
		next = self.root.next()

		while curr != None:
			curr.nxt = prev

			prev = curr
			curr = next
			next = curr.next() if curr is not None else None

		self.root = prev

		return self

	def is_empty(self):
		return len(self) == 0

	def __len__(self):
		return self.count

	def __iter__(self):
		self.currentNode = self.root
		return self

	def __next__(self):
		if self.currentNode is None:
			raise StopIteration

		node = self.currentNode
		self.currentNode = self.currentNode.next()
		return node.value()


class EmptyListException(Exception):
	pass
