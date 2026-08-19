package com.kwad.sdk.commercial.d;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.model.AdTemplate;

@KsJson
/* loaded from: classes4.dex */
public class b extends com.kwad.sdk.commercial.c.a {
    public String aKs;
    public String aKt;

    public static b Ir() {
        return new b();
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* renamed from: cj, reason: merged with bridge method [inline-methods] */
    public final b setAdTemplate(AdTemplate adTemplate) {
        super.setAdTemplate(adTemplate);
        return this;
    }

    public final b dw(String str) {
        this.aKs = str;
        return this;
    }

    public final b dx(String str) {
        this.aKt = str;
        return this;
    }
}
