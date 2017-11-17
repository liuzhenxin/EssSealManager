package com.clt.sealmanager.dao;

import com.clt.sealmanager.model.Seal;

import java.util.List;

public interface ISealDao {

    Seal findSealByid(String sealId);

    List<Seal> findSealByName(String sealName);

    List<Seal> findAllSeal();

    void addSeal(Seal seal);

    void updateSeal(Seal seal);

    void deleteSeal(String sealId);
}
