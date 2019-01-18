package com.bitcamp.artgo.board.model;

/**
 * 파일명: ReviewDto.java 설 명: 후기 객체 정의 작성일: 2019. 1. 10. 작성자: 고 우 혁
 */

public class ReviewDto {
	private int rno;
	private String comment;
	private int score;
	private int status;
	private int exno;
	private int mno;
	private String name;
	private String date;

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getExno() {
		return exno;
	}

	public void setExno(int exno) {
		this.exno = exno;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "ReviewDto [rno=" + rno + ", comment=" + comment + ", score=" + score + ", status=" + status + ", exno="
				+ exno + ", mno=" + mno + ", name=" + name + ", date=" + date + "]";
	}

}
