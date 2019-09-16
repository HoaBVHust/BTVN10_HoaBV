package vn.topica.itlab4.model;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

import vn.topica.itlab4.model.Student;


public class StudentModel{
	
	private static Map<Integer, Student> students=new HashMap<>();	
	//make the constructor private so that this class can not be instantiated
	private StudentModel() {
			students.put(1,new Student("Hoa","10/08/1997","Nam","01/01/2018"));
			students.put(2,new Student("Hoa","10/08/1997","Nam","01/01/2019"));
		}
	//get the only object available
	public static Map<Integer, Student> getStudent() {
		return students;
	}
	//This method to convert map to students, sort them by id and return them
	public synchronized static ArrayList<Student> getStudents()
	{
		ArrayList<Student> result = new ArrayList<>(students.values());
		result.sort(Comparator.comparingInt(Student::getiD));
		return result;
	}
	//This method delete a student from map students by ID
	public synchronized static void delete(int id)
	{
		students.remove(id);
	}
	// This method add new student or edit information of a student
	public synchronized static void update(Student s)
	{
		students.put(s.getiD(), s);
	}
}

