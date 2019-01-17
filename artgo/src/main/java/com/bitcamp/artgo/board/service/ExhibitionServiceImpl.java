package com.bitcamp.artgo.board.service;

import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bitcamp.artgo.board.dao.ExhibitionDao;
import com.bitcamp.artgo.board.model.ExhibitionDto;
import com.bitcamp.artgo.util.ListConstance;

/**
* 파일명: ExhibitionServiceImpl.java
* 설 명: 전시회 서비스 구현 클래스
* 작성일: 2019. 1. 11.
* 작성자: 고 우 혁
*/

@Service
public class ExhibitionServiceImpl implements ExhibitionService {

  @Autowired
  private SqlSession sqlSession;
  
  @Autowired
  ServletContext servletcontext;

  @Override
  public ExhibitionDto getExhibit(int boardNo) {
    return sqlSession.getMapper(ExhibitionDao.class).getExhibit(boardNo);
  }

  @Override
  public List<ExhibitionDto> getExhibitList(Map<String, String> param) {
    int pg = Integer.parseInt(param.get("pg"));
    int end = pg*ListConstance.LIST_COUNT;
    int start = end-ListConstance.LIST_COUNT;
    param.put("start", start+"");
    param.put("end", end+"");
    return sqlSession.getMapper(ExhibitionDao.class).getExhibitList(param);
  }
}
//
//  @Override
//  @Transactional
//  public int writeExhibition(ExhibitionDto exhibitionDto, MultipartFile multipartFile) {
//    if (sqlSession.getMapper(BoardDao.class).writeBoardByExhibit(exhibitionDto) > 0) {
//      if (sqlSession.getMapper(ExhibitionDao.class).writeExhibition(exhibitionDto) > 0) {
//        if (multipartFile != null && !multipartFile.isEmpty()) {
//          String opicture = multipartFile.getOriginalFilename();
//          //String realPath = servletcontext.getRealPath("/resources/upload");
//          String realPath = "C:\\Users\\kowoo\\Documents\\artgo_upload";
//          DateFormat df = new SimpleDateFormat("yyMMdd");
//          String saveFolder = df.format(new Date());
//          String fullSaveFolder = realPath + File.separator + saveFolder;
//          File dir = new File(fullSaveFolder);
//          if (!dir.exists()) {
//            // 해당 이름의 파일이 존재하지 않는다면 그 파일을 만들어라!
//            dir.mkdirs();
//          }
//
//          String savePicture =
//              UUID.randomUUID().toString() + opicture.substring(opicture.lastIndexOf('.'));
//          File file = new File(fullSaveFolder, savePicture);
//          try {
//            multipartFile.transferTo(file);
//          } catch (Exception e) {
//            e.printStackTrace();
//          }
//          FileDto fileDto = new FileDto();
//
//          fileDto.setFolder(fullSaveFolder);
//          fileDto.setSaveName(savePicture);
//          fileDto.setName(opicture);
//          fileDto.setFileSize((int) multipartFile.getSize());
//          fileDto.setBno(exhibitionDto.getBno());
//          return sqlSession.getMapper(FileDao.class).writeFile(fileDto);
//        }
//      }
//
//    }
//    return 0;
//  }
//}


/**
* @함수명 : cardInsert(CardDTO card)
* @작성일 : 2019. 1. 11.
* @작성자 : 고 우 혁
* @설명 : 카드를 생성한다.
* @param CardDTO - projectNum, cardName
* @return int 성공한 갯수
**/