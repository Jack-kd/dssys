package com.byazt.yq;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public interface jx extends IInterface {
    String hp() throws RemoteException;

    String hp(String str) throws RemoteException;

    boolean jx() throws RemoteException;

    String l() throws RemoteException;

    String l(String str) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_OUTLET_DROPCOUNT_ONCE, 219})
    public static abstract class hp extends Binder implements jx {
        public static jx hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.zui.deviceidservice.IDeviceidInterface");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof jx)) ? new C0431hp(iBinder) : (jx) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
                String strHp = hp();
                parcel2.writeNoException();
                parcel2.writeString(strHp);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
                String strL = l();
                parcel2.writeNoException();
                parcel2.writeString(strL);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
                boolean zJx = jx();
                parcel2.writeNoException();
                parcel2.writeInt(zJx ? 1 : 0);
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
                String strHp2 = hp(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strHp2);
                return true;
            }
            if (i2 != 5) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString("com.zui.deviceidservice.IDeviceidInterface");
                return true;
            }
            parcel.enforceInterface("com.zui.deviceidservice.IDeviceidInterface");
            String strL2 = l(parcel.readString());
            parcel2.writeNoException();
            parcel2.writeString(strL2);
            return true;
        }

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_OUTLET_DROPCOUNT_ONCE, 1144})
        /* renamed from: com.byazt.yq.jx$hp$hp, reason: collision with other inner class name */
        public static class C0431hp implements jx {
            public IBinder hp;

            public C0431hp(IBinder iBinder) {
                this.hp = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.hp;
            }

            @Override // com.byazt.yq.jx
            public String hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    this.hp.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.jx
            public boolean jx() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    this.hp.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.jx
            public String l() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    this.hp.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.jx
            public String hp(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    parcelObtain.writeString(str);
                    this.hp.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.jx
            public String l(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.zui.deviceidservice.IDeviceidInterface");
                    parcelObtain.writeString(str);
                    this.hp.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
