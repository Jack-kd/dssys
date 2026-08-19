package com.kwad.components.ad.c.c;

import com.ksad.json.annotation.KsJson;

@KsJson
/* loaded from: classes4.dex */
public class a extends com.kwad.sdk.commercial.c.a {
    public int cO;
    public int cP;
    public int renderType;

    public static a au() {
        return new a();
    }

    public final a s(int i2) {
        this.cO = i2;
        return this;
    }

    public final a t(int i2) {
        this.renderType = i2;
        return this;
    }

    public final a u(int i2) {
        this.cP = i2;
        return this;
    }
}
