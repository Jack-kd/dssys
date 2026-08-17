package com.czhj.sdk.common.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.czhj.sdk.logger.SigmobLog;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes3.dex */
public class PlayServicesUtil {

    public static final class AdvertisingConnection implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        boolean f29500a;

        /* renamed from: b, reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f29501b;

        private AdvertisingConnection() {
            this.f29500a = false;
            this.f29501b = new LinkedBlockingQueue<>(1);
        }

        public IBinder a() throws InterruptedException {
            if (this.f29500a) {
                throw new IllegalStateException();
            }
            this.f29500a = true;
            return this.f29501b.take();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f29501b.put(iBinder);
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static class AdvertisingInfo {
        public final String advertisingId;
        public final boolean limitAdTracking;

        public AdvertisingInfo(String str, boolean z2) {
            this.advertisingId = str;
            this.limitAdTracking = z2;
        }
    }

    public static final class AdvertisingInterface implements IInterface {

        /* renamed from: a, reason: collision with root package name */
        private final IBinder f29502a;

        public AdvertisingInterface(IBinder iBinder) {
            this.f29502a = iBinder;
        }

        public String a() throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f29502a;
        }

        public boolean b() throws RemoteException {
            return false;
        }
    }

    public static AdvertisingInfo getAdvertisingIdInfo(Context context) throws Exception {
        Looper.myLooper();
        Looper.getMainLooper();
        return null;
    }
}
