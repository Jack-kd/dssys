package com.smartdigimkt.q1;

import android.text.TextUtils;
import android.webkit.WebView;
import com.sigmob.sdk.base.mta.PointCategory;
import com.smartdigimkt.sdk.basead.mraid.MraidBaseWebView;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class l extends c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f42686a;

    public l(o oVar) {
        this.f42686a = oVar;
    }

    @Override // com.smartdigimkt.f1.f
    public final void a(WebView webView, String str) {
        StringBuilder sb = new StringBuilder("javascript:");
        com.smartdigimkt.t1.h hVarA = com.smartdigimkt.t1.h.a();
        sb.append(!TextUtils.isEmpty(hVarA.f44216a) ? hVarA.f44216a : com.smartdigimkt.t1.h.f44214e);
        webView.evaluateJavascript(sb.toString(), new k());
        o oVar = this.f42686a;
        oVar.getClass();
        try {
            int i2 = SDKContext.getInstance().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("orientation", i2 == 2 ? "landscape" : i2 == 1 ? "portrait" : "undefined");
            jSONObject.put(PointCategory.LOCKED, "true");
            float fC = com.smartdigimkt.c5.k.c(SDKContext.getInstance().d());
            float fB = com.smartdigimkt.c5.k.b(SDKContext.getInstance().d());
            HashMap mapD = com.smartdigimkt.c5.k.d(SDKContext.getInstance().d());
            int iIntValue = ((Integer) mapD.get("width")).intValue();
            int iIntValue2 = ((Integer) mapD.get("height")).intValue();
            HashMap map = new HashMap();
            map.put("placementType", "Interstitial");
            map.put("state", "expanded");
            map.put("viewable", "true");
            map.put("currentAppOrientation", jSONObject);
            int[] iArr = new int[2];
            oVar.f42692d.getLocationInWindow(iArr);
            MraidBaseWebView mraidBaseWebView = oVar.f42692d;
            float f2 = iArr[0];
            float f3 = iArr[1];
            float width = mraidBaseWebView.getWidth();
            float height = oVar.f42692d.getHeight();
            Locale locale = Locale.US;
            com.smartdigimkt.d1.a.a(mraidBaseWebView, String.format(locale, "javascript:window.mraidbridge.setDefaultPosition(%.1f, %.1f, %.1f, %.1f);", Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(width), Float.valueOf(height)));
            com.smartdigimkt.d1.a.a(oVar.f42692d, String.format(locale, "javascript:window.mraidbridge.setCurrentPosition(%.1f, %.1f, %.1f, %.1f);", Float.valueOf(iArr[0]), Float.valueOf(iArr[1]), Float.valueOf(r4.getWidth()), Float.valueOf(oVar.f42692d.getHeight())));
            com.smartdigimkt.d1.a.a(oVar.f42692d, String.format(locale, "javascript:window.mraidbridge.setScreenSize(%.1f, %.1f);", Float.valueOf(fC), Float.valueOf(fB)));
            com.smartdigimkt.d1.a.a(oVar.f42692d, String.format(locale, "javascript:window.mraidbridge.setMaxSize(%.1f, %.1f);", Float.valueOf(iIntValue), Float.valueOf(iIntValue2)));
            com.smartdigimkt.d1.a.a(oVar.f42692d, map);
            com.smartdigimkt.d1.a.a(oVar.f42692d, "javascript:window.mraidbridge.fireReadyEvent();");
        } catch (Throwable unused) {
        }
    }
}
