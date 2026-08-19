package com.kwad.sdk.core.webview.d;

import android.content.Context;
import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kwad.components.offline.api.BuildConfig;
import com.kwad.sdk.components.d;
import com.kwad.sdk.components.h;
import com.kwad.sdk.core.webview.c.c;
import com.kwad.sdk.service.ServiceProvider;
import com.kwad.sdk.service.a.f;
import com.kwad.sdk.utils.ai;
import com.kwad.sdk.utils.aq;
import com.kwad.sdk.utils.bf;
import com.kwad.sdk.utils.bt;
import com.kwad.sdk.utils.n;

/* loaded from: classes4.dex */
public final class a implements com.kwad.sdk.core.webview.c.a {

    @KsJson
    /* renamed from: com.kwad.sdk.core.webview.d.a$a, reason: collision with other inner class name */
    public static final class C0620a extends com.kwad.sdk.core.response.a.a {
        public String Nq;
        public String SDKVersion;
        public int SDKVersionCode;
        public int Sp;
        public int Sq;
        public String Un;
        public String aQZ;
        public String aRa;
        public String aWY;
        public String aWn;
        public String aXa;
        public String aXb;
        public String aXo;
        public String appId;
        public String appName;
        public String appVersion;
        public int aqA;
        public int aqB;
        public String aqu;
        public String aqv;
        public int aqw;
        public String aqx;
        public int aqy;
        public String aqz;
        public String bda;
        public String bdb;
        public boolean bdc;
        public String bdd;
        public String model;
        public String sdkApiVersion;
        public int sdkApiVersionCode;
        public int sdkType;

        public static C0620a PL() {
            C0620a c0620a = new C0620a();
            c0620a.SDKVersion = BuildConfig.VERSION_NAME;
            c0620a.SDKVersionCode = BuildConfig.VERSION_CODE;
            c0620a.aWn = "6.2.3";
            c0620a.bdd = "1.3";
            c0620a.sdkApiVersion = ((f) ServiceProvider.get(f.class)).getApiVersion();
            c0620a.sdkApiVersionCode = ((f) ServiceProvider.get(f.class)).getApiVersionCode();
            c0620a.sdkType = 1;
            Context context = ((f) ServiceProvider.get(f.class)).getContext();
            c0620a.appVersion = n.cZ(context);
            c0620a.appName = ((f) ServiceProvider.get(f.class)).getAppName();
            c0620a.appId = ((f) ServiceProvider.get(f.class)).getAppId();
            c0620a.bda = "";
            c0620a.aXb = ai.getEGid();
            h hVar = (h) d.f(h.class);
            if (hVar != null) {
                c0620a.aXa = hVar.qQ();
            }
            c0620a.aqu = String.valueOf(aq.dB(context));
            c0620a.aqv = bt.WU();
            c0620a.model = bt.WK();
            c0620a.Nq = bt.WM();
            c0620a.aqw = 1;
            c0620a.aqx = bt.getOsVersion();
            c0620a.aqy = bt.WX();
            c0620a.aqz = bt.getLanguage();
            c0620a.Un = bt.getLocale();
            c0620a.bdc = ((f) ServiceProvider.get(f.class)).Fu();
            c0620a.bdb = bf.getDeviceId();
            c0620a.Sq = bt.getScreenWidth(context);
            c0620a.Sp = bt.getScreenHeight(context);
            c0620a.aQZ = bf.dO(context);
            c0620a.aRa = bf.getOaid();
            c0620a.aWY = bf.dP(context);
            c0620a.aXo = bf.dQ(context);
            c0620a.aqA = com.kwad.sdk.c.a.a.getStatusBarHeight(context);
            c0620a.aqB = com.kwad.sdk.c.a.a.a(context, 50.0f);
            return c0620a;
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull c cVar) {
        cVar.b(C0620a.PL());
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "getDeviceInfo";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
    }
}
