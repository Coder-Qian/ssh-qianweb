package com.qian.services;

import com.qian.domain.MsgUser;
import com.qian.domain.Register;

public interface RegistService {
	
	public boolean registWebUser(Register register);

	public int saveMsgUser(MsgUser msgUser);
}
