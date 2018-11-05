package app.service;

import app.dto.RequestInfo;

public interface RequestService extends BaseService<Integer, RequestInfo> {
	RequestInfo saveRequest(RequestInfo requestInfo,int idUser,int idCategory);

}
