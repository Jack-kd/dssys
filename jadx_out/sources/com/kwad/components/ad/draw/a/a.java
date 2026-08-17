package com.kwad.components.ad.draw.a;

import com.ksad.json.annotation.KsJson;

@KsJson
/* loaded from: classes4.dex */
public class a extends com.kwad.sdk.commercial.c.a {
    public int callbackType;
    public String dO;
    public int renderType;

    public static a aR() {
        return new a();
    }

    public final a B(int i2) {
        this.renderType = i2;
        return this;
    }

    public final a C(int i2) {
        this.callbackType = i2;
        return this;
    }
}
