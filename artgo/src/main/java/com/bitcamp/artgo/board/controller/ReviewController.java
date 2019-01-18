package com.bitcamp.artgo.board.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bitcamp.artgo.board.model.ReviewDto;
import com.bitcamp.artgo.board.service.ReviewService;
import com.bitcamp.artgo.member.model.MemberDto;



/**
* 파일명: NoticeController.java
* 설 명: 설명내용
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/
@Controller
public class ReviewController {
	
	@Autowired
	ReviewService reviewService;

	@RequestMapping(value="review/list.do", method=RequestMethod.GET)
	public String list(HttpSession session, ReviewDto reviewDto) {
		System.out.println("여기 들어와요lllll");
		System.out.println(reviewDto);
		return "review/write.page";
	}
	
	
	@RequestMapping(value="review/list.do", method=RequestMethod.POST, headers={"Content-type=application/json"})
	public @ResponseBody String write(@RequestBody ReviewDto reviewDto, HttpSession session) {
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		System.out.println(memberDto);
		
		reviewDto.setMno(memberDto.getMno());
		
		if(reviewService.writeReview(reviewDto)>0) {
		
//			reviewDto.setComment(reviewDto.getComment());
//			reviewDto.setScore(reviewDto.getScore());
//			reviewDto.setExno(4);
//			reviewDto.setMno(memberDto.getMno());
//			reviewDto.setName(memberDto.getName());
//			int cnt = reviewService.writeReview(reviewDto);
			System.out.println(reviewDto);
		}
		return "review/write.page";
	}
	
	@RequestMapping(value="review/{rno}/{exno}", method=RequestMethod.GET)
	public @ResponseBody String list(@PathVariable(value="rno") int rno, @PathVariable(value="exno") int exno) { //패스배리어블 = 경로에 포함된 값
		return "review/list.do";
	}
	
	@RequestMapping(value="review/{rno}", method=RequestMethod.PUT, headers={"Content-type=application/json"})
	public @ResponseBody String modify(@PathVariable(value="rno") int rno, @RequestBody ReviewDto reviewDto, HttpSession session) {
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) {
			int cnt = reviewService.modifyReview(reviewDto);
		}
		return "review/list.do";
	}
	
	@RequestMapping(value="review/{rno}", method=RequestMethod.DELETE)
	public @ResponseBody String delete(@PathVariable(value="rno") int rno) { //패스배리어블 = 경로에 포함된 값
		reviewService.deleteReview(rno);
		
		return "";
	}
}


/**
* @함수명 : cardInsert(CardDTO card)
* @작성일 : 2019. 1. 11.
* @작성자 : 고 우 혁
* @설명 : 카드를 생성한다.
* @param CardDTO - projectNum, cardName
* @return int 성공한 갯수
**/