package gr.hua.dit.springmvc1.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "thesis")
public class Thesis {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private String id;
	
	@Column(name = "subject")
	private String subject;
	
	@Column(name = "professor")
	private String professor;
	
	@Column(name = "department")
	private String departnemt;
	
	@Column(name = "description")
	private String description;

	public Thesis() {

	}

	public Thesis(String subject, String professor, String departnemt, String description,String id) {
		super();
		this.id = id;
		this.subject = subject;
		this.professor = professor;
		this.departnemt = departnemt;
		this.description = description;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getProfessor() {
		return professor;
	}

	public void setProfessor(String professor) {
		this.professor = professor;
	}

	public String getDepartnemt() {
		return departnemt;
	}

	public void setDepartnemt(String departnemt) {
		this.departnemt = departnemt;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
