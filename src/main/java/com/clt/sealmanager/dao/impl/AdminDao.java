package com.clt.sealmanager.dao.impl;

import com.clt.sealmanager.dao.IAdminDao;
import com.clt.sealmanager.model.Admin;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

import static com.clt.sealmanager.base.MyBatisSession.getSqlSession;

public class AdminDao implements IAdminDao {
    private SqlSession session;
    private IAdminDao getAdminDao(){
        session = getSqlSession();
        return session.getMapper(IAdminDao.class);

    }
    @Override
    public Admin findAdminById(String id) {
        Admin adminBack = null;
        try {
            adminBack = getAdminDao().findAdminById(id);
            if (adminBack != null){
                return adminBack;
            }
        } finally {
            session.close();
        }
        return null;
    }
    @Override
    public List<Admin> findAllAdmin() {
        List<Admin> admin_list = null;
        try {
            admin_list = getAdminDao().findAllAdmin();
            if (admin_list != null){
                return admin_list;
            }
        } finally {
            session.close();
        }
        return null;
    }
    @Override
    public void addAdmin(Admin admin) {
        try {
            getAdminDao().addAdmin(admin);
            session.commit();
        } finally {
            session.close();
        }
    }

    @Override
    public void updateAdmin(Admin admin) {

    }
    @Override
    public void deleteAdmin(String id) {

    }
}
