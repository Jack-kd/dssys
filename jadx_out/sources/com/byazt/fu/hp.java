package com.byazt.fu;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.byazt.fn.a;
import com.byazt.fn.di;
import com.byazt.fn.e;
import com.byazt.fn.eb;
import com.byazt.fn.jl;
import com.byazt.fn.lv;
import com.byazt.fn.n;
import com.byazt.fn.q;
import com.byazt.fn.s;
import com.byazt.fn.u;
import com.byazt.fn.ud;
import com.byazt.fn.w;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes2.dex */
public interface hp extends IInterface {
    a a() throws RemoteException;

    e e() throws RemoteException;

    n eb() throws RemoteException;

    eb gu() throws RemoteException;

    int hp(int i2) throws RemoteException;

    q hp(int i2, int i3) throws RemoteException;

    DownloadInfo hp() throws RemoteException;

    ud j() throws RemoteException;

    int jl() throws RemoteException;

    di jx() throws RemoteException;

    jl jx(int i2) throws RemoteException;

    q l(int i2) throws RemoteException;

    com.byazt.fn.w l() throws RemoteException;

    u q() throws RemoteException;

    lv s() throws RemoteException;

    s w() throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 677, 170})
    /* renamed from: com.byazt.fu.hp$hp, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0244hp extends Binder implements hp {
        public AbstractBinderC0244hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.model.DownloadAidlTask");
        }

        public static hp hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof hp)) ? new C0245hp(iBinder) : (hp) iInterfaceQueryLocalInterface;
        }

        public static hp zy() {
            return C0245hp.hp;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            if (i2 == 1598968902) {
                parcel2.writeString("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    DownloadInfo downloadInfoHp = hp();
                    parcel2.writeNoException();
                    if (downloadInfoHp != null) {
                        parcel2.writeInt(1);
                        downloadInfoHp.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    com.byazt.fn.w wVarL = l();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(wVarL != null ? wVarL.asBinder() : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    int iHp = hp(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iHp);
                    return true;
                case 4:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    q qVarHp = hp(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(qVarHp != null ? qVarHp.asBinder() : null);
                    return true;
                case 5:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    q qVarL = l(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(qVarL != null ? qVarL.asBinder() : null);
                    return true;
                case 6:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    di diVarJx = jx();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(diVarJx != null ? diVarJx.asBinder() : null);
                    return true;
                case 7:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    ud udVarJ = j();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(udVarJ != null ? udVarJ.asBinder() : null);
                    return true;
                case 8:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    s sVarW = w();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(sVarW != null ? sVarW.asBinder() : null);
                    return true;
                case 9:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    a aVarA = a();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(aVarA != null ? aVarA.asBinder() : null);
                    return true;
                case 10:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    n nVarEb = eb();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(nVarEb != null ? nVarEb.asBinder() : null);
                    return true;
                case 11:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    lv lvVarS = s();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(lvVarS != null ? lvVarS.asBinder() : null);
                    return true;
                case 12:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    u uVarQ = q();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(uVarQ != null ? uVarQ.asBinder() : null);
                    return true;
                case 13:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    e eVarE = e();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(eVarE != null ? eVarE.asBinder() : null);
                    return true;
                case 14:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    eb ebVarGu = gu();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(ebVarGu != null ? ebVarGu.asBinder() : null);
                    return true;
                case 15:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    int iJl = jl();
                    parcel2.writeNoException();
                    parcel2.writeInt(iJl);
                    return true;
                case 16:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    jl jlVarJx = jx(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(jlVarJx != null ? jlVarJx.asBinder() : null);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }

        @com.byazt.kj.hp(hp = {0, 1, 677, TTAdConstant.IMAGE_URL_CODE})
        /* renamed from: com.byazt.fu.hp$hp$hp, reason: collision with other inner class name */
        public static class C0245hp implements hp {
            public static hp hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f20118l;

            public C0245hp(IBinder iBinder) {
                this.f20118l = iBinder;
            }

            @Override // com.byazt.fu.hp
            public a a() throws RemoteException {
                a aVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f20118l.transact(9, parcelObtain, parcelObtain2, 0) || AbstractBinderC0244hp.zy() == null) {
                        parcelObtain2.readException();
                        aVarHp = a.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        aVarHp = AbstractBinderC0244hp.zy().a();
                    }
                    return aVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f20118l;
            }

            @Override // com.byazt.fu.hp
            public e e() throws RemoteException {
                e eVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f20118l.transact(13, parcelObtain, parcelObtain2, 0) || AbstractBinderC0244hp.zy() == null) {
                        parcelObtain2.readException();
                        eVarHp = e.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        eVarHp = AbstractBinderC0244hp.zy().e();
                    }
                    return eVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public n eb() throws RemoteException {
                n nVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f20118l.transact(10, parcelObtain, parcelObtain2, 0) || AbstractBinderC0244hp.zy() == null) {
                        parcelObtain2.readException();
                        nVarHp = n.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        nVarHp = AbstractBinderC0244hp.zy().eb();
                    }
                    return nVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public eb gu() throws RemoteException {
                eb ebVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f20118l.transact(14, parcelObtain, parcelObtain2, 0) || AbstractBinderC0244hp.zy() == null) {
                        parcelObtain2.readException();
                        ebVarHp = eb.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        ebVarHp = AbstractBinderC0244hp.zy().gu();
                    }
                    return ebVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public DownloadInfo hp() throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f20118l.transact(1, parcelObtain, parcelObtain2, 0) || AbstractBinderC0244hp.zy() == null) {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        downloadInfoCreateFromParcel = AbstractBinderC0244hp.zy().hp();
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public ud j() throws RemoteException {
                ud udVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f20118l.transact(7, parcelObtain, parcelObtain2, 0) || AbstractBinderC0244hp.zy() == null) {
                        parcelObtain2.readException();
                        udVarHp = ud.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        udVarHp = AbstractBinderC0244hp.zy().j();
                    }
                    return udVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public int jl() throws RemoteException {
                int iJl;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f20118l.transact(15, parcelObtain, parcelObtain2, 0) || AbstractBinderC0244hp.zy() == null) {
                        parcelObtain2.readException();
                        iJl = parcelObtain2.readInt();
                    } else {
                        iJl = AbstractBinderC0244hp.zy().jl();
                    }
                    return iJl;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public di jx() throws RemoteException {
                di diVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f20118l.transact(6, parcelObtain, parcelObtain2, 0) || AbstractBinderC0244hp.zy() == null) {
                        parcelObtain2.readException();
                        diVarHp = di.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        diVarHp = AbstractBinderC0244hp.zy().jx();
                    }
                    return diVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public com.byazt.fn.w l() throws RemoteException {
                com.byazt.fn.w wVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f20118l.transact(2, parcelObtain, parcelObtain2, 0) || AbstractBinderC0244hp.zy() == null) {
                        parcelObtain2.readException();
                        wVarHp = w.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        wVarHp = AbstractBinderC0244hp.zy().l();
                    }
                    return wVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public u q() throws RemoteException {
                u uVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f20118l.transact(12, parcelObtain, parcelObtain2, 0) || AbstractBinderC0244hp.zy() == null) {
                        parcelObtain2.readException();
                        uVarHp = u.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        uVarHp = AbstractBinderC0244hp.zy().q();
                    }
                    return uVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public lv s() throws RemoteException {
                lv lvVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f20118l.transact(11, parcelObtain, parcelObtain2, 0) || AbstractBinderC0244hp.zy() == null) {
                        parcelObtain2.readException();
                        lvVarHp = lv.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        lvVarHp = AbstractBinderC0244hp.zy().s();
                    }
                    return lvVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public s w() throws RemoteException {
                s sVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    if (this.f20118l.transact(8, parcelObtain, parcelObtain2, 0) || AbstractBinderC0244hp.zy() == null) {
                        parcelObtain2.readException();
                        sVarHp = s.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        sVarHp = AbstractBinderC0244hp.zy().w();
                    }
                    return sVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public jl jx(int i2) throws RemoteException {
                jl jlVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    parcelObtain.writeInt(i2);
                    if (!this.f20118l.transact(16, parcelObtain, parcelObtain2, 0) && AbstractBinderC0244hp.zy() != null) {
                        jlVarHp = AbstractBinderC0244hp.zy().jx(i2);
                    } else {
                        parcelObtain2.readException();
                        jlVarHp = jl.hp.hp(parcelObtain2.readStrongBinder());
                    }
                    return jlVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public q l(int i2) throws RemoteException {
                q qVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    parcelObtain.writeInt(i2);
                    if (!this.f20118l.transact(5, parcelObtain, parcelObtain2, 0) && AbstractBinderC0244hp.zy() != null) {
                        qVarHp = AbstractBinderC0244hp.zy().l(i2);
                    } else {
                        parcelObtain2.readException();
                        qVarHp = q.hp.hp(parcelObtain2.readStrongBinder());
                    }
                    return qVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public int hp(int i2) throws RemoteException {
                int iHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    parcelObtain.writeInt(i2);
                    if (!this.f20118l.transact(3, parcelObtain, parcelObtain2, 0) && AbstractBinderC0244hp.zy() != null) {
                        iHp = AbstractBinderC0244hp.zy().hp(i2);
                    } else {
                        parcelObtain2.readException();
                        iHp = parcelObtain2.readInt();
                    }
                    return iHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.fu.hp
            public q hp(int i2, int i3) throws RemoteException {
                q qVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.model.DownloadAidlTask");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (!this.f20118l.transact(4, parcelObtain, parcelObtain2, 0) && AbstractBinderC0244hp.zy() != null) {
                        qVarHp = AbstractBinderC0244hp.zy().hp(i2, i3);
                    } else {
                        parcelObtain2.readException();
                        qVarHp = q.hp.hp(parcelObtain2.readStrongBinder());
                    }
                    return qVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
