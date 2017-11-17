package com.clt.sealmanager.dao;

import com.clt.sealmanager.model.Register;

import java.util.List;

public interface IRegisterDao {
    List<Register> findAllRegister();

    void deleteRegister(String id);

}
