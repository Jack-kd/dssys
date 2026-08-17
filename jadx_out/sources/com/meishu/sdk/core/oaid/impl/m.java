package com.meishu.sdk.core.oaid.impl;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.meishu.sdk.core.oaid.OAIDException;
import java.util.Objects;

/* loaded from: classes4.dex */
public class m implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final Context f31700a;

    /* renamed from: b, reason: collision with root package name */
    public final com.meishu.sdk.core.oaid.a f31701b;

    /* renamed from: c, reason: collision with root package name */
    public final a f31702c;

    @FunctionalInterface
    public interface a {
        String a(IBinder iBinder) throws OAIDException, RemoteException;
    }

    public m(Context context, com.meishu.sdk.core.oaid.a aVar, a aVar2) {
        if (context instanceof Application) {
            this.f31700a = context;
        } else {
            this.f31700a = context.getApplicationContext();
        }
        this.f31701b = aVar;
        this.f31702c = aVar2;
    }

    public static void a(Context context, Intent intent, com.meishu.sdk.core.oaid.a aVar, a aVar2) {
        m mVar = new m(context, aVar, aVar2);
        try {
            if (!mVar.f31700a.bindService(intent, mVar, 1)) {
                throw new OAIDException("Service binding failed");
            }
            Objects.toString(intent);
        } catch (Exception e2) {
            ((com.meishu.sdk.core.utils.l) mVar.f31701b).a(e2);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        String strA;
        try {
            try {
                try {
                    strA = this.f31702c.a(iBinder);
                } catch (Exception e2) {
                    ((com.meishu.sdk.core.utils.l) this.f31701b).a(e2);
                    this.f31700a.unbindService(this);
                }
                if (strA == null || strA.length() == 0) {
                    throw new OAIDException("OAID acquire failed");
                }
                ((com.meishu.sdk.core.utils.l) this.f31701b).a(strA);
                this.f31700a.unbindService(this);
                componentName.getClassName();
            } catch (Throwable th) {
                try {
                    this.f31700a.unbindService(this);
                    componentName.getClassName();
                } catch (Exception unused) {
                }
                throw th;
            }
        } catch (Exception unused2) {
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        componentName.getClassName();
    }
}
