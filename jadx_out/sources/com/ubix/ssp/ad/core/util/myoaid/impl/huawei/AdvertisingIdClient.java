package com.ubix.ssp.ad.core.util.myoaid.impl.huawei;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.ubix.ssp.ad.e.a0.c0.i.b.a;
import com.ubix.ssp.ad.e.a0.u;
import java.io.IOException;

@Keep
/* loaded from: classes5.dex */
public class AdvertisingIdClient {
    private static final String SETTINGS_AD_ID = "pps_oaid";
    private static final String SETTINGS_TRACK_LIMIT = "pps_track_limit";
    private static final String TAG = "AdvertisingIdClient";

    @Keep
    public static final class Info {
        private final String advertisingId;
        private final boolean limitAdTrackingEnabled;

        @Keep
        public Info(String str, boolean z2) {
            this.advertisingId = str;
            this.limitAdTrackingEnabled = z2;
        }

        @Keep
        public String getId() {
            return this.advertisingId;
        }

        @Keep
        public boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f45731a;

        public a(Context context) {
            this.f45731a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                AdvertisingIdClient.requestAdvertisingIdInfo(this.f45731a);
            } catch (Throwable unused) {
            }
        }
    }

    @Keep
    public static Info getAdvertisingIdInfo(Context context) {
        try {
            if (TextUtils.isEmpty(Settings.Global.getString(context.getContentResolver(), "pps_oaid_c"))) {
                return null;
            }
            Info infoA = c.a(context);
            return infoA != null ? infoA : requestAdvertisingIdInfo(context);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Info getIdInfoViaAIDL(Context context) throws PackageManager.NameNotFoundException, IOException {
        try {
            context.getPackageManager().getPackageInfo(d.a(context), 64);
            b bVar = new b();
            Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
            intent.setPackage(d.a(context));
            try {
                if (!context.bindService(intent, bVar, 1)) {
                    throw new IOException("bind failed");
                }
                try {
                    try {
                        com.ubix.ssp.ad.e.a0.c0.i.b.a aVarA = a.AbstractBinderC0796a.a(bVar.a());
                        return new Info(aVarA.i(), aVarA.g());
                    } catch (RemoteException unused) {
                        throw new IOException("bind hms service RemoteException");
                    }
                } catch (InterruptedException unused2) {
                    throw new IOException("bind hms service InterruptedException");
                }
            } finally {
                try {
                    context.unbindService(bVar);
                } catch (Throwable unused3) {
                }
            }
        } catch (PackageManager.NameNotFoundException unused4) {
            throw new IOException("Service not found");
        } catch (Exception unused5) {
            throw new IOException("Service not found: Exception");
        }
    }

    @Keep
    public static boolean isAdvertisingIdAvailable(Context context) throws PackageManager.NameNotFoundException {
        try {
            context.getPackageManager().getPackageInfo(d.a(context), 128);
            new Intent("com.uodis.opendevice.OPENIDS_SERVICE").setPackage(d.a(context));
            return !r1.queryIntentServices(r2, 0).isEmpty();
        } catch (PackageManager.NameNotFoundException | Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Info requestAdvertisingIdInfo(Context context) {
        if (c.d(context)) {
            u.e(TAG, "requestAdvertisingIdInfo via provider");
            return c.c(context);
        }
        u.e(TAG, "requestAdvertisingIdInfo via aidl");
        return getIdInfoViaAIDL(context);
    }

    private static void updateAdvertisingIdInfo(Context context) {
        f.f45758a.execute(new a(context));
    }

    @Keep
    public static boolean verifyAdId(Context context, String str, boolean z2) {
        Info infoRequestAdvertisingIdInfo = requestAdvertisingIdInfo(context);
        if (infoRequestAdvertisingIdInfo != null && TextUtils.equals(str, infoRequestAdvertisingIdInfo.getId())) {
            if (z2 == infoRequestAdvertisingIdInfo.isLimitAdTrackingEnabled()) {
                return true;
            }
        }
        return false;
    }
}
