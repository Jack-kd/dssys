package com.czhj.devicehelper.honor.identifier;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class a {

    /* renamed from: com.czhj.devicehelper.honor.identifier.a$a, reason: collision with other inner class name */
    public static final class C0449a {

        /* renamed from: a, reason: collision with root package name */
        public String f29184a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f29185b;
    }

    private a() {
    }

    public static C0449a a(Context context) throws InterruptedException {
        b bVar = new b();
        bVar.f29187b = context;
        if (!bVar.a(context)) {
            return null;
        }
        C0449a c0449a = bVar.f29186a;
        try {
            String string = Settings.Global.getString(context.getContentResolver(), "oaid");
            if (!TextUtils.isEmpty(string)) {
                c0449a.f29185b = false;
                c0449a.f29184a = string;
                return c0449a;
            }
        } catch (Exception unused) {
        }
        try {
            Intent intent = new Intent("com.hihonor.id.HnOaIdService");
            intent.setPackage("com.hihonor.id");
            context.bindService(intent, bVar, 1);
            bVar.f29190e.await(2000L, TimeUnit.MILLISECONDS);
            bVar.a();
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.e("AdvertisingIdPlatform", "getAdvertisingIdInfo error=" + e2.getMessage());
            bVar.a();
        }
        return c0449a;
    }

    public static boolean b(Context context) {
        return new b().a(context);
    }
}
