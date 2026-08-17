package com.kwad.components.core.e.d;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.kwad.components.core.e.d.a;
import com.kwad.sdk.core.adlog.a;
import com.kwad.sdk.core.download.a.b;
import com.kwad.sdk.core.response.model.AdInfo;
import com.kwad.sdk.core.response.model.AdTemplate;
import com.kwad.sdk.internal.api.SceneImpl;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.utils.au;
import com.kwad.sdk.utils.by;
import com.kwad.sdk.wrapper.m;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public final class e {
    private static boolean Rv = false;
    private static final b Rw = new b() { // from class: com.kwad.components.core.e.d.e.4
        long RD;

        @Override // com.kwad.sdk.core.c.d, com.kwad.sdk.core.c.c
        public final void onBackToBackground() {
            super.onBackToBackground();
            this.RD = System.currentTimeMillis();
        }

        @Override // com.kwad.sdk.core.c.d, com.kwad.sdk.core.c.c
        public final void onBackToForeground() {
            super.onBackToForeground();
            if (this.RD != 0) {
                com.kwad.sdk.core.adlog.c.n(getAdTemplate(), System.currentTimeMillis() - this.RD);
            }
            com.kwad.sdk.core.c.b.LW();
            com.kwad.sdk.core.c.b.b((com.kwad.sdk.core.c.c) e.Rw);
            setAdTemplate(null);
            this.RD = 0L;
        }
    };

    public static int F(a.C0529a c0529a) throws Exception {
        Context context = c0529a.getContext();
        final AdTemplate adTemplate = c0529a.getAdTemplate();
        String strB = b(c0529a, adTemplate);
        if (TextUtils.isEmpty(strB)) {
            return 0;
        }
        final AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        final String strA = a(strB, c0529a, adInfoEO);
        return com.kwad.sdk.core.download.a.b.a(context, strA, new b.a() { // from class: com.kwad.components.core.e.d.e.2
            @Override // com.kwad.sdk.core.download.a.b.a
            public final void aT(int i2) {
            }

            @Override // com.kwad.sdk.core.download.a.b.a
            public final void onError(Throwable th) {
                com.kwad.sdk.commercial.e.a.d(adTemplate, strA, by.y(th));
            }

            @Override // com.kwad.sdk.core.download.a.b.a
            public final void onPreStart() {
                com.kwad.sdk.commercial.e.a.o(adTemplate, strA);
            }

            @Override // com.kwad.sdk.core.download.a.b.a
            public final void onStart() {
                com.kwad.sdk.commercial.e.a.q(adTemplate, strA);
            }

            @Override // com.kwad.sdk.core.download.a.b.a
            public final void onSuccess() {
                com.kwad.sdk.commercial.e.a.r(adTemplate, strA);
            }

            @Override // com.kwad.sdk.core.download.a.b.a
            public final void qG() {
                com.kwad.sdk.commercial.e.a.p(adTemplate, strA);
            }

            @Override // com.kwad.sdk.core.download.a.b.a
            public final boolean qH() {
                return com.kwad.sdk.core.response.helper.a.cr(adInfoEO);
            }
        });
    }

    public static int a(final a.C0529a c0529a, int i2) {
        Context context = c0529a.getContext();
        final AdTemplate adTemplate = c0529a.getAdTemplate();
        String strB = b(c0529a, adTemplate);
        if (TextUtils.isEmpty(strB)) {
            return 0;
        }
        final AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        Activity activityFromContext = m.getActivityFromContext(context);
        if (activityFromContext == null || !com.kwad.sdk.core.response.helper.a.W(adInfoEO) || c0529a.pP()) {
            final String strA = a(strB, c0529a, adInfoEO);
            final int i3 = 1;
            return com.kwad.sdk.core.download.a.b.a(context, strA, new b.a() { // from class: com.kwad.components.core.e.d.e.1
                @Override // com.kwad.sdk.core.download.a.b.a
                public final void aT(int i4) {
                    a.C0529a c0529a2 = c0529a;
                    if (c0529a2.QZ == null) {
                        c0529a2.QZ = new a.C0601a();
                    }
                    a.C0529a c0529a3 = c0529a;
                    c0529a3.QZ.aLG = c0529a3.pP() ? 2 : 1;
                    com.kwad.sdk.core.adlog.c.a aVarQa = c0529a.qa();
                    if (qH()) {
                        if (aVarQa.QZ == null) {
                            aVarQa.QZ = new a.C0601a();
                        }
                        aVarQa.QZ.aLr = true;
                    }
                    aVarQa.aMv = i4;
                    com.kwad.sdk.core.adlog.c.a(adTemplate, "", i3, aVarQa);
                }

                @Override // com.kwad.sdk.core.download.a.b.a
                public final void onError(Throwable th) {
                    com.kwad.sdk.core.adlog.c.a aVar = new com.kwad.sdk.core.adlog.c.a();
                    aVar.QZ = new a.C0601a();
                    if (qH()) {
                        aVar.QZ.aLr = true;
                    }
                    aVar.QZ.aLG = c0529a.pP() ? 2 : 1;
                    com.kwad.sdk.core.adlog.c.d(adTemplate, "", i3, aVar);
                    com.kwad.sdk.commercial.e.a.d(adTemplate, strA, by.y(th));
                }

                @Override // com.kwad.sdk.core.download.a.b.a
                public final void onPreStart() {
                    a.C0529a c0529a2 = c0529a;
                    if (c0529a2.QZ == null) {
                        c0529a2.QZ = new a.C0601a();
                    }
                    a.C0529a c0529a3 = c0529a;
                    c0529a3.QZ.aLG = c0529a3.pP() ? 2 : 1;
                    com.kwad.sdk.core.adlog.c.a aVarQa = c0529a.qa();
                    if (qH()) {
                        if (aVarQa.QZ == null) {
                            aVarQa.QZ = new a.C0601a();
                        }
                        aVarQa.QZ.aLr = true;
                    }
                    com.kwad.sdk.core.adlog.c.b(adTemplate, "", i3, aVarQa);
                    com.kwad.sdk.commercial.e.a.o(adTemplate, strA);
                }

                @Override // com.kwad.sdk.core.download.a.b.a
                public final void onStart() {
                    com.kwad.components.core.proxy.launchdialog.e.vJ().ba(adTemplate);
                    e.Rw.setAdTemplate(adTemplate);
                    com.kwad.sdk.core.c.b.LW();
                    com.kwad.sdk.core.c.b.a(e.Rw);
                    com.kwad.sdk.core.adlog.c.aLJ = e.ar(strA);
                    com.kwad.sdk.commercial.e.a.q(adTemplate, strA);
                }

                @Override // com.kwad.sdk.core.download.a.b.a
                public final void onSuccess() {
                    a.C0529a c0529a2 = c0529a;
                    if (c0529a2.QZ == null) {
                        c0529a2.QZ = new a.C0601a();
                    }
                    a.C0529a c0529a3 = c0529a;
                    c0529a3.QZ.aLG = c0529a3.pP() ? 2 : 1;
                    com.kwad.sdk.core.adlog.c.a aVarQa = c0529a.qa();
                    if (qH()) {
                        if (aVarQa.QZ == null) {
                            aVarQa.QZ = new a.C0601a();
                        }
                        aVarQa.QZ.aLr = true;
                    }
                    com.kwad.sdk.commercial.e.a.r(adTemplate, strA);
                    com.kwad.sdk.core.adlog.c.c(adTemplate, "", i3, aVarQa);
                    e.a(adTemplate, strA, i3, c0529a.QZ.aLG);
                }

                @Override // com.kwad.sdk.core.download.a.b.a
                public final void qG() {
                    com.kwad.sdk.commercial.e.a.p(adTemplate, strA);
                }

                @Override // com.kwad.sdk.core.download.a.b.a
                public final boolean qH() {
                    return com.kwad.sdk.core.response.helper.a.cr(adInfoEO);
                }
            });
        }
        c0529a.aK(1);
        com.kwad.components.core.e.e.e.a(activityFromContext, c0529a);
        return 2;
    }

    public static void aD(boolean z2) {
        com.kwad.sdk.core.adlog.c.aLK = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void aE(boolean z2) {
        Rv = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject ar(String str) {
        try {
            return new JSONObject(Uri.parse(str).getQueryParameter("universeClientInfo"));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String l(String str, String str2) {
        Uri.Builder builderAppendQueryParameter = Uri.parse(str).buildUpon().appendQueryParameter("returnBack", "liveunion_" + ServiceProvider.getAppId());
        if (TextUtils.isEmpty(str2)) {
            str2 = "0";
        }
        return builderAppendQueryParameter.appendQueryParameter("back_url", str2).toString();
    }

    private static boolean qE() {
        return Rv;
    }

    private static String b(a.C0529a c0529a, AdTemplate adTemplate) {
        AdInfo adInfoEO = com.kwad.sdk.core.response.helper.e.eO(adTemplate);
        for (AdInfo.AdConversionInfo.DeeplinkItemInfo deeplinkItemInfo : adInfoEO.adConversionInfo.deeplinkConf) {
            boolean zContains = deeplinkItemInfo.areaConf.contains(Integer.valueOf(c0529a.eg()));
            boolean zContains2 = deeplinkItemInfo.sceneConf.contains(Integer.valueOf(c0529a.pT()));
            if ((zContains && zContains2) || ((zContains && deeplinkItemInfo.sceneConf.size() == 0) || (zContains2 && deeplinkItemInfo.areaConf.size() == 0))) {
                if (!TextUtils.isEmpty(deeplinkItemInfo.url)) {
                    return deeplinkItemInfo.url + adInfoEO.adConversionInfo.deeplinkExtra;
                }
            }
        }
        return com.kwad.sdk.core.response.helper.a.da(adInfoEO);
    }

    private static String a(String str, a.C0529a c0529a, AdInfo adInfo) throws Exception {
        AdTemplate adTemplate = c0529a.getAdTemplate();
        if (com.kwad.sdk.core.response.helper.a.bs(adInfo)) {
            str = b(c0529a, adInfo, str);
        }
        if (com.kwad.sdk.core.response.helper.a.cY(adInfo)) {
            str = a(c0529a, adInfo, str);
        }
        return ((com.kwad.sdk.core.response.helper.a.cQ(adInfo) || com.kwad.sdk.core.response.helper.a.cW(adInfo)) && adTemplate.mAdScene != null) ? a(str, c0529a.getContext(), adTemplate.mAdScene) : str;
    }

    private static String b(a.C0529a c0529a, AdInfo adInfo, String str) {
        long jMax = c0529a.getAdTemplate().getmCurPlayTime();
        if (jMax > 0) {
            jMax = Math.max(jMax - com.kwad.sdk.core.response.helper.a.bt(adInfo), 0L);
        }
        return Uri.parse(str).buildUpon().appendQueryParameter("playStartTime", String.valueOf(jMax)).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(final AdTemplate adTemplate, final String str, final int i2, final int i3) {
        if (qE()) {
            return;
        }
        aE(true);
        int iJK = com.kwad.sdk.core.config.e.JK();
        com.kwad.sdk.core.config.e.JL();
        int iAbs = Math.abs(iJK);
        if (iAbs > 0) {
            by.a(new Runnable() { // from class: com.kwad.components.core.e.d.e.3
                @Override // java.lang.Runnable
                public final void run() {
                    e.aE(false);
                    com.kwad.sdk.core.c.b.LW();
                    if (com.kwad.sdk.core.c.b.isAppOnForeground()) {
                        return;
                    }
                    com.kwad.sdk.core.adlog.c.d(adTemplate, "", i2, i3);
                    com.kwad.sdk.commercial.e.a.s(adTemplate, str);
                }
            }, null, iAbs * 1000);
        } else {
            aE(false);
        }
    }

    private static String a(a.C0529a c0529a, AdInfo adInfo, String str) throws Exception {
        String strCall;
        String strValueOf;
        if (!com.kwad.sdk.core.response.helper.a.bp(adInfo)) {
            return str;
        }
        Callable<String> callablePO = c0529a.pO();
        if (callablePO != null) {
            try {
                strCall = callablePO.call();
            } catch (Exception unused) {
            }
        } else {
            strCall = null;
        }
        if (TextUtils.isEmpty(strCall)) {
            strCall = c0529a.pN();
        }
        if (TextUtils.isEmpty(strCall)) {
            return (str.contains("__itemId__") || str.contains("__simpleItemId__")) ? com.kwad.sdk.core.response.helper.a.da(adInfo) : str;
        }
        try {
            strValueOf = String.valueOf(com.kwad.components.core.e.b.a.am(strCall));
        } catch (Throwable unused2) {
            strValueOf = strCall;
        }
        return str.replaceAll("__itemId__", strCall).replaceAll("__simpleItemId__", strValueOf);
    }

    private static String a(String str, Context context, SceneImpl sceneImpl) {
        if (sceneImpl == null) {
            return "";
        }
        int i2 = 0;
        if (!au.aw(context, "com.smile.gifmaker") && au.aw(context, "com.kuaishou.nebula")) {
            i2 = 3;
        }
        String backUrl = sceneImpl.getBackUrl();
        return a(str, i2, TextUtils.isEmpty(backUrl) ? "" : backUrl);
    }

    private static String a(String str, int i2, String str2) {
        return (!TextUtils.isEmpty(str2) && (i2 == 0 || i2 == 3)) ? l(str, str2) : str;
    }
}
