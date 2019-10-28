def handle_error_by_throwing_exception():
	raise Exception("Caught Exception while running")


def handle_error_by_returning_none(input_data: str) -> int:
	try:
		return int(input_data)
	except Exception as error:
		return None


def handle_error_by_returning_tuple(input_data: str) -> (bool, int):
	try: 
		return True, int(input_data)
	except Exception as error:
		return False, 0


def filelike_objects_are_closed_on_exception(filelike_object):
	try: 
		filelike_object.do_something()
	finally:
		filelike_object.close()
