package com.example;

import org.apache.commons.lang3.SerializationUtils;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TestPauseTime {
    public static final int ITERATION_COUNT = 15;
    public static final int EVENT_COUNT_PER_ITERATION = 10000000;

    public static void main(String[] args) throws IOException {
        System.out.println("Start" + new Date());
        try (OutputStream outputStream = ObjectOutputStream.nullOutputStream()) {
            for (int i = 0; i < ITERATION_COUNT; i++) {
                List<Event> currentBatch = testCreateList();
                batchHandle(currentBatch);
                batchWrite(outputStream, currentBatch);

            }
        }
        System.out.println("End" + new Date());
    }

    private static void batchWrite(OutputStream outputStream, List<Event> currentBatch) throws IOException {
        for (Event e : currentBatch) {
            outputStream.write(SerializationUtils.serialize(e));
        }
    }

    private static void batchHandle(List<Event> currentBatch) {
        EventHandler eventHandler = new EventHandler();
        for (Event e : currentBatch) {
            eventHandler.process(e);
        }
    }

    static List<Event> testCreateList() {
        List<Event> list = new ArrayList<>();
        for (int i = 0; i < EVENT_COUNT_PER_ITERATION; i++) {
            list.add(new Event("ABCDEFGHIJILMNOPQRSTUVWXYZABCDEFGHIJILMNOPQRSTUVWXYZABCDEFGHIJILMNOPQRSTUVWXYZ" + i, i));
        }
        return list;
    }
}

class EventHandler {
    public void process(Event event) {
        event.updateValue();
    }
}

class Event implements Serializable {

    private String id;
    private Integer value;

    public Event(String id, Integer value) {
        this.id = id;
        this.value = value;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getValue() {
        return value;
    }

    public void setValue(Integer value) {
        this.value = value;
    }

    public void updateValue() {
        value = value * 2 / 10;
    }
}