package com.smartdigimkt.r;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes5.dex */
public final class h implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final Context f42890a;

    /* renamed from: b, reason: collision with root package name */
    public com.smartdigimkt.q.a f42891b;

    public h(Context context) {
        this.f42890a = context;
    }

    public final void a(com.smartdigimkt.q.b bVar) {
        if (this.f42890a == null) {
            return;
        }
        this.f42891b = bVar;
        try {
            Intent intent = new Intent("android.service.action.msa");
            intent.setPackage("com.android.creator");
            if (this.f42890a.bindService(intent, this, 1)) {
                return;
            }
            bVar.a("Service binding failed.");
        } catch (Throwable th) {
            bVar.a(th.getMessage());
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        g eVar;
        try {
            int i2 = f.f42887a;
            if (iBinder == null) {
                eVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.android.creator.FreemeIdsSupplier");
                eVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof g)) ? new e(iBinder) : (g) iInterfaceQueryLocalInterface;
            }
            if (eVar != null) {
                com.smartdigimkt.q.a aVar = this.f42891b;
                e eVar2 = (e) eVar;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.creator.FreemeIdsSupplier");
                    eVar2.f42881a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    String string = parcelObtain2.readString();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    aVar.a(string, false);
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            } else {
                this.f42891b.a("FreemeIdsSupplier == null");
            }
        } catch (Throwable th2) {
            try {
                com.smartdigimkt.q.a aVar2 = this.f42891b;
                if (aVar2 != null) {
                    aVar2.a(th2.getMessage());
                }
                try {
                    this.f42890a.unbindService(this);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            } finally {
                try {
                    this.f42890a.unbindService(this);
                } catch (Throwable th4) {
                    th4.printStackTrace();
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
