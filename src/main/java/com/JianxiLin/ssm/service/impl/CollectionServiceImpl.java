package com.JianxiLin.ssm.service.impl;

import com.JianxiLin.ssm.dao.CollectionDao;
import com.JianxiLin.ssm.entity.Collectionperson;
import com.JianxiLin.ssm.service.CollectionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CollectionServiceImpl implements CollectionService {

    @Autowired
    private CollectionDao collectionDao;

    @Override
    public List<Collectionperson> getCollectionByUserId(int user_id) {

        List<Collectionperson> collectionperson=collectionDao.selCollectionByUserId(user_id);
        return collectionperson;
    }
}
