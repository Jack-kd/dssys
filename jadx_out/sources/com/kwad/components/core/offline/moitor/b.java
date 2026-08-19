package com.kwad.components.core.offline.moitor;

import com.ksad.json.annotation.KsJson;

@KsJson
/* loaded from: classes4.dex */
public class b extends com.kwad.sdk.commercial.c.a {
    public String acX;
    public long acY;
    public long acZ;
    public long ada;
    public String adb;

    public final b K(long j2) {
        this.acY = j2;
        return this;
    }

    public final b L(long j2) {
        this.acZ = j2;
        return this;
    }

    public final b aS(String str) {
        this.acX = str;
        return this;
    }

    public final b aT(String str) {
        this.errorMsg = str;
        return this;
    }

    public final b aU(String str) {
        this.adb = str;
        return this;
    }

    public final b bs(int i2) {
        this.ada = i2;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* renamed from: bt, reason: merged with bridge method [inline-methods] */
    public final b setErrorCode(int i2) {
        this.errorCode = i2;
        return this;
    }
}
