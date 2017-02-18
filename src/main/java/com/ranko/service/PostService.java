package com.ranko.service;

import com.ranko.domain.Post;
import com.ranko.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostService {

    private PostRepository postRepository;

    @Autowired
    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public List<Post> getList() {
        return postRepository.findAllByOrderByPostedOnDesc();
    }

    public Post getLatestPost(){
        return postRepository.findFirstByOrderByPostedOnDesc();
    }

    public Post getBySlug(String slug) {
        return postRepository.findBySlug(slug);
    }

    public List<Post> listByAuthor(Long id) {
        return postRepository.findAllByAuthorIdOrderByPostedOnDesc(id);
    }

    public Post get(Long id) {
        return postRepository.findOne(id);
    }

    public Post save(Post post) {
        return postRepository.save(post);
    }

    public void delete(Long id) {
        postRepository.delete(id);
    }

}
