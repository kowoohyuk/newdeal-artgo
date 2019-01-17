package com.bitcamp.artgo.board.dao;

import com.bitcamp.artgo.board.model.FileDto;

public interface FileDao {
  int writeFile(FileDto fileDto);
}
