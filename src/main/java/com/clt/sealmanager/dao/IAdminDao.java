package com.clt.sealmanager.dao;
import com.clt.sealmanager.model.Admin;

import java.util.List;
/**
 * @author cxk
 */
public interface IAdminDao {

    Admin findAdminById(String id);

    List<Admin> findAllAdmin();

    void addAdmin(Admin admin);

    void updateAdmin(Admin admin);

    void deleteAdmin(String id);

}