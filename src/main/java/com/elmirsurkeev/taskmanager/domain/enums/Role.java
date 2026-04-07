package com.elmirsurkeev.taskmanager.domain.enums;
/**
 * User roles that define access level in the system.
 * ADMIN  — full access, can manage all projects and users.
 * MEMBER — can create and edit tasks in assigned projects.
 * VIEWER — read-only access.
 */
public enum Role {
    ADMIN,
    MEMBER,
    VIEWER
}
