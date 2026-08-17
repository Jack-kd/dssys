package com.smartdigimkt.q1;

import android.content.Context;
import android.util.Base64;
import com.sigmob.sdk.base.mta.PointCategory;
import com.smartdigimkt.sdk.basead.mraid.MraidWebView;
import com.smartdigimkt.sdk.core.SDKContext;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public abstract class d {
    public static void a(MraidWebView mraidWebView, float f2, float f3) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("startX", f2);
            jSONObject.put("startY", f3);
            Context contextD = SDKContext.getInstance().d();
            char[] cArr = com.smartdigimkt.c5.k.f39779a;
            float f4 = 2.5f;
            if (contextD != null) {
                try {
                    float f5 = contextD.getResources().getDisplayMetrics().density;
                    if (f5 != 0.0f) {
                        f4 = f5;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            jSONObject.put("scale", f4);
            String strEncodeToString = Base64.encodeToString(jSONObject.toString().getBytes(), 2);
            h.a().getClass();
            com.smartdigimkt.g1.a.a(mraidWebView, "webviewshow", strEncodeToString);
        } catch (Throwable unused) {
        }
    }

    public static void a(MraidWebView mraidWebView, boolean z2) {
        String strEncode = z2 ? "true" : "false";
        try {
            strEncode = URLEncoder.encode(strEncode, "UTF-8");
        } catch (Throwable unused) {
        }
        try {
            String str = "javascript:window.mraidbridge.setIsViewable(" + strEncode + ");";
            if (mraidWebView != null) {
                try {
                    mraidWebView.loadUrl(str);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public static void a(MraidWebView mraidWebView, int i2, int i3, int i4, int i5) {
        String str;
        try {
            int i6 = SDKContext.getInstance().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            if (i6 == 2) {
                str = "landscape";
            } else {
                str = i6 == 1 ? "portrait" : "undefined";
            }
            jSONObject.put("orientation", str);
            jSONObject.put(PointCategory.LOCKED, "true");
            float fC = com.smartdigimkt.c5.k.c(SDKContext.getInstance().d());
            float fB = com.smartdigimkt.c5.k.b(SDKContext.getInstance().d());
            HashMap mapD = com.smartdigimkt.c5.k.d(SDKContext.getInstance().d());
            int iIntValue = ((Integer) mapD.get("width")).intValue();
            int iIntValue2 = ((Integer) mapD.get("height")).intValue();
            HashMap map = new HashMap();
            map.put("placementType", "inline");
            map.put("state", "default");
            map.put("viewable", "true");
            map.put("currentAppOrientation", jSONObject);
            float f2 = i2;
            float f3 = i3;
            float f4 = i4;
            float f5 = i5;
            Locale locale = Locale.US;
            com.smartdigimkt.d1.a.a(mraidWebView, String.format(locale, "javascript:window.mraidbridge.setDefaultPosition(%.1f, %.1f, %.1f, %.1f);", Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(f4), Float.valueOf(f5)));
            com.smartdigimkt.d1.a.a(mraidWebView, String.format(locale, "javascript:window.mraidbridge.setCurrentPosition(%.1f, %.1f, %.1f, %.1f);", Float.valueOf(f2), Float.valueOf(f3), Float.valueOf(f4), Float.valueOf(f5)));
            com.smartdigimkt.d1.a.a(mraidWebView, String.format(locale, "javascript:window.mraidbridge.setScreenSize(%.1f, %.1f);", Float.valueOf(fC), Float.valueOf(fB)));
            com.smartdigimkt.d1.a.a(mraidWebView, String.format(locale, "javascript:window.mraidbridge.setMaxSize(%.1f, %.1f);", Float.valueOf(iIntValue), Float.valueOf(iIntValue2)));
            com.smartdigimkt.d1.a.a(mraidWebView, map);
            com.smartdigimkt.d1.a.a(mraidWebView, "javascript:window.mraidbridge.fireReadyEvent();");
        } catch (Throwable unused) {
        }
    }
}
