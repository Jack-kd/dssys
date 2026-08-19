package com.byazt.yq;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.asus.msa.SupplementaryDID.IDidAidlInterface;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public interface j extends IInterface {

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_OUTLET_DROPCOUNT_ONCE, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static abstract class hp extends Binder implements j {

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_OUTLET_DROPCOUNT_ONCE, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_VOICE_IN_PREPARE})
        /* renamed from: com.byazt.yq.j$hp$hp, reason: collision with other inner class name */
        public static class C0430hp implements j {
            public IBinder hp;

            public C0430hp(IBinder iBinder) {
                this.hp = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.hp;
            }

            @Override // com.byazt.yq.j
            public boolean hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    this.hp.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.j
            public String j() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    this.hp.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.j
            public String jx() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    this.hp.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.j
            public String l() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    this.hp.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.j
            public String w() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IDidAidlInterface.Stub.DESCRIPTOR);
                    this.hp.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static j hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IDidAidlInterface.Stub.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof j)) ? new C0430hp(iBinder) : (j) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1) {
                parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                boolean zHp = hp();
                parcel2.writeNoException();
                parcel2.writeInt(zHp ? 1 : 0);
                return true;
            }
            if (i2 == 2) {
                parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                String strL = l();
                parcel2.writeNoException();
                parcel2.writeString(strL);
                return true;
            }
            if (i2 == 3) {
                parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                String strJx = jx();
                parcel2.writeNoException();
                parcel2.writeString(strJx);
                return true;
            }
            if (i2 == 4) {
                parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
                String strJ = j();
                parcel2.writeNoException();
                parcel2.writeString(strJ);
                return true;
            }
            if (i2 != 5) {
                if (i2 != 1598968902) {
                    return super.onTransact(i2, parcel, parcel2, i3);
                }
                parcel2.writeString(IDidAidlInterface.Stub.DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(IDidAidlInterface.Stub.DESCRIPTOR);
            String strW = w();
            parcel2.writeNoException();
            parcel2.writeString(strW);
            return true;
        }
    }

    boolean hp() throws RemoteException;

    String j() throws RemoteException;

    String jx() throws RemoteException;

    String l() throws RemoteException;

    String w() throws RemoteException;
}
