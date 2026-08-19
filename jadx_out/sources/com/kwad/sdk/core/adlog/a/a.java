package com.kwad.sdk.core.adlog.a;

import androidx.annotation.NonNull;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class a {
    public JSONObject aLM;
    public com.kwad.sdk.core.adlog.c.a aLN;
    public long aLO;
    public int aLP;
    public String aLQ;
    public int retryCount;
    public String url;

    public static a IU() {
        return new a();
    }

    public final a ay(long j2) {
        this.aLO = j2;
        return this;
    }

    public final a c(com.kwad.sdk.core.adlog.c.a aVar) {
        this.aLN = aVar;
        return this;
    }

    public final a dJ(int i2) {
        this.aLP = i2;
        return this;
    }

    public final a dW(String str) {
        this.url = str;
        return this;
    }

    public final a dX(String str) {
        this.aLQ = str;
        return this;
    }

    public final a j(JSONObject jSONObject) {
        this.aLM = jSONObject;
        return this;
    }

    @NonNull
    public final String toString() {
        return "AdLogCache {actionType=" + this.aLN.aKI + ", retryCount=" + this.retryCount + ", retryErrorCode=" + this.aLP + ", retryErrorMsg=" + this.aLQ + '}';
    }
}
