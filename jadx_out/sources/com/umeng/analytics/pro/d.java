package com.umeng.analytics.pro;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.umeng.analytics.pro.c;

/* loaded from: classes5.dex */
public interface d extends IInterface {

    public static class a implements d {
        @Override // com.umeng.analytics.pro.d
        public void a(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.umeng.analytics.pro.d
        public void b(c cVar) throws RemoteException {
        }

        @Override // com.umeng.analytics.pro.d
        public void a(c cVar) throws RemoteException {
        }
    }

    void a(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException;

    void a(c cVar) throws RemoteException;

    void b(c cVar) throws RemoteException;

    public static abstract class b extends Binder implements d {

        /* renamed from: a, reason: collision with root package name */
        static final int f49152a = 1;

        /* renamed from: b, reason: collision with root package name */
        static final int f49153b = 2;

        /* renamed from: c, reason: collision with root package name */
        static final int f49154c = 3;

        /* renamed from: d, reason: collision with root package name */
        private static final String f49155d = "com.hihonor.cloudservice.oaid.IOAIDService";

        public static class a implements d {

            /* renamed from: a, reason: collision with root package name */
            public static d f49156a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f49157b;

            public a(IBinder iBinder) {
                this.f49157b = iBinder;
            }

            public String a() {
                return "com.hihonor.cloudservice.oaid.IOAIDService";
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f49157b;
            }

            @Override // com.umeng.analytics.pro.d
            public void b(c cVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                    parcelObtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    if (this.f49157b.transact(3, parcelObtain, parcelObtain2, 0) || b.a() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.a().b(cVar);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.umeng.analytics.pro.d
            public void a(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeFloat(f2);
                    parcelObtain.writeDouble(d2);
                    parcelObtain.writeString(str);
                    if (this.f49157b.transact(1, parcelObtain, parcelObtain2, 0) || b.a() == null) {
                        parcelObtain2.readException();
                    } else {
                        b.a().a(i2, j2, z2, f2, d2, str);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.umeng.analytics.pro.d
            public void a(c cVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.hihonor.cloudservice.oaid.IOAIDService");
                    parcelObtain.writeStrongBinder(cVar != null ? cVar.asBinder() : null);
                    if (!this.f49157b.transact(2, parcelObtain, parcelObtain2, 0) && b.a() != null) {
                        b.a().a(cVar);
                    } else {
                        parcelObtain2.readException();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public b() {
            attachInterface(this, "com.hihonor.cloudservice.oaid.IOAIDService");
        }

        public static d a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.hihonor.cloudservice.oaid.IOAIDService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof d)) ? new a(iBinder) : (d) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDService");
                a(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDService");
                a(c.b.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 3) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.hihonor.cloudservice.oaid.IOAIDService");
                return true;
            }
            parcel.enforceInterface("com.hihonor.cloudservice.oaid.IOAIDService");
            b(c.b.a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        public static boolean a(d dVar) {
            if (a.f49156a != null || dVar == null) {
                return false;
            }
            a.f49156a = dVar;
            return true;
        }

        public static d a() {
            return a.f49156a;
        }
    }
}
