package com.meishu.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;

/* loaded from: classes4.dex */
public interface a extends IInterface {

    /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0659a extends Binder implements a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f31713a = 0;

        /* renamed from: com.meishu.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID.a$a$a, reason: collision with other inner class name */
        public static class C0660a implements a {

            /* renamed from: a, reason: collision with root package name */
            public IBinder f31714a;

            public C0660a(IBinder iBinder) {
                this.f31714a = iBinder;
            }

            @Override // com.meishu.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID.a
            public String a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    if (!this.f31714a.transact(3, parcelObtain, parcelObtain2, 0)) {
                        int i2 = AbstractBinderC0659a.f31713a;
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
                return this.f31714a;
            }

            @Override // com.meishu.sdk.core.oaid.repeackage.com.asus.msa.SupplementaryDID.a
            public boolean b() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    if (!this.f31714a.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i2 = AbstractBinderC0659a.f31713a;
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

    boolean b() throws RemoteException;
}
