package app.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import app.dto.RequestInfo;
import app.model.Category;
import app.model.Request;
import app.model.User;
import app.service.RequestService;

public class RequestServiceImpl extends BaseServiceImpl implements RequestService {
	private static final Logger logger = Logger.getLogger(RequestServiceImpl.class);

	@Override
	public RequestInfo findById(Serializable key, boolean lock) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public RequestInfo saveOrUpdate(RequestInfo entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(RequestInfo entity) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public RequestInfo saveRequest(RequestInfo requestInfo, int idUser,int idCategory) {
		try {
			User user = userDAO.findById(idUser);
			Category category = categoryDAO.findById(idCategory);
			Request request = new Request(new Date(), requestInfo.getBookTittle(), requestInfo.getBookAuthor(), user,
					category);
			return ConvertModelToBean.mapRequestToRequestInfo(requestDAO.saveOrUpdate(request));
		} catch (Exception e) {
			logger.info(e);
			throw e;
		}

	}

	@Override
	public List<RequestInfo> loadRequestsNotHandled() {
		try {
			List<RequestInfo> requestInfos = new ArrayList<>();
			List<Request> requests = requestDAO.loadRequestsNotHandle();
			for (Request request : requests) {
				requestInfos.add(ConvertModelToBean.mapRequestToRequestInfo(requestDAO.saveOrUpdate(request)));
			}
			return requestInfos;
		} catch (Exception e) {
			logger.error(e);
			return Collections.emptyList();
		}
	}

}
