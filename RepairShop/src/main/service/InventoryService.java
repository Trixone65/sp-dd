package com.repairsystem.service;

import com.repairsystem.dao.InventoryDAO;
import com.repairsystem.model.InventoryItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class InventoryService {

    @Autowired
    private InventoryDAO inventoryDao;

    public void addItem(InventoryItem item) {
        inventoryDao.addItem(item);
    }

    public void transferItem(int itemId, int fromBranchId, int toBranchId, int quantity) {
        inventoryDao.transferItem(itemId, fromBranchId, toBranchId, quantity);
    }

    public List<InventoryItem> getAllItems() {
        return inventoryDao.getAllItems();
    }
}