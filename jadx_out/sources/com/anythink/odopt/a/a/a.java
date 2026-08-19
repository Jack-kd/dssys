package com.anythink.odopt.a.a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;

/* loaded from: classes2.dex */
public final class a implements IInterface {

    /* renamed from: a, reason: collision with root package name */
    private IBinder f10529a;

    public a(IBinder iBinder) {
        this.f10529a = iBinder;
    }

    public final String a() {
        String string;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
            this.f10529a.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            string = parcelObtain2.readString();
        } catch (Throwable th) {
            parcelObtain.recycle();
            parcelObtain2.recycle();
            th.printStackTrace();
            string = null;
        }
        parcelObtain.recycle();
        parcelObtain2.recycle();
        return string;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f10529a;
    }
}
