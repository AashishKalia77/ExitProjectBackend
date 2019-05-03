package com.nagarro.restbackApi.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nagarro.restbackApi.Models.Activity;
import com.nagarro.restbackApi.repository.ActivityRepository;

@Service
public class ActivityService {

	@Autowired
	private ActivityRepository activityRepository;

	
	/**
	 * @return list of all activities
	 */
	public List<Activity> getAllActivities() {
		// TODO Auto-generated method stub
		return	 activityRepository.findAll();
	}
	
	

	/**
	 * @return activity by id
	 */
	public Activity getActivityById(String id) {
		// TODO Auto-generated method stub
		return activityRepository.findById(id).get();
	}

	
	/**
	 * Adds an Activity to Activity Table
	 */
	public void addActivity(Activity activity) {
		// TODO Auto-generated method stub
		if ( activity.getActivityId()== null || activity.getActivityId().equals("")) {
			activity.setActivityId(activity.generateActivityId());
		}
		activityRepository.save(activity);
		
	}
	
	
	/**
	 *Updates activity in database
	 */
	public void updateActivity(String id, Activity newActivity) {
		// TODO Auto-generated method stub
		System.out.println("in update Activity service");
		Activity old=activityRepository.getOne(id);
		if(old!=null) 
		{
			if(newActivity.getDescription()=="") {
				old.setDescription(old.getDescription());
			}
			if(newActivity.getMaxAttempts()==0) {
				old.setMaxAttempts(old.getMaxAttempts());
			}
			if(old.getQualifyPoints()==0) {
				old.setQualifyPoints(old.getQualifyPoints());
			}
			if(old.getName()=="") {
				old.setName(old.getName());
			}
			activityRepository.save(old);
			
		}
		else {
			System.out.println("Error ");
		}
	}
	
	
	/**
	 * deletes activity 
	 */
	public void deleteActivity(String id) {
		// TODO Auto-generated method stub
		Activity old=activityRepository.getOne(id);
		System.out.println();
		activityRepository.delete(old);
	}
}
