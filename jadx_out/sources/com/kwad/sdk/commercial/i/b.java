package com.kwad.sdk.commercial.i;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.model.AdTemplate;

@KsJson
/* loaded from: classes4.dex */
public class b extends com.kwad.sdk.commercial.c.a {
    public String aKA;
    public String aKB;
    public int aKI;
    public int requestType;
    public int status;

    public static b IB() {
        return new b();
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* renamed from: cl, reason: merged with bridge method [inline-methods] */
    public final b setAdTemplate(AdTemplate adTemplate) {
        super.setAdTemplate(adTemplate);
        return this;
    }

    public final b dF(int i2) {
        this.status = i2;
        return this;
    }

    public final b dG(int i2) {
        this.aKI = i2;
        return this;
    }

    public final b dH(int i2) {
        this.requestType = i2;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* renamed from: dI, reason: merged with bridge method [inline-methods] */
    public final b setErrorCode(int i2) {
        super.setErrorCode(i2);
        return this;
    }

    public final b dL(String str) {
        this.aKA = str;
        return this;
    }

    public final b dM(String str) {
        this.aKB = str;
        return this;
    }

    @Override // com.kwad.sdk.commercial.c.a
    /* renamed from: dN, reason: merged with bridge method [inline-methods] */
    public final b setErrorMsg(String str) {
        super.setErrorMsg(str);
        return this;
    }
}
