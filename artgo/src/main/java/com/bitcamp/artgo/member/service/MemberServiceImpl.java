package com.bitcamp.artgo.member.service;

import java.util.List;
import java.util.Map;
import org.apache.commons.codec.net.URLCodec;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bitcamp.artgo.member.dao.MemberDao;
import com.bitcamp.artgo.member.model.MemberDto;
import com.bitcamp.artgo.util.ListConstance;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private SqlSession sqlSession;
    
    @Override
    public int addMember(MemberDto memberDto) {
        memberDto.setPwd(enc(memberDto.getPwd()));
        return sqlSession.getMapper(MemberDao.class).addMember(memberDto);
    }

    @Override
    public MemberDto selectMember(String id) {
        return sqlSession.getMapper(MemberDao.class).selectMember(id);
    }

    @Override
    public List<MemberDto> selectMemberList(Map<String, String> param) {
      int pg = Integer.parseInt(param.get("pg"));
      int end = pg*ListConstance.LIST_COUNT;
      int start = end-ListConstance.LIST_COUNT;
      param.put("start", start+"");
      param.put("end", end+"");
      return sqlSession.getMapper(MemberDao.class).selectMemberList(param);
    }

    @Override
    public int updateMember(MemberDto memberDto) {
    	
        return sqlSession.getMapper(MemberDao.class).updateMember(memberDto);
    }

    @Override
    public MemberDto checkMember(MemberDto memberDto) {
    	System.out.println(memberDto.getPwd());
        memberDto.setPwd(enc(memberDto.getPwd()));
        System.out.println(memberDto.getPwd());
        return sqlSession.getMapper(MemberDao.class).checkMember(memberDto);
    }

    @Override
    public int deleteMember(String id, String pwd) {
        MemberDto tmp = new MemberDto();
        tmp.setId(id);
        tmp.setPwd(enc(pwd));
        
        
        //이렇게 안해도 db에 접근했을 때 id와 pwd를 받게 하면 처리가 가능하긴 한데 그냥 해봄!
        if(sqlSession.getMapper(MemberDao.class).checkMember(tmp)!=null) {
            return sqlSession.getMapper(MemberDao.class).deleteMember(tmp);
        }else {
            return 0;
        }
    }
    
    public String enc(String pwd) {
        String encLoginidx = "";
        try {
            String key = "aes256-test-key!!";
            AES256Util aes256 = new AES256Util(key);
            URLCodec codec = new URLCodec();
            
            encLoginidx = codec.encode(aes256.aesEncode(pwd)); 
            
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return encLoginidx;
    }
    
    @Override
    public MemberDto checkTell(String tell) {
        return sqlSession.getMapper(MemberDao.class).selectMemberByTell(tell);
    }


}
