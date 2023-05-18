package CampingProject.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


	

	@Controller
	public class homecontroller {
	  @RequestMapping(value="/admin", method = RequestMethod.GET)
	  public String home() {
	    return "admin";
	  }
	}

