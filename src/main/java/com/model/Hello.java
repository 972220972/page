package com.model;

import com.model.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Administrator on 2017/2/17.
 */
@Controller
public class Hello {
    private int p;
    private int pagesize=6;
    private int pagecount=0;
    @Autowired
    private StudentMapper smr;

    @RequestMapping("/ok") @ResponseBody
    public String ok(){
        return "ok";
    }

    @RequestMapping(value = "/del/{id}.html", method= RequestMethod.GET)
    public String show(@PathVariable int id){
        smr.del(id);
        return "redirect:/show.html";
    }

    @RequestMapping(value = "/showpage/{p}", method= RequestMethod.GET)
    public ModelAndView showpage(@PathVariable int p){
        ModelAndView mv=new ModelAndView("showpage");
        this.p=p==0?1:p;
        int sc=smr.count()/pagesize;
        pagecount=(smr.count()%pagesize==0)?sc:sc+1;
        List<Student> st = smr.querypage((this.p-1)*pagesize,pagesize);
        /*List<Student> st = smr.query();*/
        StringBuffer div=new StringBuffer();
        div.append("<div class="+"\"page\">");

        if (p==1){
            div.append("<a style=\"color:#ccc\" href=\"javascript:void(0)\">上一页</a>");
        }else{
            div.append("<a href=\"/showpage/"+(p-1)+"\">上一页</a>");
        }
        for(int i=1;i<=pagecount;i++){
           if (i==p){
                div.append("<a style=\"color:#ccc\" href=\"javascript:void(0)\">"+i+"</a>");
            }else{
                div.append("<a href=\"/showpage/"+(i)+"\">"+i+"</a>");
            }
        }
        if (p==pagecount){
            div.append("<a style=\"color:#ccc\" href=\"javascript:void(0)\">下一页</a>");
        }else{
            div.append("<a href=\"/showpage/"+(p+1)+"\">下一页</a>");
        }
        div.append("</div>");
        System.out.println(div);
        mv.addObject("student", st);
        mv.addObject("p", this.p);
        mv.addObject("pagecount", pagecount);
        mv.addObject("divs",div.toString());
        return mv;
    }
    @RequestMapping("/showpage")
    public String showpage(){
        return "redirect:/showpage/1";
    }

    @RequestMapping("/show.html")
    public ModelAndView show(){
        ModelAndView mv=new ModelAndView("show");
            mv.addObject("student", smr.query());
        return mv;
    }
}
