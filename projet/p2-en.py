students = {
    'A': ['DSI', 'RSS', 'CNM'],
    'B': ['RSS', 'DSI', 'CNM'],
    'C': ['CNM', 'DSI', 'RSS'],
    'D': ['DSI', 'RSS', 'CNM'],
    'E': ['RSS', 'DSI', 'CNM'],
    'F': ['CNM', 'DSI', 'RSS']
}

choices = {
    'DSI': ['B', 'E', 'C', 'D', 'A', 'F'],
    'RSS': ['C', 'F', 'A', 'B', 'E', 'D'],
    'CNM': ['A', 'D', 'B', 'C', 'E', 'F']
}
rss = 2
cnm = 1
dsi = 2
nbr_of_speciality = 3
results = []
students_with_out_choice = []

for student in students:
    students_with_out_choice.append(student)

while len(students_with_out_choice) > 0:
    for student in students_with_out_choice:
        for i in range(nbr_of_speciality):
            choice = students[student][i]
            if (choice == "DSI" and dsi != 0) or (choice == "RSS" and rss != 0) or (choice == "CNM" and cnm != 0):
                results.append([student, choice])
                students_with_out_choice.remove(student)
                if choice == "DSI":
                    dsi -= 1
                if choice == "RSS":
                    rss -= 1
                if choice == "CNM":
                    cnm -= 1
                break

            else:
                free_choice = [k for (k,v) in results if choice == v]
                student_proposer = free_choice[0]
                for k in free_choice :
                    if choices[choice].index(k) > choices[choice].index(student_proposer):
                        student_proposer = k
                rating_of_propose_student = choices[choice].index(student_proposer)
                rating_of_actuel_student = choices[choice].index(student)

                if rating_of_propose_student > rating_of_actuel_student:
                    students_with_out_choice.remove(student)
                    results.remove([student_proposer, choice])
                    results.append([student, choice])
                    students_with_out_choice.append(student_proposer)
                    break
                elif i==nbr_of_speciality-1 :
                    print(f"student  non-oriented : {student}")
                    students_with_out_choice.remove(student)
                    break

print(results)
