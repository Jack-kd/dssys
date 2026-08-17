package com.beizi.fusion;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes2.dex */
public class zg implements bh {

    /* renamed from: a, reason: collision with root package name */
    private IBinder f17879a;

    public zg(IBinder iBinder) {
        this.f17879a = iBinder;
    }

    @Override // com.beizi.fusion.bh
    public String a() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            try {
                parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                this.f17879a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } catch (Exception e2) {
                e2.printStackTrace();
                parcelObtain2.recycle();
                parcelObtain.recycle();
                return null;
            }
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }
}
