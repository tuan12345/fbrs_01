package app.controller.client;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {
    private static final Logger logger = Logger.getLogger(HomeController.class);

    public String index(){
        return "";
    }
}
