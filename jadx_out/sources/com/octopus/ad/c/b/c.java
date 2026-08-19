package com.octopus.ad.c.b;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.anythink.odopt.a.a.j;
import com.octopus.ad.c.b.b;

/* loaded from: classes4.dex */
public interface c extends IInterface {
    void a(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException;

    void a(b bVar) throws RemoteException;

    void b(b bVar) throws RemoteException;

    public static abstract class a extends Binder implements c {
        public static c a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(j.f10579a);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0718a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface(j.f10579a);
                a(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(j.f10579a);
                a(b.a.a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i2 != 3) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(j.f10579a);
                return true;
            }
            parcel.enforceInterface(j.f10579a);
            b(b.a.a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        public static c a() {
            return C0718a.f33785a;
        }

        /* renamed from: com.octopus.ad.c.b.c$a$a, reason: collision with other inner class name */
        public static class C0718a implements c {

            /* renamed from: a, reason: collision with root package name */
            public static c f33785a;

            /* renamed from: b, reason: collision with root package name */
            private IBinder f33786b;

            public C0718a(IBinder iBinder) {
                this.f33786b = iBinder;
            }

            @Override // com.octopus.ad.c.b.c
            public void a(int i2, long j2, boolean z2, float f2, double d2, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f10579a);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeFloat(f2);
                    parcelObtain.writeDouble(d2);
                    parcelObtain.writeString(str);
                    if (this.f33786b.transact(1, parcelObtain, parcelObtain2, 0) || a.a() == null) {
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
                return this.f33786b;
            }

            @Override // com.octopus.ad.c.b.c
            public void b(b bVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f10579a);
                    parcelObtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    if (this.f33786b.transact(3, parcelObtain, parcelObtain2, 0) || a.a() == null) {
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else {
                        a.a().b(bVar);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.octopus.ad.c.b.c
            public void a(b bVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f10579a);
                    parcelObtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
                    if (!this.f33786b.transact(2, parcelObtain, parcelObtain2, 0) && a.a() != null) {
                        a.a().a(bVar);
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
