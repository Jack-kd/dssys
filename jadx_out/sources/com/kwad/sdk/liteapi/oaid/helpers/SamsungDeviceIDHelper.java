package com.kwad.sdk.liteapi.oaid.helpers;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.Keep;
import com.kwad.sdk.liteapi.LiteApiLogger;
import com.kwad.sdk.liteapi.oaid.interfaces.SamsungIDInterface;
import java.util.concurrent.LinkedBlockingQueue;

@Keep
/* loaded from: classes4.dex */
public class SamsungDeviceIDHelper {
    private static final String TAG = "SamsungDeviceIDHelper";
    private Context mContext;
    private final LinkedBlockingQueue<IBinder> linkedBlockingQueue = new LinkedBlockingQueue<>(1);
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.kwad.sdk.liteapi.oaid.helpers.SamsungDeviceIDHelper.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                SamsungDeviceIDHelper.this.linkedBlockingQueue.put(iBinder);
            } catch (Exception e2) {
                LiteApiLogger.printStackTrace(e2);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };

    public SamsungDeviceIDHelper(Context context) {
        this.mContext = context;
    }

    public String getOAID() {
        String id = "";
        try {
            Intent intent = new Intent();
            intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
            if (!this.mContext.bindService(intent, this.serviceConnection, 1)) {
                return "";
            }
            try {
                try {
                    id = new SamsungIDInterface.a(this.linkedBlockingQueue.take()).getID();
                    LiteApiLogger.i(TAG, "getOAID oaid:" + id);
                    return id;
                } catch (Exception e2) {
                    LiteApiLogger.printStackTrace(e2);
                    this.mContext.unbindService(this.serviceConnection);
                    return id;
                }
            } finally {
                this.mContext.unbindService(this.serviceConnection);
            }
        } catch (Exception e3) {
            LiteApiLogger.i(TAG, "getOAID service not found");
            LiteApiLogger.printStackTrace(e3);
            return id;
        }
    }
}
