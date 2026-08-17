package com.czhj.devicehelper.honor.oaid;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.czhj.devicehelper.honor.oaid.a;

/* loaded from: classes3.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {

        /* renamed from: a, reason: collision with root package name */
        private static final String f29196a = "com.hihonor.cloudservice.oaid.IOAIDService";

        /* renamed from: com.czhj.devicehelper.honor.oaid.b$a$a, reason: collision with other inner class name */
        public static class C0452a implements b {

            /* renamed from: a, reason: collision with root package name */
            public IBinder f29197a;

            public C0452a(IBinder iBinder) {
                this.f29197a = iBinder;
            }

            @Override // com.czhj.devicehelper.honor.oaid.b
            public void a(a.AbstractBinderC0451a abstractBinderC0451a) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcel = null;
                try {
                    Parcel parcelObtain2 = Parcel.obtain();
                    try {
                        parcelObtain2.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                        if (abstractBinderC0451a == null) {
                            abstractBinderC0451a = null;
                        }
                        parcelObtain2.writeStrongBinder(abstractBinderC0451a);
                        this.f29197a.transact(2, parcelObtain2, parcelObtain, 0);
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
                return this.f29197a;
            }

            @Override // com.czhj.devicehelper.honor.oaid.b
            public void b(a.AbstractBinderC0451a abstractBinderC0451a) throws Throwable {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcel = null;
                try {
                    Parcel parcelObtain2 = Parcel.obtain();
                    try {
                        parcelObtain2.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                        if (abstractBinderC0451a == null) {
                            abstractBinderC0451a = null;
                        }
                        parcelObtain2.writeStrongBinder(abstractBinderC0451a);
                        this.f29197a.transact(3, parcelObtain2, parcelObtain, 0);
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
    }

    void a(a.AbstractBinderC0451a abstractBinderC0451a) throws RemoteException;

    void b(a.AbstractBinderC0451a abstractBinderC0451a) throws RemoteException;
}
