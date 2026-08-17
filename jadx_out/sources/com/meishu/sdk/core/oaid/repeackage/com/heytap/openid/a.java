package com.meishu.sdk.core.oaid.repeackage.com.heytap.openid;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes4.dex */
public interface a extends IInterface {

    /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.heytap.openid.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0667a extends Binder implements a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f31721a = 0;

        /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.heytap.openid.a$a$a, reason: collision with other inner class name */
        public static class C0668a implements a {

            /* renamed from: a, reason: collision with root package name */
            public IBinder f31722a;

            public C0668a(IBinder iBinder) {
                this.f31722a = iBinder;
            }

            @Override // com.meishu.sdk.core.oaid.repeackage.com.heytap.openid.a
            public String a(String str, String str2, String str3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (!this.f31722a.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i2 = AbstractBinderC0667a.f31721a;
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
                return this.f31722a;
            }
        }
    }

    String a(String str, String str2, String str3) throws RemoteException;
}
