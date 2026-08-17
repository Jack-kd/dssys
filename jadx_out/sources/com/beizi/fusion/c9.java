package com.beizi.fusion;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes2.dex */
public final class c9 implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    private IBinder f13231a;

    public c9(IBinder iBinder) {
        this.f13231a = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f13231a;
    }

    public boolean b() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        boolean z2 = false;
        try {
            parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            this.f13231a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            if (parcelObtain2.readInt() == 0) {
                z2 = true;
            }
        } catch (Throwable unused) {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
        parcelObtain.recycle();
        parcelObtain2.recycle();
        return z2;
    }

    public String c() {
        String string;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            this.f13231a.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            string = parcelObtain2.readString();
        } catch (Throwable th) {
            parcelObtain.recycle();
            parcelObtain2.recycle();
            rm.a(th);
            string = null;
        }
        parcelObtain.recycle();
        parcelObtain2.recycle();
        return string;
    }
}
