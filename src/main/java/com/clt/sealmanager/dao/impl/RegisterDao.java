package com.clt.sealmanager.dao.impl;

import com.clt.sealmanager.dao.IRegisterDao;
import com.clt.sealmanager.dao.ISealDao;
import com.clt.sealmanager.model.Register;
import org.apache.ibatis.session.SqlSession;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
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
    public Register findRegisterById(int id) {
        Register register = null;
        try {
            register = getRegisterDao().findRegisterById(id);
            if (register != null){
                return register;
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
            session.commit();
        } finally {
            session.close();
        }
    }

    @Override
    public void deleteRegisterByIID(int id) {
        try {
            getRegisterDao().deleteRegisterByIID(id);
            session.commit();
        } finally {
            session.close();
        }
    }

    @Override
    public String getServerAuth() {
        String sRet = null;
        int iOffset = 0;
        byte[] bAll = new byte[1024*10];

        try {
            sRet = getRegisterDao().getServerAuth();
            if (sRet != null){
                byte[] buff = new byte[1024];
                InputStream in = new ByteArrayInputStream(getRegisterDao().getServerAuth().getBytes());
                while(true)
                {
                    try {
                        int i = in.read(buff);
                        if(i < 0)
                            break;
                        System.arraycopy(buff, 0, bAll, iOffset, i);
                        iOffset += i;
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        } finally {
            session.close();
        }
        byte[] b1 = new byte[iOffset];
        System.arraycopy(bAll, 0, b1, 0, iOffset);
        sRet = new String(b1);
        return sRet;
    }

}
