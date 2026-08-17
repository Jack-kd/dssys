package com.kwad.sdk.liteapi.oaid.helpers;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.kwad.sdk.liteapi.LiteApiLogger;
import com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface;
import com.umeng.analytics.pro.bk;
import java.util.concurrent.CountDownLatch;

@Keep
/* loaded from: classes4.dex */
public class HONORProxy {
    public c info;
    public Context mContext;
    public final a mBinderOne = new a();
    public final b mBinderTwo = new b();
    public final CountDownLatch mCountDownLatch = new CountDownLatch(2);

    public class a extends HONORProxyInterface.a {
        public a() {
        }

        @Override // com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface.a, com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface
        public final void a(int i2, long j2, boolean z2, float f2, double d2, String str) {
        }

        @Override // com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface.a, com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface
        public final void a(int i2, Bundle bundle) {
            LiteApiLogger.d("HONORDeviceIDHelper", "OAIDCallBack handleResult retCode = " + i2 + " retInfo = " + bundle);
            if (i2 == 0) {
                try {
                    c cVar = HONORProxy.this.info;
                    if (cVar != null) {
                        cVar.id = bundle.getString(bk.c.f48849b);
                        LiteApiLogger.d("HONORDeviceIDHelper", "OAIDCallBack handleResult success");
                    }
                } catch (Throwable th) {
                    LiteApiLogger.d("HONORDeviceIDHelper", "OAIDCallBack handleResult error: " + th.getMessage());
                    return;
                }
            }
            HONORProxy.countDown(HONORProxy.this);
        }
    }

    public class b extends HONORProxyInterface.a {
        public b() {
        }

        @Override // com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface.a, com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface
        public final void a(int i2, long j2, boolean z2, float f2, double d2, String str) {
        }

        @Override // com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface.a, com.kwad.sdk.liteapi.oaid.interfaces.HONORProxyInterface
        public final void a(int i2, Bundle bundle) {
            LiteApiLogger.d("HONORDeviceIDHelper", "OAIDLimitCallback handleResult retCode=" + i2 + " retInfo= " + bundle);
            if (i2 == 0) {
                try {
                    if (HONORProxy.this.info != null) {
                        boolean z2 = bundle.getBoolean("oa_id_limit_state");
                        HONORProxy.this.info.aUJ = z2;
                        LiteApiLogger.d("HONORDeviceIDHelper", "OAIDLimitCallback handleResult success  isLimit=" + z2);
                    }
                } catch (Throwable th) {
                    LiteApiLogger.d("HONORDeviceIDHelper", "OAIDLimitCallback handleResult error:  " + th.getMessage());
                    return;
                }
            }
            HONORProxy.countDown(HONORProxy.this);
        }
    }

    public static final class c {
        public boolean aUJ;
        public String id;
    }

    public static void countDown(HONORProxy hONORProxy) {
        try {
            hONORProxy.mCountDownLatch.countDown();
        } catch (Exception e2) {
            LiteApiLogger.d("HONORDeviceIDHelper", "doCountDown  error:  " + e2.getMessage());
        }
    }

    public boolean isAdvertisingIdAvailable(Context context) {
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
