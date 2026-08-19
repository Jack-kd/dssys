package com.kwad.components.core.innerEc.followuser;

import com.ksad.json.annotation.KsJson;

@KsJson
/* loaded from: classes4.dex */
public class a extends com.kwad.sdk.core.response.a.a {
    public String Tg;
    public int Th;

    public static a az(String str) {
        a aVar = new a();
        aVar.Tg = str;
        aVar.Th = 1;
        return aVar;
    }
}
