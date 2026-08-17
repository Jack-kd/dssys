package com.meishu.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface a extends IInterface {

    /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0663a extends Binder implements a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f31717a = 0;

        /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a$a$a, reason: collision with other inner class name */
        public static class C0664a implements a {

            /* renamed from: a, reason: collision with root package name */
            public IBinder f31718a;

            public C0664a(IBinder iBinder) {
                this.f31718a = iBinder;
            }

            @Override // com.meishu.sdk.core.oaid.repeackage.com.coolpad.deviceidsupport.a
            public String a(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    parcelObtain.writeString(str);
                    if (!this.f31718a.transact(2, parcelObtain, parcelObtain2, 0)) {
                        int i2 = AbstractBinderC0663a.f31717a;
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
                return this.f31718a;
            }
        }
    }

    String a(String str) throws RemoteException;
}
