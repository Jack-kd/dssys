package com.smartdigimkt.r;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/* loaded from: classes5.dex */
public final class l implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m f42899a;

    public l(m mVar) {
        this.f42899a = mVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        k iVar;
        m mVar = this.f42899a;
        int i2 = j.f42894a;
        if (iBinder == null) {
            iVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            iVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof k)) ? new i(iBinder) : (k) iInterfaceQueryLocalInterface;
        }
        mVar.f42903c = iVar;
        m mVar2 = this.f42899a;
        k kVar = mVar2.f42903c;
        try {
            if (kVar != null) {
                try {
                    com.smartdigimkt.q.a aVar = mVar2.f42904d;
                    if (aVar != null) {
                        aVar.a(((i) kVar).a(), ((i) this.f42899a.f42903c).b());
                    }
                } catch (RemoteException e2) {
                    com.smartdigimkt.q.a aVar2 = this.f42899a.f42904d;
                    if (aVar2 != null) {
                        aVar2.a(e2.getMessage());
                    }
                } catch (Exception e3) {
                    com.smartdigimkt.q.a aVar3 = this.f42899a.f42904d;
                    if (aVar3 != null) {
                        aVar3.a(e3.getMessage());
                    }
                }
            }
        } finally {
            m.a(this.f42899a);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f42899a.f42903c = null;
    }
}
