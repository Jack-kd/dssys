package com.kwad.components.core.innerEc.local;

import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class CancelInfo implements Serializable {
    private static final long serialVersionUID = 5254923412032296398L;
    private volatile int cancelCount;
    private volatile long lastCancelTsMs;

    public synchronized void checkAndAdd() {
        if (System.currentTimeMillis() / 86400000 == this.lastCancelTsMs / 86400000) {
            this.cancelCount++;
        } else {
            this.cancelCount = 1;
            this.lastCancelTsMs = System.currentTimeMillis();
        }
    }

    public int getCancelCount() {
        return this.cancelCount;
    }

    public long getLastCancelTsMs() {
        return this.lastCancelTsMs;
    }

    public void parseJson(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            this.cancelCount = jSONObject.optInt("cancelCount", 0);
            this.lastCancelTsMs = jSONObject.optLong("lastCancelTsMs", 0L);
        } catch (Exception unused) {
            this.cancelCount = 0;
            this.lastCancelTsMs = 0L;
        }
    }

    public void reset() {
        this.lastCancelTsMs = 0L;
        this.cancelCount = 0;
    }

    public void setCancelCount(int i2) {
        this.cancelCount = i2;
    }

    public void setLastCancelTsMs(long j2) {
        this.lastCancelTsMs = j2;
    }

    public JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cancelCount", this.cancelCount);
            jSONObject.put("lastCancelTsMs", this.lastCancelTsMs);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
