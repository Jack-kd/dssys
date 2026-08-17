package com.huawei.hms.ads.identifier;

import XI.kM.XI.XI.XI.K0;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.Keep;
import java.io.IOException;

@Keep
/* loaded from: classes3.dex */
public class AdvertisingIdClient {
    private static final String SETTINGS_AD_ID = "pps_oaid";
    private static final String SETTINGS_TRACK_LIMIT = "pps_track_limit";

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
        public final String getId() {
            return this.advertisingId;
        }

        @Keep
        public final boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }
    }

    public static class XI implements Runnable {

        /* renamed from: XI, reason: collision with root package name */
        public final /* synthetic */ Context f30754XI;

        public XI(Context context) {
            this.f30754XI = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                AdvertisingIdClient.requestAdvertisingIdInfo(this.f30754XI);
            } catch (Throwable unused) {
            }
        }
    }

    @Keep
    public static Info getAdvertisingIdInfo(Context context) {
        try {
            String string = Settings.Global.getString(context.getContentResolver(), SETTINGS_AD_ID);
            String string2 = Settings.Global.getString(context.getContentResolver(), SETTINGS_TRACK_LIMIT);
            if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                updateAdvertisingIdInfo(context);
                return new Info(string, Boolean.valueOf(string2).booleanValue());
            }
        } catch (Throwable unused) {
        }
        return requestAdvertisingIdInfo(context);
    }

    @Keep
    public static boolean isAdvertisingIdAvailable(Context context) throws PackageManager.NameNotFoundException {
        try {
            context.getPackageManager().getPackageInfo("com.huawei.hwid", 0);
            new Intent("com.uodis.opendevice.OPENIDS_SERVICE").setPackage("com.huawei.hwid");
            return !r4.queryIntentServices(r2, 0).isEmpty();
        } catch (PackageManager.NameNotFoundException | Exception unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Info requestAdvertisingIdInfo(Context context) throws PackageManager.NameNotFoundException, IOException {
        try {
            context.getPackageManager().getPackageInfo("com.huawei.hwid", 0);
            XI.kM.XI.XI.XI.XI xi = new XI.kM.XI.XI.XI.XI();
            Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
            intent.setPackage("com.huawei.hwid");
            try {
                if (!context.bindService(intent, xi, 1)) {
                    throw new IOException("bind failed");
                }
                try {
                    if (xi.f710XI) {
                        throw new IllegalStateException();
                    }
                    xi.f710XI = true;
                    IBinder iBinderTake = xi.f709K0.take();
                    Parcel parcelObtain = Parcel.obtain();
                    Parcel parcelObtain2 = Parcel.obtain();
                    try {
                        parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                        iBinderTake.transact(1, parcelObtain, parcelObtain2, 0);
                        parcelObtain2.readException();
                        String string = parcelObtain2.readString();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        parcelObtain = Parcel.obtain();
                        parcelObtain2 = Parcel.obtain();
                        try {
                            parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                            iBinderTake.transact(2, parcelObtain, parcelObtain2, 0);
                            parcelObtain2.readException();
                            boolean z2 = parcelObtain2.readInt() != 0;
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                            return new Info(string, z2);
                        } finally {
                        }
                    } finally {
                    }
                } catch (RemoteException unused) {
                    throw new IOException("bind hms service RemoteException");
                } catch (InterruptedException unused2) {
                    throw new IOException("bind hms service InterruptedException");
                }
            } finally {
                try {
                    context.unbindService(xi);
                } catch (Throwable unused3) {
                }
            }
        } catch (PackageManager.NameNotFoundException unused4) {
            throw new IOException("Service not found");
        }
    }

    private static void updateAdvertisingIdInfo(Context context) {
        K0.f708XI.execute(new XI(context));
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
