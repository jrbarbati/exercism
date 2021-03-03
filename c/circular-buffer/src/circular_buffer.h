#ifndef CIRCULAR_BUFFER_H
#define CIRCULAR_BUFFER_H

#include <errno.h>

extern int errno;

typedef int buffer_value_t;

typedef struct circular_buffer
{
	buffer_value_t *values;
	int capacity;
	int head;
	int size;
} circular_buffer_t;

circular_buffer_t *new_circular_buffer(int capacity);
int16_t read(circular_buffer_t *buffer, buffer_value_t *read_value);
int16_t write(circular_buffer_t *buffer, buffer_value_t value);
int16_t overwrite(circular_buffer_t *buffer, buffer_value_t value);
void clear_buffer(circular_buffer_t *buffer);
void delete_buffer(circular_buffer_t *buffer);

#endif
