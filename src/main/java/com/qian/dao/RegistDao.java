package com.qian.dao;

import com.qian.domain.MsgUser;
import com.qian.domain.Register;

public interface RegistDao {

	public boolean addWebUser(Register register);

	public int addMsgUser(MsgUser msgUser);
}
