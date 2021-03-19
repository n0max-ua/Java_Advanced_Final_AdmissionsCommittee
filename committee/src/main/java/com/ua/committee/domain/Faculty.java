package com.ua.committee.domain;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
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
	private Integer passingMark;

	@Column
	private Integer totalStudents;
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "user_faculty", joinColumns = @JoinColumn(name = "faculty_id"), inverseJoinColumns = @JoinColumn(name = "user_id"))
	private List<User> students;

	public Faculty() {
	}

	public Faculty(String title, String description, Integer passingMark, Integer totalStudents, List<User> students) {
		this.title = title;
		this.description = description;
		this.passingMark = passingMark;
		this.totalStudents = totalStudents;
		this.students = students;
	}

	public Faculty(Integer id, String title, String description, Integer passingMark, Integer totalStudents,
			List<User> students) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
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
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((passingMark == null) ? 0 : passingMark.hashCode());
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
		return "Faculty [id=" + id + ", title=" + title + ", description=" + description + ", passingMark="
				+ passingMark + ", totalStudents=" + totalStudents + "]";
	}

}
