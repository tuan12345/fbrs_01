package app.service.impl;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

import org.apache.log4j.Logger;

import app.model.Activity;
import app.service.ActivityService;

public class ActivityServiceImpl extends BaseServiceImpl implements ActivityService {

	private static final Logger logger = Logger.getLogger(ActivityServiceImpl.class);

	@Override
	public Activity findById(Serializable key, boolean lock) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Activity saveOrUpdate(Activity entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(Activity entity) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Activity> loadActivitiesByUserName(String userName) {
		try {
			return activityDAO.loadActivitiesByUserName(userName);
		} catch (Exception e) {
			logger.error(e);
			return null;
		}
	}

}
