package com.qian.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.qian.dao.RegistDao;
import com.qian.domain.MsgUser;
import com.qian.domain.Register;
import com.qian.services.RegistService;

@Service("registService")
public class RegistServiceImpl implements RegistService {

	@Autowired
	@Qualifier("registDao")
	private RegistDao registDao;
	@Override
	public boolean registWebUser(Register register) {
		// TODO Auto-generated method stub
		return registDao.addWebUser(register);
	}
	@Override
	public int saveMsgUser(MsgUser msgUser) {
		// TODO Auto-generated method stub
		return registDao.addMsgUser(msgUser);
	}

}
