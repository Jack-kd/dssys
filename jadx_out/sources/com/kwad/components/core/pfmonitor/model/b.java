package com.kwad.components.core.pfmonitor.model;

import android.text.TextUtils;
import com.ksad.json.annotation.KsJson;
import java.util.List;
import org.json.JSONObject;

@KsJson
/* loaded from: classes4.dex */
public class b extends com.kwad.sdk.core.response.a.a {
    public int aio;
    public List<a> aip;

    public static b bf(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            b bVar = new b();
            bVar.parseJson(new JSONObject(str));
            return bVar;
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(e2);
            return null;
        }
    }

    public final List<a> vs() {
        return this.aip;
    }
}
