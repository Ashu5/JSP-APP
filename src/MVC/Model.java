package MVC;

public class Model {
String name;
int  id;
String salary;



public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getSalary() {
	return salary;
}
public void setSalary(String salary) {
	this.salary = salary;
}
@Override
public String toString() {
	return "Model [name=" + name + ", id=" + id + ", salary=" + salary + "]";
}
}
