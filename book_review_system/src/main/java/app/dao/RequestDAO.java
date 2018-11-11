package app.dao;

import java.util.List;

import app.model.Request;

public interface RequestDAO extends BaseDAO<Integer, Request> {
	List<Request> loadRequestsNotHandle();
}
