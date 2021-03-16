package com.ua.committee.domain;

public class Сertificate {
	private Integer id;
	private Integer math;
	private Integer history;
	private Integer physics;
	private Integer biology;
	private Integer chemistry;
	private Integer english;
	private User user;

	public Сertificate() {
	}

	public Сertificate(Integer math, Integer history, Integer physics, Integer biology, Integer chemistry,
			Integer english) {
		this.math = math;
		this.history = history;
		this.physics = physics;
		this.biology = biology;
		this.chemistry = chemistry;
		this.english = english;
	}

	public Сertificate(Integer id, Integer math, Integer history, Integer physics, Integer biology, Integer chemistry,
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
		Сertificate other = (Сertificate) obj;
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
		return "Сertificate [id=" + id + ", math=" + math + ", history=" + history + ", physics=" + physics
				+ ", biology=" + biology + ", chemistry=" + chemistry + ", english=" + english + "]";
	}

}
