package com.umeng.analytics.pro;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.provider.Settings;
import android.text.TextUtils;
import com.umeng.analytics.pro.c;
import com.umeng.analytics.pro.d;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
class bk implements bf {

    /* renamed from: a, reason: collision with root package name */
    private static String f48845a = "";

    public static final class a implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        boolean f48846a;

        /* renamed from: b, reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f48847b;

        public IBinder a() throws InterruptedException {
            if (this.f48846a) {
                throw new IllegalStateException();
            }
            this.f48846a = true;
            return this.f48847b.poll(5L, TimeUnit.SECONDS);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                this.f48847b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }

        private a() {
            this.f48846a = false;
            this.f48847b = new LinkedBlockingQueue<>();
        }
    }

    public static final class b extends c.b {
        @Override // com.umeng.analytics.pro.c
        public void a(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException {
        }

        private b() {
        }

        @Override // com.umeng.analytics.pro.c
        public void a(int i2, Bundle bundle) throws RemoteException {
            if (i2 != 0 || bundle == null) {
                return;
            }
            String string = bundle.getString(c.f48849b);
            if (bk.c(string)) {
                String unused = bk.f48845a = string;
            }
        }
    }

    public interface c {

        /* renamed from: a, reason: collision with root package name */
        public static final int f48848a = 0;

        /* renamed from: b, reason: collision with root package name */
        public static final String f48849b = "oa_id_flag";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean c(String str) {
        return (TextUtils.isEmpty(str) || str.equalsIgnoreCase("00000000-0000-0000-0000-000000000000")) ? false : true;
    }

    @Override // com.umeng.analytics.pro.bf
    public String a(Context context) {
        if (context == null) {
            return null;
        }
        try {
            if (!Boolean.parseBoolean(Settings.Secure.getString(context.getContentResolver(), "oaid_limit_state"))) {
                String string = Settings.Global.getString(context.getContentResolver(), "oaid");
                if (c(string)) {
                    f48845a = string;
                    return string;
                }
            }
        } catch (Throwable unused) {
        }
        a aVar = new a();
        Intent intent = new Intent();
        intent.setAction("com.hihonor.id.HnOaIdService");
        intent.setPackage("com.hihonor.id");
        if (context.bindService(intent, aVar, 1)) {
            try {
                d.b.a(aVar.a()).a(new b());
                return f48845a;
            } catch (Exception unused2) {
            } finally {
                context.unbindService(aVar);
            }
        }
        return null;
    }
}
