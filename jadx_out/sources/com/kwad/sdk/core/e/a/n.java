package com.kwad.sdk.core.e.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.bun.miitmdid.content.StringValues;
import com.kwad.sdk.core.e.b.h;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes4.dex */
public final class n {
    public Context mContext;
    private final LinkedBlockingQueue<IBinder> mLinkedBlockingQueue = new LinkedBlockingQueue<>(1);
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.kwad.sdk.core.e.a.n.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                com.kwad.sdk.core.d.c.i("ZTEDeviceIDHelper", "onServiceConnected");
                n.this.mLinkedBlockingQueue.put(iBinder);
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.printStackTrace(e2);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };

    public n(Context context) {
        this.mContext = context;
    }

    public final String getOAID() {
        String oaid = "";
        try {
            Intent intent = new Intent();
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
            intent.setAction(StringValues.ACTION_BINDTO_MSASERVICE);
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.mContext.getPackageName());
            boolean zBindService = this.mContext.bindService(intent, this.serviceConnection, 1);
            com.kwad.sdk.core.d.c.i("ZTEDeviceIDHelper", "getOAID isBind=" + zBindService);
            if (!zBindService) {
                return "";
            }
            try {
                try {
                    oaid = new h.a(this.mLinkedBlockingQueue.take()).getOAID();
                    com.kwad.sdk.core.d.c.i("ZTEDeviceIDHelper", "getOAID oaid:" + oaid);
                    return oaid;
                } catch (Exception e2) {
                    com.kwad.sdk.core.d.c.printStackTrace(e2);
                    this.mContext.unbindService(this.serviceConnection);
                    return oaid;
                }
            } finally {
                this.mContext.unbindService(this.serviceConnection);
            }
        } catch (Exception e3) {
            com.kwad.sdk.core.d.c.i("ZTEDeviceIDHelper", "getOAID hw service not found");
            com.kwad.sdk.core.d.c.printStackTrace(e3);
            return oaid;
        }
    }
}
