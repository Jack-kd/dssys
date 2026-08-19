package com.byazt.yq;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public interface a extends IInterface {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_OUTLET_DROPCOUNT_ONCE, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static abstract class hp extends Binder implements a {

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_OUTLET_DROPCOUNT_ONCE, 1650})
        /* renamed from: com.byazt.yq.a$hp$hp, reason: collision with other inner class name */
        public static class C0427hp implements a {
            public static a hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f28220l;

            public C0427hp(IBinder iBinder) {
                this.f28220l = iBinder;
            }

            @Override // com.byazt.yq.a
            public void a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f28220l.transact(6, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().a();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f28220l;
            }

            @Override // com.byazt.yq.a
            public String hp() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f28220l.transact(1, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = hp.eb().hp();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.a
            public boolean j() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (!this.f28220l.transact(4, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        return hp.eb().j();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.a
            public String jx() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f28220l.transact(3, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = hp.eb().jx();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.a
            public String l() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (this.f28220l.transact(2, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = hp.eb().l();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.a
            public boolean w() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.bun.lib.MsaIdInterface");
                    if (!this.f28220l.transact(5, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        return hp.eb().w();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static a eb() {
            return C0427hp.hp;
        }

        public static a hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.bun.lib.MsaIdInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0427hp(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString("com.bun.lib.MsaIdInterface");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    String strHp = hp();
                    parcel2.writeNoException();
                    parcel2.writeString(strHp);
                    return true;
                case 2:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    String strL = l();
                    parcel2.writeNoException();
                    parcel2.writeString(strL);
                    return true;
                case 3:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    String strJx = jx();
                    parcel2.writeNoException();
                    parcel2.writeString(strJx);
                    return true;
                case 4:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    boolean zJ = j();
                    parcel2.writeNoException();
                    parcel2.writeInt(zJ ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    boolean zW = w();
                    parcel2.writeNoException();
                    parcel2.writeInt(zW ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface("com.bun.lib.MsaIdInterface");
                    a();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void a() throws RemoteException;

    String hp() throws RemoteException;

    boolean j() throws RemoteException;

    String jx() throws RemoteException;

    String l() throws RemoteException;

    boolean w() throws RemoteException;
}
