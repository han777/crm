package com.kaishengit.controller;

import com.google.gson.Gson;
import com.kaishengit.dto.Message;
import com.kaishengit.pojo.User;
import com.kaishengit.service.CustomerService;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/report")
public class ReportController {
    @Inject
    private CustomerService customerService;


    /**
     * 图表页面
     * @return
     */
    @RequestMapping(value = "/chart",method = RequestMethod.GET)
    public String index(Model model) {
    	List<Map<String,Object>> result = customerService.homeTotal();

        Gson gson = new Gson();
        String json = gson.toJson(result);

        model.addAttribute("json",json);
        return "report/chart";
    }




}
