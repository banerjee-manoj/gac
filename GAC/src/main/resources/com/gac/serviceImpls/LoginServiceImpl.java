package com.gac.serviceImpls;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gac.dao.LoginDao;
import com.gac.services.LoginService;

@Service("loginService")
public class LoginServiceImpl implements LoginService {
	
	/* @Autowired
	 private LoginDao loginDAO;
*/
	  /* public void setLoginDAO(LoginDao loginDAO) {
              this.loginDAO = loginDAO;
       }
      */
       public boolean checkLogin(String userName, String userPassword){
        return true;}

}