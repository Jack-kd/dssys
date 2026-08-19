package com.smartdigimkt.r;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes5.dex */
public final class c implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final Context f42876a;

    /* renamed from: b, reason: collision with root package name */
    public com.smartdigimkt.q.a f42877b;

    public c(Context context) {
        this.f42876a = context;
    }

    public final void a(com.smartdigimkt.q.b bVar) {
        if (this.f42876a == null) {
            return;
        }
        try {
            this.f42877b = bVar;
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.coolpad.deviceidsupport", "com.coolpad.deviceidsupport.DeviceIdService"));
            if (this.f42876a.bindService(intent, this, 1)) {
                return;
            }
            bVar.a("Service binding failed.");
        } catch (Throwable th) {
            com.smartdigimkt.q.a aVar = this.f42877b;
            if (aVar != null) {
                aVar.a(th.getMessage());
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        v tVar;
        try {
            int i2 = u.f42918a;
            if (iBinder == null) {
                tVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                tVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof v)) ? new t(iBinder) : (v) iInterfaceQueryLocalInterface;
            }
            if (tVar != null) {
                com.smartdigimkt.q.a aVar = this.f42877b;
                String packageName = this.f42876a.getPackageName();
                t tVar2 = (t) tVar;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    parcelObtain.writeString(packageName);
                    tVar2.f42917a.transact(2, parcelObtain, parcelObtain2, 0);
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
                this.f42877b.a("CoolpadIdsSupplier == null");
            }
        } catch (Throwable th2) {
            try {
                com.smartdigimkt.q.a aVar2 = this.f42877b;
                if (aVar2 != null) {
                    aVar2.a(th2.getMessage());
                }
                try {
                    this.f42876a.unbindService(this);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            } finally {
                try {
                    this.f42876a.unbindService(this);
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
