package com.vladislavZag.TestTaskJavaRush.service;

import com.vladislavZag.TestTaskJavaRush.Repo.PartRepo;
import com.vladislavZag.TestTaskJavaRush.domain.Part;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;

@Service
public class PartService {

    @Autowired
    private PartRepo partRepo;


    public int computersToAssemble(List<Part> parts){
        int result=Integer.MAX_VALUE;
        boolean flag = true;
        for(Part p :parts){
            if(p.isRequirement()){
                if(result>p.getAmount())result=p.getAmount();
                flag=false;
            }
        }
        if(flag)result=0;
        return result;
    }

    public Page<Part> partList(Pageable pageable, String filter,String ayn){
        System.out.println(ayn);
        if (filter != null && !filter.isEmpty() && filter!="") {
            return partRepo.findByName(filter,pageable);
        } else {
            if(ayn==null)
                return partRepo.findAll(pageable);
            if(ayn.equals("all"))
                return partRepo.findAll(pageable);
            if(ayn.equals("yes"))
                return partRepo.findAllByRequirement(pageable,true);
            if(ayn.equals("no"))
                return partRepo.findAllByRequirement(pageable,false);

            return partRepo.findAll(pageable);
        }
    }
    public boolean addPart(String name,String amount,String req){
        Part part1 = partRepo.findByName(name);
        if(part1!=null){
            return false;
        }

        boolean b = (req!=null);
        int am;
        try {
            am = Integer.parseInt(amount);
            partRepo.save(new Part(name,am,b));
        }catch (Exception e){
            return false;
        }
        return true;
    }
    public Part updatePart(String name,String amount,String req,Part p){
        boolean b = (req!=null);
        int am;
        try {
            am = Integer.parseInt(amount);
            p.setAmount(am);
        }
        catch (Exception e){
        }
        p.setName(name);p.setRequirement(b);
        partRepo.save(p);
        return p;
    }
}
