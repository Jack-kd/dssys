package com.kwad.sdk.liteapi.oaid.helpers;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.Keep;
import com.bun.miitmdid.content.StringValues;
import com.kwad.sdk.liteapi.LiteApiLogger;
import com.kwad.sdk.liteapi.oaid.interfaces.ZTEIDInterface;
import java.util.concurrent.LinkedBlockingQueue;

@Keep
/* loaded from: classes4.dex */
public class ZTEDeviceIDHelper {
    private static final String TAG = "ZTEDeviceIDHelper";
    public Context mContext;
    private final LinkedBlockingQueue<IBinder> mLinkedBlockingQueue = new LinkedBlockingQueue<>(1);
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.kwad.sdk.liteapi.oaid.helpers.ZTEDeviceIDHelper.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) throws InterruptedException {
            try {
                LiteApiLogger.i(ZTEDeviceIDHelper.TAG, "onServiceConnected");
                ZTEDeviceIDHelper.this.mLinkedBlockingQueue.put(iBinder);
            } catch (Exception e2) {
                LiteApiLogger.printStackTrace(e2);
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    };

    public ZTEDeviceIDHelper(Context context) {
        this.mContext = context;
    }

    private void startMsaklServer(String str) {
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
        intent.setAction(StringValues.ACTION_START_MSASERVICE);
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, str);
        try {
            intent.putExtra("com.bun.msa.param.runinset", true);
            this.mContext.startService(intent);
        } catch (Exception e2) {
            LiteApiLogger.printStackTrace(e2);
        }
    }

    public String getOAID() {
        String oaid = "";
        try {
            Intent intent = new Intent();
            intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
            intent.setAction(StringValues.ACTION_BINDTO_MSASERVICE);
            intent.putExtra(StringValues.PARAM_BIND_PKGNAME, this.mContext.getPackageName());
            boolean zBindService = this.mContext.bindService(intent, this.serviceConnection, 1);
            LiteApiLogger.i(TAG, "getOAID isBind=" + zBindService);
            if (!zBindService) {
                return "";
            }
            try {
                try {
                    oaid = new ZTEIDInterface.a(this.mLinkedBlockingQueue.take()).getOAID();
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
            LiteApiLogger.i(TAG, "getOAID hw service not found");
            LiteApiLogger.printStackTrace(e3);
            return oaid;
        }
    }
}
