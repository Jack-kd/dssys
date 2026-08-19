package com.czhj.devicehelper.cnoaid.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.czhj.devicehelper.cnoaid.com.oplus.stdid.IStdID;
import com.czhj.devicehelper.cnoaid.impl.n;

/* loaded from: classes3.dex */
public class o extends p {

    /* renamed from: a, reason: collision with root package name */
    private static final String f29167a = "action.com.oplus.stdid.ID_SERVICE";

    /* renamed from: b, reason: collision with root package name */
    private static final String f29168b = "com.coloros.mcs";

    /* renamed from: c, reason: collision with root package name */
    private static final String f29169c = "com.oplus.stdid.IdentifyService";

    /* renamed from: d, reason: collision with root package name */
    private final Context f29170d;

    public o(Context context) {
        super(context);
        this.f29170d = context;
    }

    @Override // com.czhj.devicehelper.cnoaid.impl.p
    public String a(IBinder iBinder, String str, String str2) throws com.czhj.devicehelper.cnoaid.f, RemoteException {
        IStdID iStdIDAsInterface = IStdID.Stub.asInterface(iBinder);
        if (iStdIDAsInterface != null) {
            return iStdIDAsInterface.getSerID(str, str2, "OUID");
        }
        throw new com.czhj.devicehelper.cnoaid.f("IStdID is null");
    }

    @Override // com.czhj.devicehelper.cnoaid.impl.p, com.czhj.devicehelper.cnoaid.d
    public void a(com.czhj.devicehelper.cnoaid.c cVar) {
        if (this.f29170d == null || cVar == null) {
            return;
        }
        Intent intent = new Intent(f29167a);
        intent.setComponent(new ComponentName(f29168b, f29169c));
        n.a(this.f29170d, intent, cVar, new n.a() { // from class: com.czhj.devicehelper.cnoaid.impl.o.1
            @Override // com.czhj.devicehelper.cnoaid.impl.n.a
            public String a(IBinder iBinder) throws com.czhj.devicehelper.cnoaid.f, RemoteException {
                try {
                    return o.this.a(iBinder);
                } catch (RemoteException e2) {
                    throw e2;
                } catch (com.czhj.devicehelper.cnoaid.f e3) {
                    throw e3;
                } catch (Exception e4) {
                    throw new com.czhj.devicehelper.cnoaid.f(e4);
                }
            }
        });
    }

    @Override // com.czhj.devicehelper.cnoaid.impl.p, com.czhj.devicehelper.cnoaid.d
    public boolean a() {
        Context context = this.f29170d;
        if (context == null) {
            return false;
        }
        try {
            return context.getPackageManager().getPackageInfo(f29168b, 0) != null;
        } catch (Exception e2) {
            com.czhj.devicehelper.cnoaid.g.a(e2);
            return false;
        }
    }
}
