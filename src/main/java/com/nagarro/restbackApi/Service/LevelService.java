package com.nagarro.restbackApi.Service;

import java.util.List;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nagarro.restbackApi.Models.Level;
import com.nagarro.restbackApi.repository.LevelRepository;

@Service
public class LevelService {

	@Autowired
	private LevelRepository levelRepository;
	Logger logger = Logger.getLogger(LevelService.class.getName());

	/**
	 * @returns list of all levels
	 */
	public List<Level> getAllLevels() {
		return levelRepository.findAll();
	}

	/**
	 * adds new level to database
	 */
	public void addLevel(Level level) {
		logger.info("reached in service");
		if (level.getLevelId() == null || level.getLevelId().equals("")) {
			level.setLevelId(level.generateLevelId());
		}
		levelRepository.save(level);

	}

	/**
	 * updates level details by level id
	 */
	public void updateLevel(String id, Level newLevel) {
		Level old = levelRepository.getOne(id);
		if (old != null) {
			if (old.getLevelName() == "") {
				old.setLevelName(newLevel.getLevelName());
			}

			if (old.getLevelDesc() == "") {
				old.setLevelDesc(newLevel.getLevelName());
			}

			if (old.getQualifyPoints() == 0) {
				old.setQualifyPoints(newLevel.getQualifyPoints());
			}
			levelRepository.save(old);
		} else {
			System.out.println("Error ");
		}

	}

	/**
	 * deletes level by batch id
	 */
	public void deleteLevel(String id) {
		// TODO Auto-generated method stub
		Level old = levelRepository.getOne(id);
		levelRepository.delete(old);
	}

	/**
	 * fetches level by id
	 */
	public Level getLevelById(String id) {
		return levelRepository.findById(id).get();
	}

}
