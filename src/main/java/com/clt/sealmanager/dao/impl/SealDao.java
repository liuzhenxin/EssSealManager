package com.clt.sealmanager.dao.impl;

import com.clt.sealmanager.dao.ISealDao;
import com.clt.sealmanager.model.Seal;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

import static com.clt.sealmanager.base.MyBatisSession.getSqlSession;

public class SealDao implements ISealDao {
    private SqlSession session;
    private ISealDao getSealDao(){
        session = getSqlSession();
        return session.getMapper(ISealDao.class);

    }
    @Override
    public Seal findSealByid(String sealId) {
        Seal seal = null;
        try {
            seal = getSealDao().findSealByid(sealId);
        } finally {
            session.close();
        }
        return seal;
    }

    @Override
    public List<Seal> findSealByName(String sealName) {
        List<Seal> seals = null;
        try {
            seals = getSealDao().findSealByName("%"+sealName+"%");
        } finally {
            session.close();
        }
        return seals;
    }

    @Override
    public List<Seal> findAllSeal() {
        List<Seal> seals = null;
        try {
            seals = getSealDao().findAllSeal();
        } finally {
            session.close();
        }
        return seals;
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
    public void deleteSeal(String sealId) {

    }
}
