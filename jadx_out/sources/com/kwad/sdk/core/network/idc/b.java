package com.kwad.sdk.core.network.idc;

import android.content.Context;
import com.kwad.sdk.core.d.c;
import com.kwad.sdk.crash.utils.h;
import com.kwad.sdk.utils.ac;
import com.kwad.sdk.utils.ai;
import java.io.IOException;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class b {
    public static void a(Context context, com.kwad.sdk.core.network.idc.a.b bVar) {
        ai.a(context, "ksadsdk_idc", "idc_data", bVar == null ? "" : bVar.toJson().toString());
    }

    public static com.kwad.sdk.core.network.idc.a.b bU(Context context) {
        try {
            return com.kwad.sdk.core.network.idc.a.b.eS(h.O(context, "ksad_idc.json"));
        } catch (IOException e2) {
            c.printStackTraceOnly(e2);
            return new com.kwad.sdk.core.network.idc.a.b();
        }
    }

    public static com.kwad.sdk.core.network.idc.a.b bV(Context context) {
        return com.kwad.sdk.core.network.idc.a.b.eS(ai.b(context, "ksadsdk_idc", "idc_data", ""));
    }

    public static Map<String, String> bW(Context context) {
        return ac.parseJSON2MapString(ai.b(context, "ksadsdk_idc", "idc_current", ""));
    }

    public static void a(Context context, Map<String, String> map) {
        String string;
        if (map != null && !map.isEmpty()) {
            string = new JSONObject(map).toString();
        } else {
            string = "";
        }
        ai.a(context, "ksadsdk_idc", "idc_current", string);
    }
}
