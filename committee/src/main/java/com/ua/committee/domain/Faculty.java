package com.ua.committee.domain;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "faculty")
public class Faculty {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;

	@Column
	private String title;

	@Column
	private String description;

	@Column
	private String firstSubject;

	@Column
	private String secondSubject;

	@Column
	private String thirdSubject;

	@Column
	private Integer passingMark;

	@Column
	private Integer totalStudents;

	@OneToMany(mappedBy = "faculty", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<User> students;

	public Faculty() {

	}

	public Faculty(Faculty faculty) {
		this.title = faculty.title;
		this.description = faculty.description;
		this.firstSubject = faculty.firstSubject;
		this.secondSubject = faculty.secondSubject;
		this.thirdSubject = faculty.thirdSubject;
		this.passingMark = faculty.passingMark;
		this.totalStudents = faculty.totalStudents;
		this.students = faculty.students;
	}

	public Faculty(String title, String description, String firstSubject, String secondSubject, String thirdSubject,
			Integer passingMark, Integer totalStudents, List<User> students) {
		this.title = title;
		this.description = description;
		this.firstSubject = firstSubject;
		this.secondSubject = secondSubject;
		this.thirdSubject = thirdSubject;
		this.passingMark = passingMark;
		this.totalStudents = totalStudents;
		this.students = students;
	}

	public Faculty(Integer id, String title, String description, String firstSubject, String secondSubject,
			String thirdSubject, Integer passingMark, Integer totalStudents, List<User> students) {
		this.id = id;
		this.title = title;
		this.description = description;
		this.firstSubject = firstSubject;
		this.secondSubject = secondSubject;
		this.thirdSubject = thirdSubject;
		this.passingMark = passingMark;
		this.totalStudents = totalStudents;
		this.students = students;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFirstSubject() {
		return firstSubject;
	}

	public void setFirstSubject(String firstSubject) {
		this.firstSubject = firstSubject;
	}

	public String getSecondSubject() {
		return secondSubject;
	}

	public void setSecondSubject(String secondSubject) {
		this.secondSubject = secondSubject;
	}

	public String getThirdSubject() {
		return thirdSubject;
	}

	public void setThirdSubject(String thirdSubject) {
		this.thirdSubject = thirdSubject;
	}

	public Integer getPassingMark() {
		return passingMark;
	}

	public void setPassingMark(Integer passingMark) {
		this.passingMark = passingMark;
	}

	public Integer getTotalStudents() {
		return totalStudents;
	}

	public void setTotalStudents(Integer totalStudents) {
		this.totalStudents = totalStudents;
	}

	public List<User> getStudents() {
		return students;
	}

	public void setStudents(List<User> students) {
		this.students = students;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((firstSubject == null) ? 0 : firstSubject.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((passingMark == null) ? 0 : passingMark.hashCode());
		result = prime * result + ((secondSubject == null) ? 0 : secondSubject.hashCode());
		result = prime * result + ((thirdSubject == null) ? 0 : thirdSubject.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + ((totalStudents == null) ? 0 : totalStudents.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Faculty other = (Faculty) obj;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (firstSubject == null) {
			if (other.firstSubject != null)
				return false;
		} else if (!firstSubject.equals(other.firstSubject))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (passingMark == null) {
			if (other.passingMark != null)
				return false;
		} else if (!passingMark.equals(other.passingMark))
			return false;
		if (secondSubject == null) {
			if (other.secondSubject != null)
				return false;
		} else if (!secondSubject.equals(other.secondSubject))
			return false;
		if (thirdSubject == null) {
			if (other.thirdSubject != null)
				return false;
		} else if (!thirdSubject.equals(other.thirdSubject))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (totalStudents == null) {
			if (other.totalStudents != null)
				return false;
		} else if (!totalStudents.equals(other.totalStudents))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Faculty [id=" + id + ", title=" + title + ", description=" + description + ", firstSubject="
				+ firstSubject + ", secondSubject=" + secondSubject + ", thirdSubject=" + thirdSubject
				+ ", passingMark=" + passingMark + ", totalStudents=" + totalStudents + "]";
	}

}
