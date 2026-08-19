package com.octopus.ad.c.b;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.anythink.odopt.a.a.i;

/* loaded from: classes4.dex */
public interface b extends IInterface {
    void a(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException;

    void a(int i2, Bundle bundle) throws RemoteException;

    public static abstract class a extends Binder implements b {
        public a() {
            attachInterface(this, i.f10577a);
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(i.f10577a);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0717a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface(i.f10577a);
                a(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 2) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(i.f10577a);
                return true;
            }
            parcel.enforceInterface(i.f10577a);
            a(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            return true;
        }

        public static b a() {
            return C0717a.f33783a;
        }

        /* renamed from: com.octopus.ad.c.b.b$a$a, reason: collision with other inner class name */
        public static class C0717a implements b {

            /* renamed from: a, reason: collision with root package name */
            public static b f33783a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f33784b;

            public C0717a(IBinder iBinder) {
                this.f33784b = iBinder;
            }

            @Override // com.octopus.ad.c.b.b
            public void a(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(i.f10577a);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeFloat(f2);
                    parcelObtain.writeDouble(d2);
                    parcelObtain.writeString(str);
                    if (this.f33784b.transact(1, parcelObtain, parcelObtain2, 0) || a.a() == null) {
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else {
                        a.a().a(i2, j2, z2, f2, d2, str);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f33784b;
            }

            @Override // com.octopus.ad.c.b.b
            public void a(int i2, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(i.f10577a);
                    parcelObtain.writeInt(i2);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f33784b.transact(2, parcelObtain, parcelObtain2, 0) && a.a() != null) {
                        a.a().a(i2, bundle);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else {
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }
    }
}
