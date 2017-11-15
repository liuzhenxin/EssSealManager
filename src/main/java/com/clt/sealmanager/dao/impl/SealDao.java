package com.clt.sealmanager.dao.impl;

import com.clt.sealmanager.dao.ISealDao;
import com.clt.sealmanager.model.Seal;
import org.apache.ibatis.session.SqlSession;

import static com.clt.sealmanager.base.MyBatisSession.getSqlSession;

public class SealDao implements ISealDao {
    private SqlSession session;
    private ISealDao getSealDao(){
        session = getSqlSession();
        return session.getMapper(ISealDao.class);

    }

    @Override
    public Seal findSealByid() {
        return null;
    }

    @Override
    public void addSeal(Seal seal) {
        try {
            seal.setStatus("1");
            getSealDao().addSeal(seal);
            session.commit();
        } finally {
            session.close();
        }
    }

    @Override
    public void updateSeal(Seal seal) {

    }

    @Override
    public void deleteSeal(String id) {

    }
}
