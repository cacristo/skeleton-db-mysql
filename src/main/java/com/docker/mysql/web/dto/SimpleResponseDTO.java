package com.docker.mysql.web.dto;

import java.io.Serializable;

/**
 * Object used to manage generic API response
 */
public class SimpleResponseDTO implements Serializable {
    private static final long serialVersionUID = 7366033961686097068L;
    private int status;
    private String message;

    public SimpleResponseDTO() {
        /* empty constructor */
    }

    public SimpleResponseDTO(int status, String message) {
        this.status = status;
        this.message = message;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}