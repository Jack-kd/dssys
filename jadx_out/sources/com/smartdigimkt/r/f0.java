package com.smartdigimkt.r;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes5.dex */
public final class f0 implements h0 {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f42888a;

    public f0(IBinder iBinder) {
        this.f42888a = iBinder;
    }

    public final String a(String str, String str2) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.oplus.stdid.IStdID");
            parcelObtain.writeString(str);
            parcelObtain.writeString(str2);
            parcelObtain.writeString("OUID");
            this.f42888a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readString();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f42888a;
    }
}
