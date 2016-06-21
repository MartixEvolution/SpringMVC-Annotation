package com.taobao.serviceImpl;

import com.taobao.service.PersonService;

/**
 * Created by xiangyang.laixiang on 2016/6/17.
 */
public class PersonServiceImpl implements PersonService {
    @Override
    public String doSomething(String content) {
        return "hello"+content;
    }
}
