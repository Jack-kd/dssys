package com.meishu.sdk.core.oaid.repeackage.com.android.creator;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface a extends IInterface {

    /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.android.creator.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0657a extends Binder implements a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f31711a = 0;

        /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.android.creator.a$a$a, reason: collision with other inner class name */
        public static class C0658a implements a {

            /* renamed from: a, reason: collision with root package name */
            public IBinder f31712a;

            public C0658a(IBinder iBinder) {
                this.f31712a = iBinder;
            }

            @Override // com.meishu.sdk.core.oaid.repeackage.com.android.creator.a
            public String a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.android.creator.IdsSupplier");
                    if (!this.f31712a.transact(3, parcelObtain, parcelObtain2, 0)) {
                        int i2 = AbstractBinderC0657a.f31711a;
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
                return this.f31712a;
            }
        }
    }

    String a() throws RemoteException;
}
