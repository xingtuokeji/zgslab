package com.simtop.service;

import com.simtop.common.ServerResponse;

import java.util.List;

public interface CourseService {
    ServerResponse<String> add(Course course);

    ServerResponse<String> deleteById(Integer id);

    ServerResponse<String> update(Course course);

    ServerResponse<Course> findById(Integer id);

    ServerResponse<List<Course>> findAll();

}
