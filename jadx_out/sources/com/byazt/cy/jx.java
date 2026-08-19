package com.byazt.cy;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.byazt.cy.l;
import com.byazt.fu.DownloadInfo;
import java.util.List;

/* loaded from: classes2.dex */
public interface jx extends IInterface {
    boolean a(int i2) throws RemoteException;

    DownloadInfo e(int i2) throws RemoteException;

    DownloadInfo eb(int i2) throws RemoteException;

    DownloadInfo hp(int i2, int i3) throws RemoteException;

    DownloadInfo hp(int i2, long j2) throws RemoteException;

    DownloadInfo hp(int i2, long j2, String str, String str2) throws RemoteException;

    List<DownloadInfo> hp(String str) throws RemoteException;

    void hp() throws RemoteException;

    void hp(int i2, int i3, int i4, int i5) throws RemoteException;

    void hp(int i2, int i3, int i4, long j2) throws RemoteException;

    void hp(int i2, int i3, long j2) throws RemoteException;

    void hp(int i2, List<com.byazt.fu.l> list) throws RemoteException;

    void hp(l lVar) throws RemoteException;

    void hp(com.byazt.fu.l lVar) throws RemoteException;

    boolean hp(int i2) throws RemoteException;

    boolean hp(DownloadInfo downloadInfo) throws RemoteException;

    DownloadInfo j(int i2, long j2) throws RemoteException;

    List<DownloadInfo> j(String str) throws RemoteException;

    void j(int i2) throws RemoteException;

    boolean j() throws RemoteException;

    DownloadInfo jx(int i2, long j2) throws RemoteException;

    List<com.byazt.fu.l> jx(int i2) throws RemoteException;

    List<DownloadInfo> jx(String str) throws RemoteException;

    void jx() throws RemoteException;

    DownloadInfo l(int i2) throws RemoteException;

    DownloadInfo l(int i2, long j2) throws RemoteException;

    List<DownloadInfo> l() throws RemoteException;

    List<DownloadInfo> l(String str) throws RemoteException;

    void l(int i2, List<com.byazt.fu.l> list) throws RemoteException;

    void l(DownloadInfo downloadInfo) throws RemoteException;

    void l(com.byazt.fu.l lVar) throws RemoteException;

    DownloadInfo q(int i2) throws RemoteException;

    DownloadInfo s(int i2) throws RemoteException;

    DownloadInfo w(int i2, long j2) throws RemoteException;

    boolean w() throws RemoteException;

