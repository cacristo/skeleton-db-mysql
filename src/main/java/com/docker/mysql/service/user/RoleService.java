package com.docker.mysql.service.user;

import com.docker.mysql.entity.user.Role;

import java.util.List;

/**
 * Interface to manage {@link Role} object
 */
@FunctionalInterface
public interface RoleService {
    /**
     * List of all roles available.
     *
     * @return {@link List<Role>}
     */
    List<Role> allRoles();
}
