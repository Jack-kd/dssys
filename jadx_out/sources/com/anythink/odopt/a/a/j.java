package com.anythink.odopt.a.a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.anythink.odopt.a.a.i;

/* loaded from: classes2.dex */
public interface j extends IInterface {

    /* renamed from: a, reason: collision with root package name */
    public static final String f10579a = "com.hihonor.cloudservice.oaid.IOAIDService";

    void a(int i2, long j2, boolean z2, float f2, double d2, String str);

    void a(i iVar);

    void b(i iVar);

    public static abstract class a extends Binder implements j {
        public a() {
            attachInterface(this, j.f10579a);
        }

        public static j a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(j.f10579a);
            return iInterfaceQueryLocalInterface instanceof j ? (j) iInterfaceQueryLocalInterface : new C0121a(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1) {
                parcel.enforceInterface(j.f10579a);
                a(parcel.readInt(), parcel.readLong(), parcel.readInt() != 0, parcel.readFloat(), parcel.readDouble(), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(j.f10579a);
                a(i.a.a(parcel.readStrongBinder()));
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
            b(i.a.a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }

        /* renamed from: com.anythink.odopt.a.a.j$a$a, reason: collision with other inner class name */
        public static class C0121a implements j {

            /* renamed from: b, reason: collision with root package name */
            private IBinder f10580b;

            public C0121a(IBinder iBinder) {
                this.f10580b = iBinder;
            }

            @Override // com.anythink.odopt.a.a.j
            public final void a(int i2, long j2, boolean z2, float f2, double d2, String str) {
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
                    this.f10580b.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f10580b;
            }

            @Override // com.anythink.odopt.a.a.j
            public final void b(i iVar) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f10579a);
                    parcelObtain.writeStrongBinder(iVar != null ? iVar.asBinder() : null);
                    this.f10580b.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.anythink.odopt.a.a.j
            public final void a(i iVar) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(j.f10579a);
                    parcelObtain.writeStrongBinder(iVar != null ? iVar.asBinder() : null);
                    this.f10580b.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }
    }
}
