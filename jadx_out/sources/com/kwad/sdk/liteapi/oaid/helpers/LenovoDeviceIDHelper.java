package com.kwad.sdk.liteapi.oaid.helpers;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.Keep;
import com.kwad.sdk.liteapi.LiteApiLogger;
import com.kwad.sdk.liteapi.oaid.interfaces.LenovoIDInterface;
import java.util.concurrent.LinkedBlockingQueue;

@Keep
/* loaded from: classes4.dex */
public class LenovoDeviceIDHelper {
    private static final String TAG = "LenovoDeviceIDHelper";
    private Context mContext;
    private final LinkedBlockingQueue<IBinder> mLinkedBlockingQueue = new LinkedBlockingQueue<>(1);
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.kwad.sdk.liteapi.oaid.helpers.LenovoDeviceIDHelper.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                LiteApiLogger.i(LenovoDeviceIDHelper.TAG, "onServiceConnected");
                LenovoDeviceIDHelper.this.mLinkedBlockingQueue.put(iBinder);
            } catch (Exception e2) {
                LiteApiLogger.printStackTrace(e2);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };

    public LenovoDeviceIDHelper(Context context) {
        this.mContext = context;
    }

    public String getOAID() {
        String oaid = "";
        try {
            Intent intent = new Intent();
            intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
            if (!this.mContext.bindService(intent, this.serviceConnection, 1)) {
                return "";
            }
            try {
                try {
                    oaid = new LenovoIDInterface.a(this.mLinkedBlockingQueue.take()).getOaid();
                    LiteApiLogger.i(TAG, "getOAID oaid:" + oaid);
                    return oaid;
                } catch (Exception e2) {
                    LiteApiLogger.printStackTrace(e2);
                    this.mContext.unbindService(this.serviceConnection);
                    return oaid;
                }
            } finally {
                this.mContext.unbindService(this.serviceConnection);
            }
        } catch (Exception e3) {
            LiteApiLogger.i(TAG, "getOAID Lenovo service not found");
            LiteApiLogger.printStackTrace(e3);
            return oaid;
        }
    }
}
