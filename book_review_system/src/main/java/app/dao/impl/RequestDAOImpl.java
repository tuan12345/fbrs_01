package app.dao.impl;

import org.hibernate.SessionFactory;
import app.dao.GenericDAO;
import app.dao.RequestDAO;
import app.model.Request;

public class RequestDAOImpl extends GenericDAO<Integer, Request> implements RequestDAO {

	public RequestDAOImpl() {
		super(Request.class);
	}

	public RequestDAOImpl(SessionFactory sessionFactory) {
		setSessionFactory(sessionFactory);
	}

}
