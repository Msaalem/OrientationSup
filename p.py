"""
this is the program used to oriente students

"""

s = {
    'A': ['CNM', 'DSI', 'RSS'],
    'B': ['CNM', 'DSI', 'RSS'],
    'C': ['DSI', 'CNM', 'RSS'],
    'D': ['DSI', 'RSS', 'CNM'],
    'E': ['RSS', 'DSI', 'CNM'],
    'F': ['RSS', 'CNM', 'DSI']
}

r = {
    'DSI': ['C', 'E', 'D', 'B', 'F', 'A'],
    'RSS': ['B', 'F', 'A', 'E', 'D', 'C'],
    'CNM': ['A', 'B', 'C', 'D', 'E', 'F']
}

p = {
    'DSI': 2,
    'RSS': 2,
    'CNM': 1
}


def get_matched_students(students, rankings, places):

    waiting_students = [student for student in students]

    matching_results = {choice: [] for choice in places}
    

    def get_waiting_list_without_student(student):
        return [x for x in waiting_students if x != student]
        
    def get_sorted_results_with_student(student, choice):
        matching_results[choice].append(student)
        return [x for x in rankings[choice] if x in matching_results[choice]]

    while waiting_students:
        for student in waiting_students.copy():
            if not students[student]:
                waiting_students = get_waiting_list_without_student(student)
                continue    
            choice = students[student].pop(0)
            if len(matching_results[choice]) < places[choice]:
                matching_results[choice] = get_sorted_results_with_student(student, choice)
                waiting_students = get_waiting_list_without_student(student)
            else:
                if rankings[choice].index(student) < rankings[choice].index(matching_results[choice][-1]):
                    matching_results[choice] = get_sorted_results_with_student(student, choice)
                    waiting_students = get_waiting_list_without_student(student)
                    waiting_students.append(matching_results[choice].pop())

    return matching_results


print(get_matched_students(s, r, p))
