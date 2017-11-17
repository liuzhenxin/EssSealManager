package com.clt.sealmanager.dao.impl;

import com.clt.sealmanager.dao.IRegisterDao;
import com.clt.sealmanager.dao.ISealDao;
import com.clt.sealmanager.model.Register;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

import static com.clt.sealmanager.base.MyBatisSession.getSqlSession;

public class RegisterDao implements IRegisterDao {
    private SqlSession session;
    private IRegisterDao getRegisterDao(){
        session = getSqlSession();
        return session.getMapper(IRegisterDao.class);

    }
    @Override
    public List<Register> findAllRegister() {
        List<Register> register_list = null;
        try {
            register_list = getRegisterDao().findAllRegister();
            if (register_list != null){
                return register_list;
            }
        } finally {
            session.close();
        }
        return null;
    }

    @Override
    public void deleteRegister(String id) {
        try {
            getRegisterDao().deleteRegister(id);
        } finally {
            session.close();
        }
    }
}
