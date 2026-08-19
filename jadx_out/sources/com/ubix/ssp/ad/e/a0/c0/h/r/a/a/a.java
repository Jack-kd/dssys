package com.ubix.ssp.ad.e.a0.c0.h.r.a.a;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.a0.v;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: com.ubix.ssp.ad.e.a0.c0.h.r.a.a.a$a, reason: collision with other inner class name */
    public static final class C0791a {

        /* renamed from: a, reason: collision with root package name */
        public String f46192a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f46193b;
    }

    private a() {
    }

    public static C0791a a(Context context) throws InterruptedException {
        b bVar = new b();
        bVar.f46195b = context;
        if (!bVar.a(context)) {
            return null;
        }
        C0791a c0791a = bVar.f46194a;
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "oaid");
            if (TextUtils.isEmpty(string)) {
                String strD = v.d(context, "ubix_sp_special_seed", "seed");
                string = TextUtils.isEmpty(strD) ? v.d(context, "ubix_sp_special_seed", "oaid") : new String(Base64.decode(strD.getBytes(), 10));
                long jC = v.c(context, "ubix_sp_special_seed", "seed_time");
                if (!TextUtils.isEmpty(string) && (jC <= 0 || System.currentTimeMillis() - jC > 86400000)) {
                    a(context, bVar);
                }
            }
            if (TextUtils.isEmpty(string)) {
                a(context, bVar);
                return c0791a;
            }
            c0791a.f46193b = false;
            if (TextUtils.isEmpty(c0791a.f46192a)) {
                c0791a.f46192a = string;
            }
            u.e("AdvertisingIdPlatform", "use global oaid" + string);
            return c0791a;
        } catch (Exception unused) {
            a(context, bVar);
            return c0791a;
        }
    }

    public static boolean b(Context context) {
        return new b().a(context);
    }

    private static void a(Context context, b bVar) throws InterruptedException {
        try {
            u.e("AdvertisingIdPlatform", "bindService start");
            Intent intent = new Intent("com.hihonor.id.HnOaIdService");
            intent.setPackage("com.hihonor.id");
            context.bindService(intent, bVar, 1);
            bVar.f46198e.await(2000L, TimeUnit.MILLISECONDS);
            bVar.a();
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.e("AdvertisingIdPlatform", "getAdvertisingIdInfo error=" + e2.getMessage());
            bVar.a();
        }
    }
}
