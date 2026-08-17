package com.meishu.sdk.core.oaid.honor;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.anythink.odopt.a.a.i;
import com.meishu.sdk.core.oaid.honor.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.l;
import com.umeng.analytics.pro.bk;

/* loaded from: classes4.dex */
public abstract class b extends Binder implements IInterface {
    public b() {
        attachInterface(this, i.f10577a);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            parcel.enforceInterface(i.f10577a);
            parcel.readInt();
            parcel.readLong();
            parcel.readInt();
            parcel.readFloat();
            parcel.readDouble();
            parcel.readString();
        } else {
            if (i2 != 2) {
                if (i2 == 1598968902) {
                    parcel2.writeString(i.f10577a);
                    return true;
                }
                try {
                    return super.onTransact(i2, parcel, parcel2, i3);
                } catch (RemoteException e2) {
                    throw new RuntimeException(e2);
                }
            }
            parcel.enforceInterface(i.f10577a);
            int i4 = parcel.readInt();
            Bundle bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
            a.b bVar = (a.b) this;
            if (i4 == 0) {
                try {
                    bundle.keySet();
                    String string = bundle.getString(bk.c.f48849b);
                    LogUtil.d("HonorOaidUtil", "honorOaid=" + string);
                    a.c cVar = a.this.f31682a;
                    if (cVar != null) {
                        ((l.a) cVar).a(string);
                    }
                } catch (Exception e3) {
                    try {
                        e3.getMessage();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                } catch (Throwable unused) {
                }
            }
        }
        parcel2.writeNoException();
        return true;
    }
}
