package com.beizi.fusion;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public class vm implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    private IBinder f16702a;

    public vm(IBinder iBinder) {
        this.f16702a = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f16702a;
    }

    public String b() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.samsung.android.deviceidservice.IDeviceIdService");
            this.f16702a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readString();
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                parcelObtain2.recycle();
                parcelObtain.recycle();
                return null;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }
}
