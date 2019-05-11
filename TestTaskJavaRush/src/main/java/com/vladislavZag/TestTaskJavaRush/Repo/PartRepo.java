package com.vladislavZag.TestTaskJavaRush.Repo;

import com.vladislavZag.TestTaskJavaRush.domain.Part;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

public interface PartRepo extends JpaRepository<Part,Long> {
    Page<Part> findAll(Pageable pageable);
    Page<Part> findAllByRequirement(Pageable pageable,boolean req);
    Page<Part> findByName(String name,Pageable pageable);
    Part findByName(String name);
}
