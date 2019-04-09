import Beans.BookBean;
import Beans.UserBean;
import Connector.MySqlConnector;

public class BookRequestManager {

public static Boolean addBook(BookBean bookbean) {
		
		String query= "INSERT INTO `llibrary`.`books_table` (`isbn`, `book_name`, `author_name`, `category`, `price`, `quantity`, `borrowed`) VALUES ('222', 'ddd', 'ddd', 'ddd', '15', '5', '3');\n" + 
				"";
	
		return true;
}
}