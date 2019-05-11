package com.vladislavZag.TestTaskJavaRush.domain;

import javax.persistence.*;

@Entity
@Table(name="part")
public class Part {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private int amount;
    private boolean requirement;

    public Part() {
    }

    public Part(String name, int amount, boolean requirement) {
        this.name = name;
        this.amount = amount;
        this.requirement = requirement;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public boolean isRequirement() {
        return requirement;
    }

    public void setRequirement(boolean require) {
        this.requirement = require;
    }

}
