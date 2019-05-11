package com.vladislavZag.TestTaskJavaRush.controller;

import com.vladislavZag.TestTaskJavaRush.Repo.PartRepo;
import com.vladislavZag.TestTaskJavaRush.domain.Part;
import com.vladislavZag.TestTaskJavaRush.service.PartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class MainController {


    @Autowired
    private PartRepo partRepo;
    @Autowired
    private PartService partService;

    @GetMapping("/")
    public String showParts(
            @RequestParam(required = false, defaultValue = "") String filter,
            @RequestParam(value = "exampleRadios", required = false,defaultValue = "all") String mf,
            @PageableDefault(sort={"id"},direction = Sort.Direction.DESC) Pageable pageable,
            Model model){
        Page<Part> page = partService.partList(pageable,filter,mf);
        model.addAttribute("filter", filter);
        model.addAttribute("url", "/");
        model.addAttribute("page",page);
        model.addAttribute("comps",partService.computersToAssemble(partRepo.findAll()));
        model.addAttribute("radio",mf);
        return "main";
    }
    @PostMapping(params={"id"})
    public String deletePart(
            @RequestParam Long id,
            @RequestParam(required = false, defaultValue = "") String filter,
            @RequestParam(value = "exampleRadios", required = false,defaultValue = "all") String mf,
            @PageableDefault(sort={"id"},direction = Sort.Direction.DESC) Pageable pageable,
            Model model
    ){
        partRepo.deleteById(id);
        Page<Part> page = partService.partList(pageable,filter,mf);
        model.addAttribute("filter", filter);
        model.addAttribute("url", "/");
        model.addAttribute("page",page);
        model.addAttribute("comps",partService.computersToAssemble(partRepo.findAll()));
        model.addAttribute("radio",mf);
        return "main";
    }

    @PostMapping(params={"name","amount"})
    public String addPart(
            @RequestParam String name,
            @RequestParam String amount,
            @RequestParam(value = "isReq",required = false) String isReq,
            @RequestParam(required = false, defaultValue = "") String filter,
            @RequestParam(value = "exampleRadios", required = false,defaultValue = "all") String mf,
            @PageableDefault(sort={"id"},direction = Sort.Direction.DESC) Pageable pageable,

            Model model
    ){
        System.out.println(isReq);
        System.out.println(partService.addPart(name,amount,isReq));
        Page<Part> page = partService.partList(pageable,filter,mf);
        model.addAttribute("filter", filter);
        model.addAttribute("url", "/");
        model.addAttribute("page",page);
        model.addAttribute("comps",partService.computersToAssemble(partRepo.findAll()));
        model.addAttribute("radio",mf);
        return "main";
    }
    @GetMapping("/{part}")
    public String edit(
            @PathVariable Part part,
            Model model
    ){
        model.addAttribute("part",part);
        return  "editor";
    }

    @PostMapping("/{part}")
    public String save(
            @PathVariable Part part,
            @RequestParam String name,
            @RequestParam String amount,
            @RequestParam(value = "isReq",required = false) String isReq,
            Model model
    ){
        part = partService.updatePart(name,amount,isReq,part);
        model.addAttribute("part",part);
        return  "redirect:/";
    }
}
