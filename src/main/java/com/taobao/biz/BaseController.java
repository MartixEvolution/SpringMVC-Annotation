package com.taobao.biz;

import com.taobao.enity.User;
import com.taobao.service.PersonService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;


/*There must be a Controller annotation or the application will doesn't work .*/
@Controller
@RequestMapping(value = "/base")
public class BaseController {
    private static int counter = 0;
    private static final String VIEW_INDEX = "index";
    private static final Logger logger = LoggerFactory.getLogger(BaseController.class);

    @Autowired
    private PersonService myPersonService;
    @Autowired
    private HttpServletRequest myRequest;

    /**
     * Autowired固定使用bytype的方式进行装配，比如上面所述，会首先查找Interface Type为PersonService的bean，
     * 如果唯一，则返回，否则再根据name，即查找名为myPersonService的bean，如果唯一则返回，否则则抛出exception。
     * 这里我们可以使用@Qualifier来制定我们使用byname的方式进行装配。
     *
     * @Qualifier ( "myPersonService" )
     */

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String welcome(ModelMap model) {
        model.addAttribute("message", "Welcome");
        model.addAttribute("counter", ++counter);
        logger.debug("[Welcome counter :{}", counter);
        return "login";//返回index.jsp
    }

    @RequestMapping(value = "/bind", method = RequestMethod.GET)
    public String welcome2(@RequestParam("name") String name, ModelMap model) {
        model.addAttribute("message", "Welcome " + name);
        model.addAttribute("counter", ++counter);
        logger.debug("autowired{}", myPersonService.doSomething("ddd"));
        logger.debug("[Welcome counter :{}", counter);
        logger.debug("model{}", model.toString());
        return VIEW_INDEX;//返回index.jsp
    }

    @RequestMapping(value = "/path", method = RequestMethod.POST)
    public String welcome3(User user,  ModelMap model) {
        String[] mySelects = myRequest.getParameterValues("mySelects");
        for (String option: mySelects) {
            System.out.println(option);
        }
        System.out.println(user.toString());
        model.addAttribute("message", "hello");
        return VIEW_INDEX;//返回index.jsp
    }

    @RequestMapping(value = "helloRest")
    @ResponseBody
    public String helloRest() {
        return "hello,this is rest";
    }
}
