package com.kwad.components.core.webview.tachikoma.c;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.response.model.AdMatrixInfo;

@KsJson
/* loaded from: classes4.dex */
public class i extends com.kwad.sdk.core.response.a.a {
    public int aun;
    public String auo;
    public int convertType;
    public AdMatrixInfo.AdInteractionInfo interactionInfo;

    public i() {
    }

    public i(int i2, String str) {
        this.convertType = i2;
        this.auo = str;
    }
}
