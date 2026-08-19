package com.smartdigimkt.s;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes5.dex */
public final class f {
    public static String a(IBinder iBinder) {
        e cVar;
        int i2 = d.f43090a;
        if (iBinder == null) {
            cVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bun.lib.MsaIdInterface");
            cVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new c(iBinder) : (e) iInterfaceQueryLocalInterface;
        }
        if (cVar == null) {
            throw new RuntimeException("MsaIdInterface is null");
        }
        c cVar2 = (c) cVar;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
            cVar2.f43089a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            if (!(parcelObtain2.readInt() != 0)) {
                throw new RuntimeException("MsaIdInterface#isSupported return false");
            }
            parcelObtain = Parcel.obtain();
            parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                cVar2.f43089a.transact(3, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
            }
        } finally {
        }
    }
}
