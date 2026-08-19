package com.ubix.ssp.ad.e.a0.c0.h.r.b.a;

import android.os.IBinder;
import android.os.Parcel;
import com.anythink.odopt.a.a.j;
import com.ubix.ssp.ad.e.a0.c0.h.r.b.a.a;

/* loaded from: classes5.dex */
public class b implements c {

    /* renamed from: a, reason: collision with root package name */
    public IBinder f46203a;

    public b(IBinder iBinder) {
        this.f46203a = iBinder;
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.h.r.b.a.c
    public void a(a.AbstractBinderC0793a abstractBinderC0793a) throws Throwable {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcel = null;
        try {
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain2.writeInterfaceToken(j.f10579a);
                if (abstractBinderC0793a == null) {
                    abstractBinderC0793a = null;
                }
                parcelObtain2.writeStrongBinder(abstractBinderC0793a);
                this.f46203a.transact(2, parcelObtain2, parcelObtain, 0);
                parcelObtain.readException();
                parcelObtain.recycle();
                parcelObtain2.recycle();
            } catch (Throwable th) {
                th = th;
                parcel = parcelObtain2;
                parcelObtain.recycle();
                parcel.recycle();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f46203a;
    }

    @Override // com.ubix.ssp.ad.e.a0.c0.h.r.b.a.c
    public void b(a.AbstractBinderC0793a abstractBinderC0793a) throws Throwable {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcel = null;
        try {
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain2.writeInterfaceToken(j.f10579a);
                if (abstractBinderC0793a == null) {
                    abstractBinderC0793a = null;
                }
                parcelObtain2.writeStrongBinder(abstractBinderC0793a);
                this.f46203a.transact(3, parcelObtain2, parcelObtain, 0);
                parcelObtain.readException();
                parcelObtain.recycle();
                parcelObtain2.recycle();
            } catch (Throwable th) {
                th = th;
                parcel = parcelObtain2;
                parcelObtain.recycle();
                parcel.recycle();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
