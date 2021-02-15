#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "grade_school.h"

void clear_grade_roster();
void clear(roster_t *roster);
void sort(roster_t *roster);
int compare(student_t a, student_t b);

static roster_t roster = { 0 };
static roster_t grade_roster = { 0 };

int add_student(char *name, int grade)
{
	roster.students[roster.count].name = name;
	roster.students[roster.count++].grade = grade;

	return 1;
}

roster_t get_grade(int desired_grade)
{
	clear_grade_roster();

	for (size_t i = 0; i < roster.count; i++)
		if (roster.students[i].grade == desired_grade)
			grade_roster.students[grade_roster.count++] = roster.students[i];

	sort(&grade_roster);
	return grade_roster;
}

roster_t get_roster()
{
	sort(&roster);
	return roster;
}

void clear_roster()
{
	clear(&roster);
}

void clear_grade_roster()
{
	clear(&grade_roster);
}

void clear(roster_t *roster)
{	
	for (size_t i = 0; i < roster->count; i++)
	{
		roster->students[i].name = NULL;
		roster->students[i].grade = 0;
	}

	roster->count = 0;
}

/*
 Bubble Sort
 */
void sort(roster_t *roster) 
{
	if (roster->count == 0) return;

	for (size_t i = 0; i < roster->count - 1; i++)
		for (size_t j = i + 1; j < roster->count; j++)
			if (compare(roster->students[i], roster->students[j]) > 0)
			{
				student_t temp = roster->students[i];
				roster->students[i] = roster->students[j];
				roster->students[j] = temp;
			}
}

/*
 Returns 1 if a > b, -1 if a < b and 0 if a == b
 */
int compare(student_t a, student_t b)
{
	if (a.grade > b.grade) return 1;
	if (a.grade < b.grade) return -1;

	return strcmp(a.name, b.name);
}
