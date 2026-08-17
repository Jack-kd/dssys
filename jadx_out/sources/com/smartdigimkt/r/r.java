package com.smartdigimkt.r;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes5.dex */
public final class r implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f42911a;

    public r(s sVar) {
        this.f42911a = sVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        p nVar;
        try {
            s sVar = this.f42911a;
            int i2 = o.f42909a;
            if (iBinder == null) {
                nVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(com.anythink.odopt.a.a.j.f10579a);
                nVar = iInterfaceQueryLocalInterface instanceof p ? (p) iInterfaceQueryLocalInterface : new n(iBinder);
            }
            sVar.f42915c = nVar;
            p pVar = this.f42911a.f42915c;
            if (pVar != null) {
                ((n) pVar).a(new q(this.f42911a));
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f42911a.f42915c = null;
    }
}
