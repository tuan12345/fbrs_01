package app.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.log4j.Logger;

import app.dto.ActivityInfo;
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
	public List<ActivityInfo> loadActivitiesByUserName(String userName) {
		try {
			List<ActivityInfo> activityInfos = new ArrayList<>();
			List<Activity> activities = activityDAO.loadActivitiesByUserName(userName);
			for (Activity activity : activities) {
				activityInfos.add(new ActivityInfo(activity.getId(), activity.getObjectId(), activity.getType(),
						activity.getNote(), activity.getCreatedAt(), activity.getUser()));
			}
			return activityInfos;
		} catch (Exception e) {
			logger.error(e);
			return Collections.emptyList();
		}
	}

	@Override
	public List<ActivityInfo> loadActivitiesFollowedByUserId(int user_id) {
		try {
			List<ActivityInfo> activityInfos = new ArrayList<>();
			List<Activity> activities = activityDAO.loadActivitiesFollowedByUserId(user_id);
			for (Activity activity : activities) {
				activityInfos.add(new ActivityInfo(activity.getId(), activity.getObjectId(), activity.getType(),
						activity.getNote(), activity.getCreatedAt(), activity.getUser()));
			}
			return activityInfos;
		} catch (Exception e) {
			logger.error(e);
			return Collections.emptyList();
		}
	}

}
