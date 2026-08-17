package com.meishu.sdk.core.utils;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.gson.Gson;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.PackageBean;
import com.meishu.sdk.core.utils.h0;
import java.util.concurrent.ExecutorService;

/* loaded from: classes4.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static String f31914a = null;

    /* renamed from: b, reason: collision with root package name */
    public static volatile boolean f31915b = false;

    /* renamed from: c, reason: collision with root package name */
    public static int f31916c = 675;

    public class a extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f31917a;

        public a(Context context) {
            this.f31917a = context;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            try {
                boolean unused = j.f31915b = true;
                Context context = this.f31917a;
                try {
                    String string = AdSdk.getSharedPreferences().getString("user_agent", null);
                    if (string == null) {
                        string = WebSettings.getDefaultUserAgent(context);
                    }
                    if (string != null) {
                        AdSdk.getSharedPreferences().edit().putString("user_agent", string).apply();
                        y0.f32064h = string;
                    }
                } catch (Throwable unused2) {
                }
                try {
                    y0.f32068l = y0.g();
                } catch (Exception e2) {
                    e2.printStackTrace();
                } catch (Throwable unused3) {
                }
                if (AdSdk.adConfig() == null || !AdSdk.adConfig().enableOaid()) {
                    j.f31914a = "unknown";
                } else {
                    j.a(this.f31917a);
                }
                r0.a(this.f31917a);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void b(Context context) {
        if (f31915b || context == null) {
            return;
        }
        try {
            com.meishu.sdk.core.a.a("MS").config().init(context, AdSdk.adConfig().appId(), "");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            if (AdSdk.adConfig() != null && AdSdk.adConfig().enableOaid()) {
                try {
                    if (r.a().a("oaid_e")) {
                        String strA = r.a().a("oaid_e", (String) null);
                        if (!TextUtils.isEmpty(strA)) {
                            f31914a = g1.b(strA);
                        }
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                if (TextUtils.isEmpty(f31914a)) {
                    if (r.a().a("oaid")) {
                        f31914a = r.a().a("oaid", (String) null);
                    } else {
                        f31914a = AdSdk.getSharedPreferences().getString("oaid", null);
                    }
                }
                if (TextUtils.isEmpty(f31914a) && Build.MANUFACTURER.equalsIgnoreCase("honor")) {
                    f31914a = r.a().a("honor_oaid", (String) null);
                }
            }
            LogUtil.d("DeviceUtil", "Read oaid from cache, oaid=" + f31914a);
            r0.f31981l = r.a().a("useHttps", 3);
            if (r.a().a("shake_act_type")) {
                f31916c |= r.a().a("shake_act_type", 0);
            } else {
                f31916c |= AdSdk.getSharedPreferences().getInt("shake_act_type", 0);
            }
            f31916c = h.a(f31916c);
            Gson gson = new Gson();
            try {
                String strA2 = r.a().a("pck_id_bean") ? r.a().a("pck_id_bean", "") : AdSdk.getSharedPreferences().getString("pck_id_bean", "");
                if (!TextUtils.isEmpty(strA2)) {
                    r0.f31971b = (PckIdBean) gson.fromJson(strA2, PckIdBean.class);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                String strA3 = r.a().a("pack_ad", "");
                if (!TextUtils.isEmpty(strA3)) {
                    r0.f31982m = (PackageBean.AdBean) gson.fromJson(strA3, PackageBean.AdBean.class);
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            try {
                String strA4 = r.a().a("dclk") ? r.a().a("dclk", "") : AdSdk.getSharedPreferences().getString("dclk", "");
                if (!TextUtils.isEmpty(strA4)) {
                    r0.f31973d = (PackageBean.DClick) gson.fromJson(strA4, PackageBean.DClick.class);
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
        } catch (Throwable th4) {
            LogUtil.d("DeviceUtil", "Read oaid from cache failed");
            th4.printStackTrace();
        }
        ExecutorService executorService = h0.f31906a;
        h0.b.f31910a.a(new a(context));
    }

    public static void a(int i2) {
        f31916c = i2 | f31916c;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01bc A[PHI: r0
      0x01bc: PHI (r0v5 com.meishu.sdk.core.oaid.b) = (r0v3 com.meishu.sdk.core.oaid.b), (r0v4 com.meishu.sdk.core.oaid.b) binds: [B:114:0x01ba, B:117:0x01c7] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.core.utils.j.a(android.content.Context):void");
    }
}
