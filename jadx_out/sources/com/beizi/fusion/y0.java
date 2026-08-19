package com.beizi.fusion;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;

/* loaded from: classes2.dex */
public final class y0 implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    private IBinder f17489a;

    public y0(IBinder iBinder) {
        this.f17489a = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f17489a;
    }

    public String b() {
        String string;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
            this.f17489a.transact(3, parcelObtain, parcelObtain2, 0);
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
