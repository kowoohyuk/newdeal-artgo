package com.bitcamp.artgo.board.dao;

import java.util.List;
import com.bitcamp.artgo.board.model.FileDto;

public interface FileDao {
  int writeFile(FileDto fileDto);
  int writeBanner(FileDto fileDto);
  List<FileDto> getBannerList();
}
