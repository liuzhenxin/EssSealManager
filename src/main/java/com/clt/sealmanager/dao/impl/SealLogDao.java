package com.clt.sealmanager.dao.impl;

import com.clt.sealmanager.dao.ISealLogDao;
import com.clt.sealmanager.model.SealLog;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

import static com.clt.sealmanager.base.MyBatisSession.getSqlSession;

public class SealLogDao implements ISealLogDao{
    private SqlSession session;
    private ISealLogDao getSealLogDao(){
        session = getSqlSession();
        return session.getMapper(ISealLogDao.class);

    }
    @Override
    public  List<SealLog> findAllSealLog() {
        List<SealLog> log_list = null;
        try {
            log_list = getSealLogDao().findAllSealLog();
            if (log_list != null){
                return log_list;
            }
        } finally {
            session.close();
        }
        return null;
    }


    @Override
    public List<SealLog> findSealLogByLimit(int start, int limit) {
        List<SealLog> log_list = null;
        try {
            log_list = getSealLogDao().findSealLogByLimit(start,limit);
            if (log_list != null){
                return log_list;
            }
        } finally {
            session.close();
        }
        return null;
    }

    @Override
    public void addSealLog(SealLog log) {
        try {
            getSealLogDao().addSealLog(log);
            session.commit();
        } finally {
            session.close();
        }
    }

    @Override
    public void deleteSealLog(String id) {
        try {
            getSealLogDao().deleteSealLog(id);
            session.commit();
        } finally {
            session.close();
        }
    }
}
