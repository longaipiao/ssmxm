package com.zking.ssm.controller;

import com.zking.ssm.model.Price;
import com.zking.ssm.model.User;
import com.zking.ssm.service.PriceService;
import com.zking.ssm.util.IdGeneratorUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.beans.Transient;

@Controller
public class PriceController {

    @Autowired
    private PriceService priceService;
    @Autowired
    private IdGeneratorUtils idGeneratorUtils;

    @Transient
    @RequestMapping("/addPrice")
    public String addPrice(HttpServletRequest request, Model model){
        int money = 0;
        int fuwu = 0;
        String s = request.getParameter("s");
        String z = request.getParameter("z");
        String zl = request.getParameter("zl");
        if(s.equals("true")){
            money+=50;
            fuwu+=50;
        }
        if(z.equals("true")){
            money+=50;
            fuwu+=50;
        }
        int n=Integer.parseInt(zl);
        int a=5*n;
        money+=a;

        String id = idGeneratorUtils.nextId();

        HttpSession session = request.getSession();
        User user =(User) session.getAttribute("user");
        Price price = new Price(id, 2, zl, a, fuwu, money,0);
        int i = priceService.insert(price);

        session.setAttribute("price",price);

        model.addAttribute("money",money);
        model.addAttribute("fuwu",fuwu);
        model.addAttribute("yunfei",a);

        return "/pages/05_railway_class/2_quotation.jsp";
    }

}
