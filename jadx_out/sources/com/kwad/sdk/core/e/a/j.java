package com.kwad.sdk.core.e.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.os.IBinder;
import com.kwad.sdk.core.e.b.f;
import com.kwad.sdk.utils.aa;
import java.security.MessageDigest;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes4.dex */
public final class j {
    private Context mContext;
    private final LinkedBlockingQueue<IBinder> mLinkedBlockingQueue = new LinkedBlockingQueue<>(1);
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.kwad.sdk.core.e.a.j.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            com.kwad.sdk.core.d.c.i("OppoDeviceIDHelper", "onServiceConnected");
            try {
                j.this.mLinkedBlockingQueue.put(iBinder);
            } catch (InterruptedException e2) {
                com.kwad.sdk.core.d.c.printStackTrace(e2);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };

    public j(Context context) {
        this.mContext = context;
    }

    private String getSign() {
        Signature[] signatureArr;
        try {
            Context context = this.mContext;
            PackageInfo packageInfo = aa.getPackageInfo(context, context.getPackageName(), 64);
            if (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length <= 0) {
                return null;
            }
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(signatureArr[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            for (byte b3 : bArrDigest) {
                sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3));
            }
            return sb.toString();
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.printStackTrace(e2);
            return null;
        }
    }

    public final String getOAID() {
        String serID = "";
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
            intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
            boolean zBindService = this.mContext.bindService(intent, this.serviceConnection, 1);
            com.kwad.sdk.core.d.c.i("OppoDeviceIDHelper", "getOAID isBin=" + zBindService);
            if (!zBindService) {
                return "";
            }
            try {
                try {
                    serID = new f.a(this.mLinkedBlockingQueue.take()).getSerID(this.mContext.getPackageName(), getSign(), "OUID");
                    com.kwad.sdk.core.d.c.i("OppoDeviceIDHelper", "getOAID oaid" + serID);
                    return serID;
                } catch (Exception e2) {
                    com.kwad.sdk.core.d.c.printStackTrace(e2);
                    this.mContext.unbindService(this.serviceConnection);
                    return serID;
                }
            } finally {
                this.mContext.unbindService(this.serviceConnection);
            }
        } catch (Exception e3) {
            com.kwad.sdk.core.d.c.i("OppoDeviceIDHelper", "getOAID service not found");
            com.kwad.sdk.core.d.c.printStackTraceOnly(e3);
            return serID;
        }
    }
}
