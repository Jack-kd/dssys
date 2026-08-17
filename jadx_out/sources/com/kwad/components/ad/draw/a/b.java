package com.kwad.components.ad.draw.a;

import com.ksad.json.annotation.KsJson;

@KsJson
/* loaded from: classes4.dex */
public class b extends com.kwad.sdk.commercial.c.a {
    public int adNum;
    public int adStyle;
    public int cP;
    public long cQ;
    public long loadTime;
    public int materialType;
    public String materialUrl;
    public String methodName;
    public long renderTime;
    public int renderType;
    public int status;

    public static b aS() {
        return new b();
    }

    public final b D(int i2) {
        this.status = i2;
        return this;
    }

    public final b E(int i2) {
        this.adNum = i2;
        return this;
    }

    public final b F(int i2) {
        this.materialType = i2;
        return this;
    }

    public final b G(int i2) {
        this.renderType = i2;
        return this;
    }

    public final b H(int i2) {
        this.cP = i2;
        return this;
    }

    public final b I(int i2) {
        this.adStyle = i2;
        return this;
    }

    public final b h(long j2) {
        this.loadTime = j2;
        return this;
    }

    public final b i(long j2) {
        this.renderTime = j2;
        return this;
    }

    public final b j(long j2) {
        this.cQ = j2;
        return this;
    }

    public final b q(String str) {
        this.methodName = str;
        return this;
    }

    public final b r(String str) {
        this.materialUrl = str;
        return this;
    }
}
