package com.ranko.domain;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.ranko.json.JsonDateSerializer;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import java.util.List;

@Entity
public class Post {

    @Id
    @GeneratedValue
    private Long id;

    @NotEmpty
    private String title;

    @NotEmpty
    private String slug;

    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat ( pattern="d/MM/yyyy hh:mm:ss a")
    private Date postedOn;

    @Size(min=1, max=2)
    @ElementCollection
    private List<String> keywords;

    private Boolean active;

    @Column(columnDefinition = "TEXT")
    private String teaser;

    @NotEmpty
    @Column(columnDefinition = "TEXT")
    private String body;

    @NotNull
    @ManyToOne
    private Author author;

    public Post(){
        this.postedOn = new Date();
        this.active = true;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Post(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getTeaser() {
        return teaser;
    }

    public void setTeaser(String teaser) {
        this.teaser = teaser;
    }

    public String getSlug() {
        return slug;
    }

    public void setSlug(String slug) {
        this.slug = slug;
    }

    @JsonSerialize(using=JsonDateSerializer.class)
    public Date getPostedOn() {
        return postedOn;
    }

    public void setPostedOn(Date postedOn) {
        this.postedOn = postedOn;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public List<String> getKeywords() {
        return keywords;
    }

    public void setKeywords(List<String> keywords) {
        this.keywords = keywords;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    @Override
    public String toString() {
        return "Post [title=" + title + "]";
    }
}
