package gr.hua.dit.springmvc1.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.security.crypto.bcrypt.BCrypt;

@Entity
@Table(name = "user")
public class User implements Serializable {
	@Id
	@Column(name = "username")
	private String username;

	@Column(name = "password")
	private String password;

	@Column(name = "department")
	private String department;

	@Column(name = "firstName")
	private String firstName;

	@Column(name = "surname")
	private String surname;

	@Column(name = "currentSemester")
	private int currentSemester;

	@Column(name = "totalClasses")
	private int totalClasses;

	@Column(name = "passedClasses")
	private int passedClasses;

	@Column(name = "failedClasses")
	private int failedClasses;

	@Column(name = "enabled")
	private boolean enabled;

	@Column(name = "progessIndicator")
	private int progessIndicator;

	@Column(name = "direction")
	private String direction;

	@Column(name = "program")
	private String program;
	
	@Column(name = "ThesisName")
	private String ThesisName;
	
	@Column(name = "role")
	private String role;
	
	@OneToMany(cascade = CascadeType.ALL,fetch=FetchType.EAGER, mappedBy = "user")
	private Set<Authorities> authorities = new HashSet<>();

	public User() {
		
	}

	public String getUsername() {
		return username;
	}

	public User(String username, String password, String department, String firstName, String surname,
			int currentSemester, int totalClasses, int passedClasses, int failedClasses, boolean enabled,
		 int progessIndicator,String direction, String program, String ThesisName , String role) {
		super();
		this.username = username;
		this.password = password;
		this.department = department;
		this.firstName = firstName;
		this.surname = surname;
		this.currentSemester = currentSemester;
		this.totalClasses = totalClasses;
		this.passedClasses = passedClasses;
		this.failedClasses = failedClasses;
		this.enabled = enabled;
		this.progessIndicator = progessIndicator;
		this.direction = direction;
		this.program = program;
		this.ThesisName = ThesisName;
		this.role = role;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public int getCurrentSemester() {
		return currentSemester;
	}

	public void setCurrentSemester(int currentSemester) {
		this.currentSemester = currentSemester;
	}

	public int getTotalClasses() {
		return totalClasses;
	}

	public void setTotalClasses(int totalClasses) {
		this.totalClasses = totalClasses;
	}

	public int getPassedClasses() {
		return passedClasses;
	}

	public void setPassedClasses(int passedClasses) {
		this.passedClasses = passedClasses;
	}

	public int getFailedClasses() {
		return failedClasses;
	}

	public void setFailedClasses(int failedClasses) {
		this.failedClasses = failedClasses;
	}

	public boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public int getProgessIndicator() {
		return progessIndicator;
	}

	public void setProgessIndicator(int progessIndicator) {
		this.progessIndicator = progessIndicator;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public String getProgram() {
		return program;
	}

	public void setProgram(String program) {
		this.program = program;
	}
	
	public boolean isEnabled() {
		return enabled;
	}

	public Set<Authorities> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(Set<Authorities> authorities) {
		this.authorities = authorities;
	}

	public String getThesisName() {
		return ThesisName;
	}

	public void setThesisName(String thesisName) {
		ThesisName = thesisName;
	}
	

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", department=" + department + ", firstName="
				+ firstName + ", surname=" + surname + ", currentSemester=" + currentSemester + ", totalClasses="
				+ totalClasses + ", passedClasses=" + passedClasses + ", failedClasses=" + failedClasses + ", enabled="
				+ enabled + ", progressIndicator="  + ", direction=" + direction + ", program="
				+ program + "]";
	}
	
	public String hashPassword(String password){
		return BCrypt.hashpw(password, BCrypt.gensalt());
	}

}