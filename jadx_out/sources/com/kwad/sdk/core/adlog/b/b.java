package com.kwad.sdk.core.adlog.b;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.model.AdTemplate;

@KsJson
/* loaded from: classes4.dex */
public class b extends com.kwad.sdk.commercial.c.a {
    public int aKI;
    public int aLP;
    public String aLQ;
    public boolean aLZ;
    public int aMa;
    public int aMb;
    public long aMc;
    public int retryCount;
    public int status;

    public static b Jd() {
        return new b();
    }

    public final b az(long j2) {
        this.aMc = j2;
        return this;
    }

    public final b bE(boolean z2) {
        this.aLZ = z2;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* renamed from: cD, reason: merged with bridge method [inline-methods] */
    public final b setAdTemplate(AdTemplate adTemplate) {
        super.setAdTemplate(adTemplate);
        return this;
    }

    public final b dK(int i2) {
        this.status = i2;
        return this;
    }

    public final b dL(int i2) {
        this.aKI = i2;
        return this;
    }

    public final b dM(int i2) {
        this.retryCount = i2;
        return this;
    }

    public final b dN(int i2) {
        this.aLP = i2;
        return this;
    }

    public final b dO(int i2) {
        this.aMa = i2;
        return this;
    }

    public final b dP(int i2) {
        this.aMb = i2;
        return this;
    }

    public final b dY(String str) {
        this.aLQ = str;
        return this;
    }
}
