package com.octopus.ad.c.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.provider.Settings;
import android.text.TextUtils;
import com.octopus.ad.c.b.b;
import com.octopus.ad.c.b.c;
import com.umeng.analytics.pro.bk;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class a implements com.octopus.ad.c.c {

    /* renamed from: a, reason: collision with root package name */
    private static String f33780a = "";

    /* renamed from: com.octopus.ad.c.b.a$a, reason: collision with other inner class name */
    public static final class BinderC0716a extends b.a {
        @Override // com.octopus.ad.c.b.b
        public void a(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException {
        }

        private BinderC0716a() {
        }

        @Override // com.octopus.ad.c.b.b
        public void a(int i2, Bundle bundle) throws RemoteException {
            if (i2 != 0 || bundle == null) {
                return;
            }
            String string = bundle.getString(bk.c.f48849b);
            if (a.a(string)) {
                String unused = a.f33780a = string;
            }
        }
    }

    public static final class b implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        boolean f33781a;

        /* renamed from: b, reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f33782b;

        public IBinder a() throws InterruptedException {
            if (this.f33781a) {
                throw new IllegalStateException();
            }
            this.f33781a = true;
            return this.f33782b.poll(5L, TimeUnit.SECONDS);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                this.f33782b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        private b() {
            this.f33781a = false;
            this.f33782b = new LinkedBlockingQueue<>();
        }
    }

    @Override // com.octopus.ad.c.c
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            if (!Boolean.parseBoolean(Settings.Secure.getString(context.getContentResolver(), "oaid_limit_state"))) {
                String string = Settings.Global.getString(context.getContentResolver(), "oaid");
                if (a(string)) {
                    f33780a = string;
                    return string;
                }
            }
        } catch (Throwable unused) {
        }
        b bVar = new b();
        Intent intent = new Intent();
        intent.setAction("com.hihonor.id.HnOaIdService");
        intent.setPackage("com.hihonor.id");
        if (context.bindService(intent, bVar, 1)) {
            try {
                c.a.a(bVar.a()).a(new BinderC0716a());
                return f33780a;
            } catch (Exception unused2) {
            } finally {
                context.unbindService(bVar);
            }
        }
        return null;
    }

    public static boolean a(String str) {
        return (TextUtils.isEmpty(str) || str.equalsIgnoreCase("00000000-0000-0000-0000-000000000000")) ? false : true;
    }
}
