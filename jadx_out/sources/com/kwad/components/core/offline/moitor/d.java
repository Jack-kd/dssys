package com.kwad.components.core.offline.moitor;

import com.ksad.json.annotation.KsJson;

@KsJson
/* loaded from: classes4.dex */
public class d extends com.kwad.sdk.commercial.c.a {
    public String acX;
    public long acY;
    public long acZ;
    public String adb;
    public long adc;

    public final d M(long j2) {
        this.acY = j2;
        return this;
    }

    public final d N(long j2) {
        this.acZ = j2;
        return this;
    }

    public final d O(long j2) {
        this.adc = j2;
        return this;
    }

    public final d aV(String str) {
        this.acX = str;
        return this;
    }

    public final d aW(String str) {
        this.errorMsg = str;
        return this;
    }

    public final d aX(String str) {
        this.adb = str;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* renamed from: bu, reason: merged with bridge method [inline-methods] */
    public final d setErrorCode(int i2) {
        this.errorCode = i2;
        return this;
    }
}
