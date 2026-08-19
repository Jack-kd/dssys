package com.meishu.sdk.core.oaid.repeackage.com.bun.lib;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface a extends IInterface {

    /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.bun.lib.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0661a extends Binder implements a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f31715a = 0;

        /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.bun.lib.a$a$a, reason: collision with other inner class name */
        public static class C0662a implements a {

            /* renamed from: a, reason: collision with root package name */
            public IBinder f31716a;

            public C0662a(IBinder iBinder) {
                this.f31716a = iBinder;
            }

            @Override // com.meishu.sdk.core.oaid.repeackage.com.bun.lib.a
            public String a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (!this.f31716a.transact(3, parcelObtain, parcelObtain2, 0)) {
                        int i2 = AbstractBinderC0661a.f31715a;
                    }
                    parcelObtain2.readException();
                    String string = parcelObtain2.readString();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return string;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f31716a;
            }

            @Override // com.meishu.sdk.core.oaid.repeackage.com.bun.lib.a
            public boolean d() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (!this.f31716a.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i2 = AbstractBinderC0661a.f31715a;
                    }
                    parcelObtain2.readException();
                    boolean z2 = parcelObtain2.readInt() != 0;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return z2;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }
    }

    String a() throws RemoteException;

    boolean d() throws RemoteException;
}
