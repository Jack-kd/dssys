package com.kwad.sdk.core.request.model;

import com.ksad.json.annotation.KsJson;

@KsJson
/* loaded from: classes4.dex */
public class f extends com.kwad.sdk.core.response.a.a implements com.kwad.sdk.core.b {
    public long aXx;
    public int adStyle;
    public int count;
    public int taskType;

    public f() {
    }

    public final void aL(long j2) {
        this.aXx = j2;
    }

    public f(int i2, int i3, int i4, long j2) {
        this.adStyle = i2;
        this.taskType = i3;
        this.count = 1;
        this.aXx = j2;
    }
}
