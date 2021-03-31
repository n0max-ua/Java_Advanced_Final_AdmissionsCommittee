package com.ua.committee.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "certificate")
public class Certificate {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private Integer id;

	@Column
	private Integer math;

	@Column
	private Integer history;

	@Column
	private Integer physics;

	@Column
	private Integer biology;

	@Column
	private Integer chemistry;

	@Column
	private Integer english;

	@OneToOne
	@MapsId
	private User user;

	public Certificate() {
	}

	public Certificate(Certificate certificate) {
		this.math = certificate.math;
		this.history = certificate.history;
		this.physics = certificate.physics;
		this.biology = certificate.biology;
		this.chemistry = certificate.chemistry;
		this.english = certificate.english;

	}

	public Certificate(Integer math, Integer history, Integer physics, Integer biology, Integer chemistry,
			Integer english) {
		this.math = math;
		this.history = history;
		this.physics = physics;
		this.biology = biology;
		this.chemistry = chemistry;
		this.english = english;
	}

	public Certificate(Integer id, Integer math, Integer history, Integer physics, Integer biology, Integer chemistry,
			Integer english) {
		this.id = id;
		this.math = math;
		this.history = history;
		this.physics = physics;
		this.biology = biology;
		this.chemistry = chemistry;
		this.english = english;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getMath() {
		return math;
	}

	public void setMath(Integer math) {
		this.math = math;
	}

	public Integer getHistory() {
		return history;
	}

	public void setHistory(Integer history) {
		this.history = history;
	}

	public Integer getPhysics() {
		return physics;
	}

	public void setPhysics(Integer physics) {
		this.physics = physics;
	}

	public Integer getBiology() {
		return biology;
	}

	public void setBiology(Integer biology) {
		this.biology = biology;
	}

	public Integer getChemistry() {
		return chemistry;
	}

	public void setChemistry(Integer chemistry) {
		this.chemistry = chemistry;
	}

	public Integer getEnglish() {
		return english;
	}

	public void setEnglish(Integer english) {
		this.english = english;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((biology == null) ? 0 : biology.hashCode());
		result = prime * result + ((chemistry == null) ? 0 : chemistry.hashCode());
		result = prime * result + ((english == null) ? 0 : english.hashCode());
		result = prime * result + ((history == null) ? 0 : history.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((math == null) ? 0 : math.hashCode());
		result = prime * result + ((physics == null) ? 0 : physics.hashCode());
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
		Certificate other = (Certificate) obj;
		if (biology == null) {
			if (other.biology != null)
				return false;
		} else if (!biology.equals(other.biology))
			return false;
		if (chemistry == null) {
			if (other.chemistry != null)
				return false;
		} else if (!chemistry.equals(other.chemistry))
			return false;
		if (english == null) {
			if (other.english != null)
				return false;
		} else if (!english.equals(other.english))
			return false;
		if (history == null) {
			if (other.history != null)
				return false;
		} else if (!history.equals(other.history))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (math == null) {
			if (other.math != null)
				return false;
		} else if (!math.equals(other.math))
			return false;
		if (physics == null) {
			if (other.physics != null)
				return false;
		} else if (!physics.equals(other.physics))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Certificate [id=" + id + ", math=" + math + ", history=" + history + ", physics=" + physics + ", biology="
				+ biology + ", chemistry=" + chemistry + ", english=" + english + "]";
	}

}
