#include <stdlib.h>
#include "circular_buffer.h"

circular_buffer_t *new_circular_buffer(int capacity)
{
	circular_buffer_t *buffer = calloc(1, sizeof(circular_buffer_t));
	buffer_value_t *values = calloc(capacity, sizeof(buffer_value_t));

	buffer->values = values;
	buffer->capacity = capacity;
	buffer->head = 0;
	buffer->size = 0;

	return buffer;
}

int16_t read(circular_buffer_t *buffer, buffer_value_t *read_value)
{
	if (buffer->size == 0)
	{
		errno = ENODATA;
		return EXIT_FAILURE;
	}

	*read_value = buffer->values[buffer->head];

	buffer->head = (buffer->head + 1) % buffer->capacity;
	buffer->size--;

	return EXIT_SUCCESS;
}

int16_t write(circular_buffer_t *buffer, buffer_value_t value)
{
	if (buffer->size == buffer->capacity)
	{
		errno = ENOBUFS;
		return EXIT_FAILURE;
	}

	int index = (buffer->head + buffer->size++) % buffer->capacity;

	buffer->values[index] = value;

	return EXIT_SUCCESS;
}

int16_t overwrite(circular_buffer_t *buffer, buffer_value_t value)
{
	if (buffer->size < buffer->capacity)
		return write(buffer, value);

	buffer->values[buffer->head] = value;

	buffer->head = (buffer->head + 1) % buffer->capacity;

	return EXIT_SUCCESS;
}

void clear_buffer(circular_buffer_t *buffer)
{
	buffer->head = 0;
	buffer->size = 0;
}

void delete_buffer(circular_buffer_t *buffer)
{
	free(buffer->values);
	free(buffer);
}
