package com.meishu.sdk.core.oaid.repeackage.com.samsung.android.deviceidservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface a extends IInterface {

    /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.samsung.android.deviceidservice.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0669a extends Binder implements a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f31723a = 0;

        /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.samsung.android.deviceidservice.a$a$a, reason: collision with other inner class name */
        public static class C0670a implements a {

            /* renamed from: a, reason: collision with root package name */
            public IBinder f31724a;

            public C0670a(IBinder iBinder) {
                this.f31724a = iBinder;
            }

            @Override // com.meishu.sdk.core.oaid.repeackage.com.samsung.android.deviceidservice.a
            public String a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.samsung.android.deviceidservice.IDeviceIdService");
                    if (!this.f31724a.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i2 = AbstractBinderC0669a.f31723a;
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
                return this.f31724a;
            }
        }
    }

    String a() throws RemoteException;
}
