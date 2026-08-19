package com.beizi.fusion.asnp.adn.ad.model.impl.resp.cfg.root.statistics.task;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class TaskUrlModel extends ASNPJsonResponseModel {

    @ng(key = "implement")
    private String implement;

    @ng(key = "delay")
    private long nextTime;

    @ng(key = "randomTime")
    private long randomTime;

    @ng(key = "schedule")
    private int schedule;

    @ng(key = "url")
    private String url;

    public TaskUrlModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public long getDelay() {
        return this.nextTime;
    }

    public String getImplement() {
        return this.implement;
    }

    public long getRandomTime() {
        return this.randomTime;
    }

    public int getSchedule() {
        return this.schedule;
    }

    public String getUrl() {
        return this.url;
    }
}
