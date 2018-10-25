package app.service;

import java.util.List;

import app.model.Activity;

public interface ActivityService extends BaseService<Integer, Activity>{
	List<Activity> loadActivitiesByUserName(String userName);
}
