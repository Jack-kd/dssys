package com.kwad.components.ad.draw.a;

import com.ksad.json.annotation.KsJson;

@KsJson
/* loaded from: classes4.dex */
public class e extends com.kwad.sdk.commercial.c.a {
    public long dP;
    public int materialType;
    public String materialUrl;
    public int status;

    public static e aT() {
        return new e();
    }

    public final e J(int i2) {
        this.status = i2;
        return this;
    }

    public final e K(int i2) {
        this.materialType = i2;
        return this;
    }

    public final e k(long j2) {
        this.dP = j2;
        return this;
    }

    public final e s(String str) {
        this.materialUrl = str;
        return this;
    }
}
