package com.kuang.controller;

import com.kuang.pojo.Books;
import com.kuang.service.BookService;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.awt.print.Book;
import java.util.List;

@Controller
public class BookController {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/hello")
    public String toAllBooks(Model model){
        List<Books> books = bookService.queryAllBook();
        model.addAttribute("list",books);
        return "hello";
    }
    @RequestMapping("/toaddBook")
    public String toAddBook(){
        return "addBook";
    }

    @RequestMapping("/toupdatePage")
    public String toUpdatePage(int id,Model model){
        Books books = bookService.queryBookById(id);
        model.addAttribute("Qbook",books);
        return "update";
    }

    @RequestMapping("/addBook")
    public String addBook(Books books){

        System.out.println("addbook---->"+books);
        bookService.addBook(books);
        return "redirect:/hello";
    }
    @RequestMapping("/updatebook")
    public String updateBook(Books books){
        System.out.println("updateBook"+books);
        bookService.updateBook(books);
        return "redirect:/hello";
    }
    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id){
        bookService.deleteBookById(id);
        return "redirect:/hello";
    }
    @RequestMapping("/toQueryBookByNamePage")
    public String toQueryBookByNamePage(String queryBookName,Model model){
        Books books = bookService.queryBookByName(queryBookName);
        if(books == null){
            model.addAttribute("msg","未查询到您需要的书籍");
            List<Books> books1 = bookService.queryAllBook();
            model.addAttribute("list",books1);
            return "hello";
        }
        System.out.println("books---->"+books);
        model.addAttribute("Qbook",books);
        return "queryBook";
    }
}
