package com.hk.poom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hk.poom.dto.RehomeAddDTO;
import com.hk.poom.dto.RehomeUpdateDTO;
import com.hk.poom.service.RehomeService;

@Controller
public class RehomeController {
   
   @Autowired
   RehomeService RehomeService;
   
   @GetMapping("/poom/rehome/list")
   public String rehomeList(Model model ) {
      model.addAttribute("rehomeList",RehomeService.rehomeList());
      
      return "rehome/rehomeList";
   }
   
   @GetMapping("/poom/rehome/add")
   public String rehomeAdd(Model model ) {
      
      
      return "rehome/rehomeAdd";
   }
   
   
   @PostMapping("/poom/rehome/add")
   public String rehomeAddPost(Model model, RehomeAddDTO rehomeadddto ) {
      
      
      RehomeService.rehomeAdd(rehomeadddto);
      
      model.addAttribute("rehomeadd",rehomeadddto);
            
      return "rehome/rehomeAddPost";
   }
   
   @GetMapping("/poom/rehome/update")
   public String rehomeUpdate(@RequestParam("bno") int bno, Model model) {
      model.addAttribute("rehomeUpdate",RehomeService.rehomeGetOne(bno));
      return "rehome/rehomeUpdate";
   }
   
   
   @PostMapping("/poom/rehome/update")
   public String rehomeUpdate(Model model, RehomeUpdateDTO rehomeUpdateDTO) {
	   model.addAttribute("rehomeUpdate",RehomeService.rehomeUpdate(rehomeUpdateDTO));
      
      return "rehome/rehomeUpdatePost";
   }
   
   @GetMapping("/poom/rehome/delete")
   public String rehomeDelete( ) {
      
      
      return "rehome/rehomeDelete";
   }
   
   
   @PostMapping("/poom/rehome/delete")
   public String rehomeDeletePost( ) {
      
      
      return "rehome/rehomeList";
   }

}