package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.UserMapper;
import logic.Basket;
import logic.Comment;
import logic.Mileage;
import logic.Orderlist;
import logic.Postaddr;
import logic.Qna;
import logic.Ulike;
import logic.Uorder;
import logic.User;
import logic.Video;

@Repository
public class UserDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	Map<Object, Object> param = new HashMap<Object,Object>();
	
	// 회원 등록
	public void insert(User user) {
		sqlSession.getMapper(UserMapper.class).insert(user);
	}
	
	// naver api 회원 등록
	public void naver_insert(String emailid, String name, String nickname, String profile_image) {
		param.clear();
		param.put("emailid",emailid);
		param.put("name",name);
		param.put("nickname",nickname);
		param.put("userimg",profile_image);
		sqlSession.getMapper(UserMapper.class).naver_insert(param);
		
	}
	// kakao api 회원 등록	
	public void kakaoinsert(String emailid, String nickname, String userimg) {
		param.clear();
		param.put("emailid",emailid);
		param.put("nickname",nickname);
		param.put("userimg",userimg);
		sqlSession.getMapper(UserMapper.class).kakao_insert(param);
	}



	// 마일리지 적립, 사용 등 마일리지 테이블에 등록
	public void mileageinsert(String emailid, String mi_content, int mi_point, int type, int mi_num, int od_num) 
	{
		param.clear();
		param.put("mi_num",mi_num);
		param.put("emailid",emailid);
		param.put("mi_content",mi_content);
		param.put("mi_point",mi_point);
		param.put("mi_type",type);
		param.put("od_num",od_num);
		sqlSession.getMapper(UserMapper.class).mileageinsert(param);
	}
	
	// 회원 마일리지 정보 갱신(마일리지 내역 변경시 마다 사용해야 함)
	public void mileageupdate(int mileage, String emailid) {
		param.clear();
		param.put("mileage",mileage);
		param.put("emailid",emailid);				
		sqlSession.getMapper(UserMapper.class).mileageupdate(param);
		
	}
	
	// 로그인 등 아이디를 통해 DB에 저장된 회원 정보 조회
	public User selectOne(String emailid) {
		param.clear();
		param.put("emailid",emailid);
		return sqlSession.getMapper(UserMapper.class).select(param);
		
	}

	public void update(User user) {
		param.clear();
		param.put("emailid",user.getEmailid());
		param.put("nickname",user.getNickname());
		param.put("name",user.getName());
		sqlSession.getMapper(UserMapper.class).update(param);
	}

	public void delete(String emailid) {
		param.clear();
		param.put("emailid",emailid);
		sqlSession.getMapper(UserMapper.class).delete(emailid);
	}

	public List<User> userlist() {
		return sqlSession.getMapper(UserMapper.class).selectlist(null);
	}

	public List<User> list(String[] idchks) {
		param.clear();
		param.put("idchks",idchks);
		return sqlSession.getMapper(UserMapper.class).selectlist(param);
	}

	public void passupdate(String emailid, String chgpass) {
		param.clear();
		param.put("emailid",emailid);
		param.put("chgpass",chgpass);
		sqlSession.getMapper(UserMapper.class).passupdate(param);
	}
	// mi_num
	public int maxnum(String emailid) {
		param.clear();
		param.put("emailid",emailid);
		return sqlSession.getMapper(UserMapper.class).maxnum(param);
	}

	// 해당 아이디의 마일리지 적립 내역 합계
	public int total_point(String emailid) {
		return sqlSession.getMapper(UserMapper.class).total_point(emailid);
	}

	// 해당 아이디의 마일리지 사용 내역 합계
	public int use_point(String emailid) {
		return sqlSession.getMapper(UserMapper.class).use_point(emailid);
	}

	// 해당 아이디의 마일리지 내역
	public List<Mileage> mileagelist(String emailid) {
		param.clear();
		param.put("emailid",emailid);
		return sqlSession.getMapper(UserMapper.class).mileagelist(emailid);
	}
	//내클래스 목록
	public List<Orderlist> odlist(User emailid) {
		return sqlSession.getMapper(UserMapper.class).odlist(emailid);
	}
	//클래스 비디오 목록
	public List<Video> vlist(Integer cl_num) {
		return sqlSession.getMapper(UserMapper.class).vlist(cl_num);
	}
	//선택한 비디오 출력
	public String clickvideo(Integer v_num) {
		return sqlSession.getMapper(UserMapper.class).clickvideo(v_num);
	}
	//좋아요 취미,diy
	public List<Ulike> likelist(String emailid) {
		return sqlSession.getMapper(UserMapper.class).likelist(emailid);
	}
	//좋아요 매거진
	public List<Ulike> likemlist(String emailid) {
		return sqlSession.getMapper(UserMapper.class).likemlist(emailid);
	}

	public int myclasscnt(User emailid) {
		return sqlSession.getMapper(UserMapper.class).myclasscnt(emailid);
	}

//강제탈퇴
	//강제탈퇴 마일리지 삭제
	public void usermileagedelete(String emailid) {
		sqlSession.getMapper(UserMapper.class).usermileagedelete(emailid);
	}
	//강제탈퇴 마일리지 검색
	public List<Mileage> mileageselect(String emailid) {
		return sqlSession.getMapper(UserMapper.class).mileagelist(emailid);
	}
	//강제탈퇴 배송지정보 검색
	public List<Postaddr> postaddrselect(String emailid) {
		return sqlSession.getMapper(UserMapper.class).postaddrlist(emailid);
	}
	//강제탈퇴 배송지정보 삭제
	public void userpostaddrdelete(String emailid) {
		sqlSession.getMapper(UserMapper.class).postaddrdelete(emailid);
	}

	public List<Qna> qnaselect(String emailid) {
		return sqlSession.getMapper(UserMapper.class).qnaselect(emailid);
	}
	public void qnaselectdelete(String emailid) {
		sqlSession.getMapper(UserMapper.class).qnaselectdelete(emailid);
	}

	public List<Basket> basketselect(String emailid) {
		return sqlSession.getMapper(UserMapper.class).basketselect(emailid);
	}
	public void basketselectdelete(String emailid) {
		sqlSession.getMapper(UserMapper.class).basketselectdelete(emailid);
	}

	public List<Orderlist> odlistselect(String emailid) {
		return sqlSession.getMapper(UserMapper.class).odlistselect(emailid);
	}
	public void odlistdelete(int od_num) {
		sqlSession.getMapper(UserMapper.class).odlistselectdelete(od_num);
	}

	public List<Uorder> orderselect(String emailid) {
		return sqlSession.getMapper(UserMapper.class).orderselect(emailid);
	}
	public void orderdelete(String emailid) {
		sqlSession.getMapper(UserMapper.class).orderselectdelete(emailid);
	}


}
