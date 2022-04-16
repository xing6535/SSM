package com.kuang.dao;


import com.kuang.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    //增加一本书
    int addBook(Books book);
    //删除一本书
    int deleteBookById(@Param("bookId") int id);
    //更新一本书
    int updateBook(Books book);
    //根据ID查找一本书
    Books queryBookById(@Param("bookId") int id);
    //查找全部的书籍
    List<Books> queryAllBook();
    //根据书名查询书籍
    Books queryBookByName(@Param("bookName") String bookName);

}
