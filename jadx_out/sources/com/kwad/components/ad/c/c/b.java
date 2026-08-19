package com.kwad.components.ad.c.c;

import com.ksad.json.annotation.KsJson;

@KsJson
/* loaded from: classes4.dex */
public class b extends com.kwad.sdk.commercial.c.a {
    public int adNum;
    public int cP;
    public long cQ;
    public int cR;
    public long loadTime;
    public int materialType;
    public String materialUrl;
    public long renderTime;
    public int renderType;
    public int status;

    public static b av() {
        return new b();
    }

    public final b A(int i2) {
        this.cR = i2;
        return this;
    }

    public final b e(long j2) {
        this.loadTime = j2;
        return this;
    }

    public final b f(long j2) {
        this.renderTime = j2;
        return this;
    }

    public final b g(long j2) {
        this.cQ = j2;
        return this;
    }

    public final b p(String str) {
        this.materialUrl = str;
        return this;
    }

    public final b v(int i2) {
        this.status = i2;
        return this;
    }

    public final b w(int i2) {
        this.adNum = i2;
        return this;
    }

    public final b x(int i2) {
        this.materialType = i2;
        return this;
    }

    public final b y(int i2) {
        this.renderType = i2;
        return this;
    }

    public final b z(int i2) {
        this.cP = i2;
        return this;
    }
}
