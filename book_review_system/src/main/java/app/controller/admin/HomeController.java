package app.controller.admin;


import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
public class HomeController {
    private static final Logger logger = Logger.getLogger(HomeController.class);

    @RequestMapping(value = {"/","/home"})
    public ModelAndView index() {
        logger.info("home page");
        ModelAndView model = new ModelAndView("adminHome");
        return model;
    }

    @RequestMapping(value = "/books")
    public ModelAndView loadbooks() {
        logger.info("book page");
        ModelAndView model = new ModelAndView("books");

        return model;
    }
}
