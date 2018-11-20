class person():
    def __init__(self,first,last):
        self.firstname = first
        self.lastname = last

    def emp_name(self):
        return self.firstname + " " + self.lastname

class employee(person):
    def __init__(self,first,last,empId):
        person.__init__(self,first,last)
        self.staffId = empId

    def staff_info(self):
        return self.Name() + " " + self.staffId


def create_person(first, last):
    return person(first, last)
