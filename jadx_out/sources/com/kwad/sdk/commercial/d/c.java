package com.kwad.sdk.commercial.d;

import com.ksad.json.annotation.KsJson;

@KsJson
/* loaded from: classes4.dex */
public class c extends com.kwad.sdk.commercial.c.a {
    public String aKu;
    public String aKv;

    public static c Is() {
        return new c();
    }

    public final c dy(String str) {
        this.aKu = str;
        return this;
    }

    public final c dz(String str) {
        this.aKv = str;
        return this;
    }
}
