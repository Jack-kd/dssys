package com.kwad.sdk.core.e.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.kwad.sdk.core.e.b.d;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes4.dex */
public final class d {
    private Context mContext;
    private final LinkedBlockingQueue<IBinder> mLinkedBlockingQueue = new LinkedBlockingQueue<>(1);
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.kwad.sdk.core.e.a.d.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                com.kwad.sdk.core.d.c.i("HWDeviceIDHelper", "onServiceConnected");
                d.this.mLinkedBlockingQueue.put(iBinder);
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.printStackTrace(e2);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };

    public d(Context context) {
        this.mContext = context;
    }

    public final String getOAID() {
        String iDs = "";
        try {
            Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
            intent.setPackage("com.huawei.hwid");
            try {
                if (!this.mContext.bindService(intent, this.serviceConnection, 1)) {
                    return "";
                }
                try {
                    d.a aVar = new d.a(this.mLinkedBlockingQueue.take());
                    iDs = aVar.getIDs();
                    com.kwad.sdk.core.d.c.i("HWDeviceIDHelper", "getOAID oaid:" + iDs + "--boos:" + aVar.getBoos());
                    return iDs;
                } catch (Exception e2) {
                    com.kwad.sdk.core.d.c.printStackTrace(e2);
                    this.mContext.unbindService(this.serviceConnection);
                    return iDs;
                }
            } finally {
                this.mContext.unbindService(this.serviceConnection);
            }
        } catch (Exception e3) {
            com.kwad.sdk.core.d.c.i("HWDeviceIDHelper", "getOAID hw service not found");
            com.kwad.sdk.core.d.c.printStackTraceOnly(e3);
        }
    }
}
