package com.byazt.yq;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public interface hp extends IInterface {
    String hp(String str) throws RemoteException;

    boolean hp() throws RemoteException;

    String j(String str) throws RemoteException;

    String jx(String str) throws RemoteException;

    String l() throws RemoteException;

    String l(String str) throws RemoteException;

    String w(String str) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_OUTLET_DROPCOUNT_ONCE, 170})
    /* renamed from: com.byazt.yq.hp$hp, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0428hp extends Binder implements hp {
        public static hp hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof hp)) ? new C0429hp(iBinder) : (hp) iInterfaceQueryLocalInterface;
        }

        public static hp jx() {
            return C0429hp.hp;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString("com.coolpad.deviceidsupport.IDeviceIdManager");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String strHp = hp(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strHp);
                    return true;
                case 2:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String strL = l(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strL);
                    return true;
                case 3:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String strJx = jx(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strJx);
                    return true;
                case 4:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String strJ = j(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strJ);
                    return true;
                case 5:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String strW = w(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strW);
                    return true;
                case 6:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    boolean zHp = hp();
                    parcel2.writeNoException();
                    parcel2.writeInt(zHp ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface("com.coolpad.deviceidsupport.IDeviceIdManager");
                    String strL2 = l();
                    parcel2.writeNoException();
                    parcel2.writeString(strL2);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_OUTLET_DROPCOUNT_ONCE, TTAdConstant.IMAGE_URL_CODE})
        /* renamed from: com.byazt.yq.hp$hp$hp, reason: collision with other inner class name */
        public static class C0429hp implements hp {
            public static hp hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f28221l;

            public C0429hp(IBinder iBinder) {
                this.f28221l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f28221l;
            }

            @Override // com.byazt.yq.hp
            public String hp(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    parcelObtain.writeString(str);
                    if (this.f28221l.transact(1, parcelObtain, parcelObtain2, 0) || AbstractBinderC0428hp.jx() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0428hp.jx().hp(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.hp
            public String j(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    parcelObtain.writeString(str);
                    if (this.f28221l.transact(4, parcelObtain, parcelObtain2, 0) || AbstractBinderC0428hp.jx() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0428hp.jx().j(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.hp
            public String jx(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    parcelObtain.writeString(str);
                    if (this.f28221l.transact(3, parcelObtain, parcelObtain2, 0) || AbstractBinderC0428hp.jx() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0428hp.jx().jx(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.hp
            public String l(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    parcelObtain.writeString(str);
                    if (this.f28221l.transact(2, parcelObtain, parcelObtain2, 0) || AbstractBinderC0428hp.jx() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0428hp.jx().l(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.hp
            public String w(String str) throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    parcelObtain.writeString(str);
                    if (this.f28221l.transact(5, parcelObtain, parcelObtain2, 0) || AbstractBinderC0428hp.jx() == null) {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    } else {
                        string = AbstractBinderC0428hp.jx().w(str);
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.hp
            public boolean hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    if (!this.f28221l.transact(6, parcelObtain, parcelObtain2, 0) && AbstractBinderC0428hp.jx() != null) {
                        return AbstractBinderC0428hp.jx().hp();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yq.hp
            public String l() throws RemoteException {
                String string;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.coolpad.deviceidsupport.IDeviceIdManager");
                    if (!this.f28221l.transact(7, parcelObtain, parcelObtain2, 0) && AbstractBinderC0428hp.jx() != null) {
                        string = AbstractBinderC0428hp.jx().l();
                    } else {
                        parcelObtain2.readException();
                        string = parcelObtain2.readString();
                    }
                    return string;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
