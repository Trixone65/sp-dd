package com.repairsystem.dao;

import com.repairsystem.model.InventoryItem;
import java.util.List;

public interface InventoryDAO {
    void addItem(InventoryItem item);
    void transferItem(int itemId, int fromBranchId, int toBranchId, int quantity);
    List<InventoryItem> getAllItems();
}