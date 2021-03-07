import json

class RestAPI:
	def __init__(self, database=None):
		self.database = database

	def get(self, url, payload=None):
		if payload == None:
			return json.dumps(self.database)

		if url == '/users':
			return self._get_user(payload['users']['name'])

	def post(self, url, payload=None):
		return "{}"

	def _get_user(self, name):
		return json.dumps(filter(lambda x: x['name'] == name, self.database['users'])[0])
