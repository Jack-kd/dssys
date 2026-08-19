package com.beizi.fusion;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes2.dex */
public class vq implements xq {

    /* renamed from: a, reason: collision with root package name */
    private IBinder f16765a;

    public vq(IBinder iBinder) {
        this.f16765a = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f16765a;
    }

    @Override // com.beizi.fusion.xq
    public String getOAID() {
        String string;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
            this.f16765a.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            string = parcelObtain2.readString();
        } catch (Throwable unused) {
            parcelObtain2.recycle();
            parcelObtain.recycle();
            string = null;
        }
        parcelObtain2.recycle();
        parcelObtain.recycle();
        return string;
    }
}
