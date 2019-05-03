package com.nagarro.restbackApi.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nagarro.restbackApi.Models.Batch;
import com.nagarro.restbackApi.repository.BatchRepository;

@Service
public class BatchService {

	@Autowired
	private BatchRepository batchRepository;

	
	/**
	 * @returns list of batches 
	 */
	public List<Batch> getAllBatches() {
		// TODO Auto-generated method stub
		return batchRepository.findAll();
	}
	
	
	/**
	 * adds new batch to database
	 */
	public void addBatch(Batch batch) {
		// TODO Auto-generated method stub
		if (batch.getBatchId().equals("") || batch.getBatchId() == null) {
			batch.setBatchId(batch.generateBatchId());
		}
		batchRepository.save(batch);

	}

	/**
	 *updates batch details for the batch id
	 */
	public void updateBatch(String id, Batch newBatch) {
		// TODO Auto-generated method stub
		System.out.println("in update batch");
		Batch old = batchRepository.getOne(id);
		if (old != null) {
			if (newBatch.getTechnology() == "") {
				old.setTechnology(old.getTechnology());
			}
			if (newBatch.getYear() == "") {
				old.setYear(old.getYear());
			}
			if (newBatch.getBatchDescription() == "") {
				old.setBatchDescription(old.getBatchDescription());

			}
			batchRepository.save(old);
		} else {
			System.out.println("Error ");
		}

	}
	
	
	/**
	 deletes batch by batch id
	 */
	public void deleteBatch(String id) {
		// TODO Auto-generated method stub
		Batch old = batchRepository.getOne(id);
		System.out.println();
		batchRepository.delete(old);
	}
	
	/**
	 * @returns batch by id
	 */
	public Batch getBatchById(String id) {
		// TODO Auto-generated method stub
		return batchRepository.findById(id).get();
	}

}
