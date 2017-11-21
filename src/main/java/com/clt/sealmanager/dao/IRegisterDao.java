package com.clt.sealmanager.dao;

import com.clt.sealmanager.model.Register;

import java.util.List;

public interface IRegisterDao {
    List<Register> findAllRegister();
    Register findRegisterById(int id);
    void deleteRegister(String id);
    void deleteRegisterByIID(int id);
    String getServerAuth();

}
