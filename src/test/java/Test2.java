
import com.kuang.pojo.Books;
import com.kuang.service.BookService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import java.util.List;

public class Test2 {
    @Test
    public void test1(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookMapper = context.getBean("BookServiceImpl", BookService.class);
        List<Books> books = bookMapper.queryAllBook();
        for (Books book : books) {
            System.out.println(book);
        }
    }
}
