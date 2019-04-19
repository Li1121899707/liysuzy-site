package com.liysite.beans;

public class Capriccio {
	private Integer capId;
	private String capNote;
	private String capMusic;
	private String capLink;
	private String capFavor;

	public Integer getCapId() {
		return capId;
	}

	public void setCapId(Integer capId) {
		this.capId = capId;
	}

	public String getCapNote() {
		return capNote;
	}

	public void setCapNote(String capNote) {
		this.capNote = capNote;
	}

	public String getCapMusic() {
		return capMusic;
	}

	public void setCapMusic(String capMusic) {
		this.capMusic = capMusic;
	}

	public String getCapLink() {
		return capLink;
	}

	public void setCapLink(String capLink) {
		this.capLink = capLink;
	}

	public String getCapFavor() {
		return capFavor;
	}

	public void setCapFavor(String capFavor) {
		this.capFavor = capFavor;
	}

	@Override
	public String toString() {
		return "Capriccio [capId=" + capId + ", capNote=" + capNote + ", capMusic=" + capMusic + ", capLink=" + capLink
				+ ", capFavor=" + capFavor + "]";
	}

}
