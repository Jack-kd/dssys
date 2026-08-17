package com.beizi.fusion;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes2.dex */
public class ah implements ch {

    /* renamed from: a, reason: collision with root package name */
    private IBinder f12642a;

    public ah(IBinder iBinder) {
        this.f12642a = iBinder;
    }

    @Override // com.beizi.fusion.ch
    public String a() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            try {
                parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                this.f12642a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } catch (Exception e2) {
                rm.a(e2);
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
