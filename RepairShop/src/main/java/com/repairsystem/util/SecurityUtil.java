package com.repairsystem.util;

import com.repairsystem.model.User;

public class SecurityUtil {
    public static class AccessDeniedException extends RuntimeException {
        public AccessDeniedException(String message) {
            super(message);
        }
    }

    public static boolean hasAccess(User user, String requiredRole) {
        if (user == null || user.getRole() == null) return false;
        return user.getRole().equalsIgnoreCase(requiredRole);
    }
}