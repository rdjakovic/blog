package com.ranko.repository;


import com.ranko.domain.Author;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface AuthorRepository extends CrudRepository<Author, Long> {

    List<Author> findAllByOrderByLastNameAscFirstNameAsc();

}