    boolean w(int i2) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 1052, 219})
    public static abstract class hp extends Binder implements jx {
        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
        }

        public static jx a() {
            return C0206hp.hp;
        }

        public static jx hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof jx)) ? new C0206hp(iBinder) : (jx) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    hp();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    boolean zHp = hp(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zHp ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo downloadInfoL = l(parcel.readInt());
                    parcel2.writeNoException();
                    if (downloadInfoL != null) {
                        parcel2.writeInt(1);
                        downloadInfoL.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    List<DownloadInfo> listHp = hp(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listHp);
                    return true;
                case 5:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    List<DownloadInfo> listL = l(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listL);
                    return true;
                case 6:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    List<DownloadInfo> listJx = jx(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listJx);
                    return true;
                case 7:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    List<DownloadInfo> listJ = j(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listJ);
                    return true;
                case 8:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    List<DownloadInfo> listL2 = l();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listL2);
                    return true;
                case 9:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    List<com.byazt.fu.l> listJx2 = jx(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listJx2);
                    return true;
                case 10:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    j(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    hp(parcel.readInt() != 0 ? com.byazt.fu.l.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    l(parcel.readInt() != 0 ? com.byazt.fu.l.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    hp(parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    hp(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    hp(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo downloadInfoHp = hp(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    if (downloadInfoHp != null) {
                        parcel2.writeInt(1);
                        downloadInfoHp.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 17:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    boolean zHp2 = hp(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zHp2 ? 1 : 0);
                    return true;
                case 18:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    boolean zW = w(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zW ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    boolean zA = a(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zA ? 1 : 0);
                    return true;
                case 20:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    jx();
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo downloadInfoEb = eb(parcel.readInt());
                    parcel2.writeNoException();
                    if (downloadInfoEb != null) {
                        parcel2.writeInt(1);
                        downloadInfoEb.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 22:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo downloadInfoHp2 = hp(parcel.readInt(), parcel.readLong(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (downloadInfoHp2 != null) {
                        parcel2.writeInt(1);
                        downloadInfoHp2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 23:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo downloadInfoHp3 = hp(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    if (downloadInfoHp3 != null) {
                        parcel2.writeInt(1);
                        downloadInfoHp3.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 24:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo downloadInfoL2 = l(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    if (downloadInfoL2 != null) {
                        parcel2.writeInt(1);
                        downloadInfoL2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 25:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo downloadInfoS = s(parcel.readInt());
                    parcel2.writeNoException();
                    if (downloadInfoS != null) {
                        parcel2.writeInt(1);
                        downloadInfoS.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 26:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo downloadInfoJx = jx(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    if (downloadInfoJx != null) {
                        parcel2.writeInt(1);
                        downloadInfoJx.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 27:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo downloadInfoJ = j(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    if (downloadInfoJ != null) {
                        parcel2.writeInt(1);
                        downloadInfoJ.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 28:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo downloadInfoW = w(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    if (downloadInfoW != null) {
                        parcel2.writeInt(1);
                        downloadInfoW.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 29:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo downloadInfoQ = q(parcel.readInt());
                    parcel2.writeNoException();
                    if (downloadInfoQ != null) {
                        parcel2.writeInt(1);
                        downloadInfoQ.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 30:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    DownloadInfo downloadInfoE = e(parcel.readInt());
                    parcel2.writeNoException();
                    if (downloadInfoE != null) {
                        parcel2.writeInt(1);
                        downloadInfoE.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 31:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    boolean zJ = j();
                    parcel2.writeNoException();
                    parcel2.writeInt(zJ ? 1 : 0);
                    return true;
                case 32:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    boolean zW2 = w();
                    parcel2.writeNoException();
                    parcel2.writeInt(zW2 ? 1 : 0);
                    return true;
                case 33:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    l(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    hp(parcel.readInt(), parcel.createTypedArrayList(com.byazt.fu.l.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    l(parcel.readInt(), parcel.createTypedArrayList(com.byazt.fu.l.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    hp(l.hp.hp(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }

        @com.byazt.kj.hp(hp = {0, 1, 1052, 1144})
        /* renamed from: com.byazt.cy.jx$hp$hp, reason: collision with other inner class name */
        public static class C0206hp implements jx {
            public static jx hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f19040l;

            public C0206hp(IBinder iBinder) {
                this.f19040l = iBinder;
            }

            @Override // com.byazt.cy.jx
            public boolean a(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    if (!this.f19040l.transact(19, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        return hp.a().a(i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f19040l;
            }

            @Override // com.byazt.cy.jx
            public DownloadInfo e(int i2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    if (this.f19040l.transact(30, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        downloadInfoCreateFromParcel = hp.a().e(i2);
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public DownloadInfo eb(int i2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    if (this.f19040l.transact(21, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        downloadInfoCreateFromParcel = hp.a().eb(i2);
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public void hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (this.f19040l.transact(1, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.a().hp();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public List<DownloadInfo> j(String str) throws RemoteException {
                List<DownloadInfo> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeString(str);
                    if (this.f19040l.transact(7, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                        listCreateTypedArrayList = parcelObtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        listCreateTypedArrayList = hp.a().j(str);
                    }
                    return listCreateTypedArrayList;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public List<DownloadInfo> jx(String str) throws RemoteException {
                List<DownloadInfo> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeString(str);
                    if (this.f19040l.transact(6, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                        listCreateTypedArrayList = parcelObtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    } else {
                        listCreateTypedArrayList = hp.a().jx(str);
                    }
                    return listCreateTypedArrayList;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public DownloadInfo l(int i2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    if (this.f19040l.transact(3, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        downloadInfoCreateFromParcel = hp.a().l(i2);
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public DownloadInfo q(int i2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    if (this.f19040l.transact(29, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        downloadInfoCreateFromParcel = hp.a().q(i2);
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public DownloadInfo s(int i2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    if (this.f19040l.transact(25, parcelObtain, parcelObtain2, 0) || hp.a() == null) {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        downloadInfoCreateFromParcel = hp.a().s(i2);
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public boolean w(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    if (!this.f19040l.transact(18, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        return hp.a().w(i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public boolean hp(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    if (!this.f19040l.transact(2, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        return hp.a().hp(i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public void j(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    if (!this.f19040l.transact(10, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        hp.a().j(i2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public List<com.byazt.fu.l> jx(int i2) throws RemoteException {
                List<com.byazt.fu.l> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    if (!this.f19040l.transact(9, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        listCreateTypedArrayList = hp.a().jx(i2);
                    } else {
                        parcelObtain2.readException();
                        listCreateTypedArrayList = parcelObtain2.createTypedArrayList(com.byazt.fu.l.CREATOR);
                    }
                    return listCreateTypedArrayList;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public List<DownloadInfo> l(String str) throws RemoteException {
                List<DownloadInfo> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeString(str);
                    if (!this.f19040l.transact(5, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        listCreateTypedArrayList = hp.a().l(str);
                    } else {
                        parcelObtain2.readException();
                        listCreateTypedArrayList = parcelObtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    }
                    return listCreateTypedArrayList;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public DownloadInfo w(int i2, long j2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    if (!this.f19040l.transact(28, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        downloadInfoCreateFromParcel = hp.a().w(i2, j2);
                    } else {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public DownloadInfo j(int i2, long j2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    if (!this.f19040l.transact(27, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        downloadInfoCreateFromParcel = hp.a().j(i2, j2);
                    } else {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public List<DownloadInfo> hp(String str) throws RemoteException {
                List<DownloadInfo> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeString(str);
                    if (!this.f19040l.transact(4, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        listCreateTypedArrayList = hp.a().hp(str);
                    } else {
                        parcelObtain2.readException();
                        listCreateTypedArrayList = parcelObtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    }
                    return listCreateTypedArrayList;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public void jx() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (!this.f19040l.transact(20, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        hp.a().jx();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public List<DownloadInfo> l() throws RemoteException {
                List<DownloadInfo> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (!this.f19040l.transact(8, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        listCreateTypedArrayList = hp.a().l();
                    } else {
                        parcelObtain2.readException();
                        listCreateTypedArrayList = parcelObtain2.createTypedArrayList(DownloadInfo.CREATOR);
                    }
                    return listCreateTypedArrayList;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public boolean w() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (!this.f19040l.transact(32, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        return hp.a().w();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public DownloadInfo jx(int i2, long j2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    if (!this.f19040l.transact(26, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        downloadInfoCreateFromParcel = hp.a().jx(i2, j2);
                    } else {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public void hp(com.byazt.fu.l lVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (lVar != null) {
                        parcelObtain.writeInt(1);
                        lVar.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f19040l.transact(11, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        hp.a().hp(lVar);
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

            @Override // com.byazt.cy.jx
            public void l(com.byazt.fu.l lVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (lVar != null) {
                        parcelObtain.writeInt(1);
                        lVar.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f19040l.transact(12, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        hp.a().l(lVar);
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

            @Override // com.byazt.cy.jx
            public boolean j() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (!this.f19040l.transact(31, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        return hp.a().j();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public void hp(int i2, int i3, long j2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeLong(j2);
                    if (!this.f19040l.transact(13, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        hp.a().hp(i2, i3, j2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public DownloadInfo l(int i2, long j2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    if (!this.f19040l.transact(24, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        downloadInfoCreateFromParcel = hp.a().l(i2, j2);
                    } else {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public void hp(int i2, int i3, int i4, long j2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeLong(j2);
                    if (!this.f19040l.transact(14, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        hp.a().hp(i2, i3, i4, j2);
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

            @Override // com.byazt.cy.jx
            public void l(DownloadInfo downloadInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (downloadInfo != null) {
                        parcelObtain.writeInt(1);
                        downloadInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f19040l.transact(33, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        hp.a().l(downloadInfo);
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

            @Override // com.byazt.cy.jx
            public void hp(int i2, int i3, int i4, int i5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    if (!this.f19040l.transact(15, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        hp.a().hp(i2, i3, i4, i5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public void l(int i2, List<com.byazt.fu.l> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedList(list);
                    if (!this.f19040l.transact(35, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        hp.a().l(i2, list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public DownloadInfo hp(int i2, int i3) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (!this.f19040l.transact(16, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        downloadInfoCreateFromParcel = hp.a().hp(i2, i3);
                    } else {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public boolean hp(DownloadInfo downloadInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    if (downloadInfo != null) {
                        parcelObtain.writeInt(1);
                        downloadInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f19040l.transact(17, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        boolean zHp = hp.a().hp(downloadInfo);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return zHp;
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

            @Override // com.byazt.cy.jx
            public DownloadInfo hp(int i2, long j2, String str, String str2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.f19040l.transact(22, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        downloadInfoCreateFromParcel = hp.a().hp(i2, j2, str, str2);
                    } else {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public DownloadInfo hp(int i2, long j2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    if (!this.f19040l.transact(23, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        downloadInfoCreateFromParcel = hp.a().hp(i2, j2);
                    } else {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public void hp(int i2, List<com.byazt.fu.l> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedList(list);
                    if (!this.f19040l.transact(34, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        hp.a().hp(i2, list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.cy.jx
            public void hp(l lVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.db.ISqlDownloadCacheAidl");
                    parcelObtain.writeStrongBinder(lVar != null ? lVar.asBinder() : null);
                    if (!this.f19040l.transact(36, parcelObtain, parcelObtain2, 0) && hp.a() != null) {
                        hp.a().hp(lVar);
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
    }
}
