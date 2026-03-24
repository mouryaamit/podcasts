package com.podcasts.dto;

import java.util.List;

public class PaginatedResponse<T> {
    private int total;
    private int page;
    private int perPage;
    private List<T> items;

    public PaginatedResponse() {}

    public PaginatedResponse(int total, int page, int perPage, List<T> items) {
        this.total = total;
        this.page = page;
        this.perPage = perPage;
        this.items = items;
    }

    // Getters and Setters
    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPerPage() {
        return perPage;
    }

    public void setPerPage(int perPage) {
        this.perPage = perPage;
    }

    public List<T> getItems() {
        return items;
    }

    public void setItems(List<T> items) {
        this.items = items;
    }
}