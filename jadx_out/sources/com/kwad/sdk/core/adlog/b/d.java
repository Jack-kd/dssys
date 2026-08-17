package com.kwad.sdk.core.adlog.b;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.model.AdTemplate;

@KsJson
/* loaded from: classes4.dex */
public class d extends com.kwad.sdk.commercial.c.a {
    public String aKB;
    public int aKI;
    public int aMd;
    public int retryCount;
    public int status;

    public static d Je() {
        return new d();
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* renamed from: cE, reason: merged with bridge method [inline-methods] */
    public final d setAdTemplate(AdTemplate adTemplate) {
        super.setAdTemplate(adTemplate);
        return this;
    }

    public final d dQ(int i2) {
        this.status = i2;
        return this;
    }

    public final d dR(int i2) {
        this.aKI = i2;
        return this;
    }

    public final d dS(int i2) {
        this.aMd = 1;
        return this;
    }

    public final d dT(int i2) {
        this.retryCount = i2;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* renamed from: dU, reason: merged with bridge method [inline-methods] */
    public final d setErrorCode(int i2) {
        super.setErrorCode(i2);
        return this;
    }

    public final d dZ(String str) {
        this.aKB = str;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* renamed from: ea, reason: merged with bridge method [inline-methods] */
    public final d setErrorMsg(String str) {
        super.setErrorMsg(str);
        return this;
    }
}
