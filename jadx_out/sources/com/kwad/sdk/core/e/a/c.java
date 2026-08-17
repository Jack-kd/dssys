package com.kwad.sdk.core.e.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.kwad.sdk.core.e.b.c;
import com.umeng.analytics.pro.bk;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes4.dex */
public final class c {
    public C0611c aUF;
    public Context mContext;
    public final a aUG = new a();
    public final b aUH = new b();
    public final CountDownLatch mCountDownLatch = new CountDownLatch(2);

    public class a extends c.a {
        public a() {
        }

        @Override // com.kwad.sdk.core.e.b.c.a
        public final void a(int i2, Bundle bundle) {
            com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "OAIDCallBack handleResult retCode = " + i2 + " retInfo = " + bundle);
            if (i2 == 0) {
                try {
                    C0611c c0611c = c.this.aUF;
                    if (c0611c != null) {
                        c0611c.id = bundle.getString(bk.c.f48849b);
                        com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "OAIDCallBack handleResult success");
                    }
                } catch (Throwable th) {
                    com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "OAIDCallBack handleResult error: " + th.getMessage());
                    return;
                }
            }
            c.a(c.this);
        }
    }

    public class b extends c.a {
        public b() {
        }

        @Override // com.kwad.sdk.core.e.b.c.a
        public final void a(int i2, Bundle bundle) {
            com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "OAIDLimitCallback handleResult retCode=" + i2 + " retInfo= " + bundle);
            if (i2 == 0) {
                try {
                    if (c.this.aUF != null) {
                        boolean z2 = bundle.getBoolean("oa_id_limit_state");
                        c.this.aUF.aUJ = z2;
                        com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "OAIDLimitCallback handleResult success  isLimit=" + z2);
                    }
                } catch (Throwable th) {
                    com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "OAIDLimitCallback handleResult error:  " + th.getMessage());
                    return;
                }
            }
            c.a(c.this);
        }
    }

    /* renamed from: com.kwad.sdk.core.e.a.c$c, reason: collision with other inner class name */
    public static final class C0611c {
        public boolean aUJ;
        public String id;
    }

    public static void a(c cVar) {
        try {
            cVar.mCountDownLatch.countDown();
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.d("HONORDeviceIDHelper", "doCountDown  error:  " + e2.getMessage());
        }
    }

    public static boolean isAdvertisingIdAvailable(Context context) {
        PackageManager packageManager;
        Intent intent;
        try {
            packageManager = context.getPackageManager();
            intent = new Intent("com.hihonor.id.HnOaIdService");
            intent.setPackage("com.hihonor.id");
        } catch (Exception unused) {
        }
        return !packageManager.queryIntentServices(intent, 0).isEmpty();
    }
}
