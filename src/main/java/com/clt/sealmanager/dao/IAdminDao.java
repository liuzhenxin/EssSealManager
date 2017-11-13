package com.clt.sealmanager.dao;
import com.clt.sealmanager.model.Admin;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;
/**
 * @author cxk
 */
public interface IAdminDao {
//    @Select("select * from admins where userid= #{id}")
    Admin findAdminById(String id);
//
//    @Select("select * from admins")
//    List<Admin> findAllAdmin();
//
//    @Insert("insert into admins(userid,username,userpwd,userstatus}) values(#{userId},#{userName},#{userPwd},#{userStatus})")
    public void addAdmin(Admin admin);
}