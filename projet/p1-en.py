students = {
    'A': ['dsi', 'rss', 'cnm'],
    'B': ['rss', 'dsi', 'cnm'],
    'C': ['cnm', 'dsi', 'rss'],
    'D': ['dsi', 'rss', 'cnm'],
    'E': ['rss', 'dsi', 'cnm'],
    'F': ['cnm', 'dsi', 'rss'],
}
choices = {
    'dsi': ['B', 'E', 'C', 'D', 'A', 'F'],
    'cnm': ['A', 'D', 'B', 'C', 'E', 'F'],
    'rss': ['C', 'F', 'A', 'B', 'E', 'D'],
}
places = {
    'cnm': 1,
    'rss': 2,
    'dsi': 2,
}

left_places = places
results = {}

students_with_out_choices = ['A', 'B', 'C', 'D', 'E', 'F']
choices_left = students


def list_of_student_with_out_a_choice_left_to_prpose(students_with_out_choices, choices_left):
    results = []
    for e in students_with_out_choices:
        if len(choices_left[e]) > 0:
            results.append(e)

    return results


def last_choice_in_ranking(s, choices_left, results, choices):
    students_with_out_choices = []
    ranging_list = choices[choices_left[e][0]]
    ranging_student_list = []
    for key in results:
        if results[key] == choices_left[e][0]:
            students_with_out_choices.append(key)
    for i in range(len(ranging_list)):
        if ranging_list[i] in students_with_out_choices:
            ranging_student_list.append(ranging_list[i])
    if ranging_list.index(e) < ranging_list.index(ranging_student_list[-1]):
        return ranging_student_list[-1]
    return s

list_of_oriented_student = students_with_out_choices
while len(list_of_oriented_student) > 0:
    e = list_of_oriented_student[0]
    first_choice = choices_left[e][0]
    if places[first_choice] > 0:
        results[e] = first_choice
        left_places[first_choice] -= 1
        students_with_out_choices.remove(e)
    elif len(choices_left[e]) > 0:
        student_less_rank_than_e = last_choice_in_ranking(e, choices_left, results, choices)
        if student_less_rank_than_e != e:
            del results[student_less_rank_than_e]
            results[e] = first_choice
            students_with_out_choices.remove(e)
            students_with_out_choices.append(student_less_rank_than_e)
    choices_left[e].remove(choices_left[e][0])
    list_of_oriented_student = list_of_student_with_out_a_choice_left_to_prpose(students_with_out_choices, choices_left)
print("results: ", results)

liste_of_student_non_oriented=[]
for key in students:
    if key not in results:
        liste_of_student_non_oriented.append(key)

print(f"students non-oriented : {liste_of_student_non_oriented}")