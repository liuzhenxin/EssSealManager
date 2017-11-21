package com.clt.sealmanager.dao;

import com.clt.sealmanager.model.SealLog;

import java.util.List;

public interface ISealLogDao {

    List<SealLog> findAllSealLog();

    List<SealLog> findSealLogByLimit(int start,int limit);

    int getLogCount();

    void addSealLog(SealLog log);

    void deleteSealLog(String id);
}
