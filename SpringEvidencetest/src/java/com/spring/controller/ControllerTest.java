/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller;

import com.spring.model.Product;
import com.spring.util.NewHibernateUtil;
import java.lang.reflect.Method;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ControllerTest {
    SessionFactory sessfac = NewHibernateUtil.getSessionFactory();
  @RequestMapping(value = "/")
public String viewProducts(Model m){
    Session sess = sessfac.openSession();
      Query q = sess.createQuery("From Product as p");
      List<Product> products = q.list();
      m.addAttribute("products",products);
    
    return "allProducts";
}  
@RequestMapping(value = "/delete/{id}")
public String removes(@PathVariable Integer id){
    Session session = sessfac.openSession();
        Product p = new Product();
        try {
            session.beginTransaction();

            p.setId(id);
            session.delete(p);
            session.getTransaction().commit();

        }catch(Exception e){
        System.out.println("Error ..........."+e.getMessage()); 
    }
    
    return "redirect:/";
}
@RequestMapping(value = "/view")
public String views(){
 return "addPro";
}
@RequestMapping(value = "/save",  method = RequestMethod.POST)
public String saves(Product p){
    Session session = sessfac.openSession();
        try {
            session.beginTransaction();
            session.save(p);
            session.getTransaction().commit();

        }catch(Exception e){
       System.out.println("error......."+e.getMessage());
   }
 
    
 return "redirect:/";
}
@RequestMapping(value = "/edit/{id}")
public String edit(@PathVariable Integer id,Model m){
    Session sess = sessfac.openSession();
    try{
        Query q = sess.createQuery("From Product as p where p.id=:id");
        q.setParameter("id", id);
        Product pro = (Product) q.list().get(0);
        m.addAttribute("product",pro);
    }catch(Exception e){
        System.out.println("Error........"+e.getMessage());
}
   
   
    return "editpage";
}
@RequestMapping (value = "/update", method = RequestMethod.POST)
public String update(Product p){
    Session session = sessfac.openSession();
        try {
            session.beginTransaction();
//            System.out.println(p.getId()+" "+p.getName()+" "+p.getQty()+" "+p.getPrice());

            session.update(p);
            session.getTransaction().commit();

        }catch(Exception e){
        System.out.println("upate error-----"+e.getMessage());
        
    }
   
    
    return "redirect:/";
}
}
