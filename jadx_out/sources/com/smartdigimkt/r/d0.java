package com.smartdigimkt.r;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import java.security.MessageDigest;

/* loaded from: classes5.dex */
public final class d0 implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e0 f42880a;

    public d0(e0 e0Var) {
        this.f42880a = e0Var;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        h0 f0Var;
        e0 e0Var = this.f42880a;
        int i2 = g0.f42889a;
        if (iBinder == null) {
            f0Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.oplus.stdid.IStdID");
            f0Var = iInterfaceQueryLocalInterface instanceof h0 ? (h0) iInterfaceQueryLocalInterface : new f0(iBinder);
        }
        e0Var.f42883b = f0Var;
        e0 e0Var2 = this.f42880a;
        e0Var2.getClass();
        try {
            Context context = e0Var2.f42882a;
            if (context == null) {
                com.smartdigimkt.q.a aVar = e0Var2.f42884c;
                if (aVar != null) {
                    aVar.a("context is null.");
                }
            } else if (e0Var2.f42883b == null) {
                com.smartdigimkt.q.a aVar2 = e0Var2.f42884c;
                if (aVar2 != null) {
                    aVar2.a("realmeOaidInterface is null.");
                }
            } else {
                String packageName = context.getPackageName();
                if (e0Var2.f42885d == null) {
                    byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(e0Var2.f42882a.getPackageManager().getPackageInfo(packageName, 64).signatures[0].toByteArray());
                    StringBuilder sb = new StringBuilder();
                    for (byte b3 : bArrDigest) {
                        sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3));
                    }
                    e0Var2.f42885d = sb.toString();
                }
                String strA = ((f0) e0Var2.f42883b).a(packageName, e0Var2.f42885d);
                com.smartdigimkt.q.a aVar3 = e0Var2.f42884c;
                if (aVar3 != null) {
                    aVar3.a(strA, false);
                }
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f42880a.f42883b = null;
    }
}
