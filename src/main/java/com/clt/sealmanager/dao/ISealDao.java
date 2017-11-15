package com.clt.sealmanager.dao;

import com.clt.sealmanager.model.Seal;

public interface ISealDao {

    Seal findSealByid();

    void addSeal(Seal seal);

    void updateSeal(Seal seal);

    void deleteSeal(String id);
}
