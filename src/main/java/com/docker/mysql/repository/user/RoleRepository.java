package com.docker.mysql.repository.user;

import com.docker.mysql.entity.user.Role;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Repository use only for the entity {@link Role}
 */
public interface RoleRepository extends JpaRepository<Role, String> {
}
