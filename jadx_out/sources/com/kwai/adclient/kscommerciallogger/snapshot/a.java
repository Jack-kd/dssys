package com.kwai.adclient.kscommerciallogger.snapshot;

import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class a extends c {
    public a(String str) {
        super(str, 0);
    }

    @Override // com.kwai.adclient.kscommerciallogger.snapshot.c
    public final synchronized d iM(String str) {
        return new b("empty");
    }

    @Override // com.kwai.adclient.kscommerciallogger.snapshot.c
    public final JSONObject iN(String str) {
        return new JSONObject();
    }
}
