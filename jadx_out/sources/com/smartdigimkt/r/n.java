package com.smartdigimkt.r;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes5.dex */
public final class n implements p {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f42908a;

    public n(IBinder iBinder) {
        this.f42908a = iBinder;
    }

    public final void a(q qVar) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(com.anythink.odopt.a.a.j.f10579a);
            parcelObtain.writeStrongBinder(qVar);
            this.f42908a.transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f42908a;
    }
}
