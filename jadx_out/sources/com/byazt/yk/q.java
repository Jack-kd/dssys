package com.byazt.yk;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.byazt.fn.di;
import com.byazt.fn.eb;
import com.byazt.fn.pu;
import com.byazt.fn.q;
import com.byazt.fn.ud;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.hp;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import java.util.List;

/* loaded from: classes3.dex */
public interface q extends IInterface {
    int a(int i2) throws RemoteException;

    boolean a() throws RemoteException;

    void e(int i2) throws RemoteException;

    boolean eb(int i2) throws RemoteException;

    com.byazt.fn.eb ec(int i2) throws RemoteException;

    boolean gu(int i2) throws RemoteException;

    int hp(String str, String str2) throws RemoteException;

    List<DownloadInfo> hp(String str) throws RemoteException;

    void hp() throws RemoteException;

    void hp(int i2) throws RemoteException;

    void hp(int i2, int i3) throws RemoteException;

    void hp(int i2, int i3, int i4, int i5) throws RemoteException;

    void hp(int i2, int i3, int i4, long j2) throws RemoteException;

    void hp(int i2, int i3, long j2) throws RemoteException;

    void hp(int i2, int i3, com.byazt.fn.q qVar, int i4, boolean z2) throws RemoteException;

    void hp(int i2, int i3, com.byazt.fn.q qVar, int i4, boolean z2, boolean z3) throws RemoteException;

    void hp(int i2, long j2) throws RemoteException;

    void hp(int i2, Notification notification) throws RemoteException;

    void hp(int i2, di diVar) throws RemoteException;

    void hp(int i2, List<com.byazt.fu.l> list) throws RemoteException;

    void hp(int i2, boolean z2) throws RemoteException;

    void hp(pu puVar) throws RemoteException;

    void hp(com.byazt.fu.hp hpVar) throws RemoteException;

    void hp(com.byazt.fu.l lVar) throws RemoteException;

    void hp(List<String> list) throws RemoteException;

    void hp(boolean z2) throws RemoteException;

    boolean hp(DownloadInfo downloadInfo) throws RemoteException;

    List<DownloadInfo> j(String str) throws RemoteException;

    void j(int i2) throws RemoteException;

    void j(int i2, boolean z2) throws RemoteException;

    boolean j() throws RemoteException;

    void jl(int i2) throws RemoteException;

    List<DownloadInfo> jx(String str) throws RemoteException;

    void jx(int i2) throws RemoteException;

    void jx(int i2, boolean z2) throws RemoteException;

    boolean jx() throws RemoteException;

    boolean k(int i2) throws RemoteException;

    DownloadInfo l(String str, String str2) throws RemoteException;

    List<DownloadInfo> l() throws RemoteException;

    List<DownloadInfo> l(String str) throws RemoteException;

    void l(int i2, int i3, com.byazt.fn.q qVar, int i4, boolean z2) throws RemoteException;

    void l(int i2, List<com.byazt.fu.l> list) throws RemoteException;

    void l(int i2, boolean z2) throws RemoteException;

    void l(List<String> list) throws RemoteException;

    boolean l(int i2) throws RemoteException;

    boolean l(DownloadInfo downloadInfo) throws RemoteException;

    List<com.byazt.fu.l> q(int i2) throws RemoteException;

    DownloadInfo s(int i2) throws RemoteException;

    boolean u(int i2) throws RemoteException;

    void v(int i2) throws RemoteException;

    ud vv(int i2) throws RemoteException;

    long w(int i2) throws RemoteException;

    List<DownloadInfo> w(String str) throws RemoteException;

    void w() throws RemoteException;

    di xs(int i2) throws RemoteException;

    int zy(int i2) throws RemoteException;

    @com.byazt.kj.hp(hp = {0, 1, 90, 3})
    public static abstract class hp extends Binder implements q {
        public hp() {
            attachInterface(this, "com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
        }

        public static q eb() {
            return C0422hp.hp;
        }

        public static q hp(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof q)) ? new C0422hp(iBinder) : (q) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) throws RemoteException {
            boolean z2;
            if (i2 == 1598968902) {
                parcel2.writeString("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(hp.AbstractBinderC0244hp.hp(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean zL = l(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zL ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    jx(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    j(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    long jW = w(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(jW);
                    return true;
                case 9:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    int iA = a(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iA);
                    return true;
                case 10:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean zEb = eb(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zEb ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    DownloadInfo downloadInfoS = s(parcel.readInt());
                    parcel2.writeNoException();
                    if (downloadInfoS != null) {
                        parcel2.writeInt(1);
                        downloadInfoS.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 12:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<DownloadInfo> listHp = hp(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listHp);
                    return true;
                case 13:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<com.byazt.fu.l> listQ = q(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listQ);
                    return true;
                case 14:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    int iHp = hp(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iHp);
                    return true;
                case 15:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    DownloadInfo downloadInfoL = l(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (downloadInfoL != null) {
                        parcel2.writeInt(1);
                        downloadInfoL.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 16:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<DownloadInfo> listL = l(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listL);
                    return true;
                case 17:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<DownloadInfo> listJx = jx(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listJx);
                    return true;
                case 18:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<DownloadInfo> listJ = j(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listJ);
                    return true;
                case 19:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<DownloadInfo> listL2 = l();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listL2);
                    return true;
                case 20:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    l(parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    l(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    jx(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    e(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt(), parcel.readInt(), q.hp.hp(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    l(parcel.readInt(), parcel.readInt(), q.hp.hp(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    int i4 = parcel.readInt();
                    int i5 = parcel.readInt();
                    com.byazt.fn.q qVarHp = q.hp.hp(parcel.readStrongBinder());
                    int i6 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        z2 = false;
                        z = true;
                    } else {
                        z2 = false;
                    }
                    hp(i4, i5, qVarHp, i6, z, parcel.readInt() != 0 ? true : z2);
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean zHp = hp(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zHp ? 1 : 0);
                    return true;
                case 29:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt(), parcel.readInt() != 0 ? (Notification) Notification.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 30:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt() != 0);
                    return true;
                case 31:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean zJx = jx();
                    parcel2.writeNoException();
                    parcel2.writeInt(zJx ? 1 : 0);
                    return true;
                case 32:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    List<DownloadInfo> listW = w(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(listW);
                    return true;
                case 33:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean zGu = gu(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zGu ? 1 : 0);
                    return true;
                case 34:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    jl(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean zJ = j();
                    parcel2.writeNoException();
                    parcel2.writeInt(zJ ? 1 : 0);
                    return true;
                case 36:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    j(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    int iZy = zy(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iZy);
                    return true;
                case 38:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt() != 0 ? com.byazt.fu.l.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean zL2 = l(parcel.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zL2 ? 1 : 0);
                    return true;
                case 40:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean zK = k(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zK ? 1 : 0);
                    return true;
                case 41:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    v(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean zU = u(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zU ? 1 : 0);
                    return true;
                case 46:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    w();
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt(), parcel.createTypedArrayList(com.byazt.fu.l.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    l(parcel.readInt(), parcel.createTypedArrayList(com.byazt.fu.l.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(pu.hp.hp(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case ILivePlayer.LIVE_DATALOADER_RW_TIMEOUT /* 51 */:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    di diVarXs = xs(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(diVarXs != null ? diVarXs.asBinder() : null);
                    return true;
                case 52:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    ud udVarVv = vv(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(udVarVv != null ? udVarVv.asBinder() : null);
                    return true;
                case 53:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt(), di.hp.hp(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 54:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    com.byazt.fn.eb ebVarEc = ec(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(ebVarEc != null ? ebVarEc.asBinder() : null);
                    return true;
                case 55:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    boolean zA = a();
                    parcel2.writeNoException();
                    parcel2.writeInt(zA ? 1 : 0);
                    return true;
                case 56:
                    parcel.enforceInterface("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    hp(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }

        @com.byazt.kj.hp(hp = {0, 1, 90, 701})
        /* renamed from: com.byazt.yk.q$hp$hp, reason: collision with other inner class name */
        public static class C0422hp implements q {
            public static q hp;

            /* renamed from: l, reason: collision with root package name */
            public IBinder f28013l;

            public C0422hp(IBinder iBinder) {
                this.f28013l = iBinder;
            }

            @Override // com.byazt.yk.q
            public int a(int i2) throws RemoteException {
                int iA;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(9, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                        iA = parcelObtain2.readInt();
                    } else {
                        iA = hp.eb().a(i2);
                    }
                    return iA;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f28013l;
            }

            @Override // com.byazt.yk.q
            public void e(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(24, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().e(i2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public boolean eb(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (!this.f28013l.transact(10, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        return hp.eb().eb(i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public com.byazt.fn.eb ec(int i2) throws RemoteException {
                com.byazt.fn.eb ebVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(54, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                        ebVarHp = eb.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        ebVarHp = hp.eb().ec(i2);
                    }
                    return ebVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public boolean gu(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (!this.f28013l.transact(33, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        return hp.eb().gu(i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void hp(com.byazt.fu.hp hpVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeStrongBinder(hpVar != null ? hpVar.asBinder() : null);
                    if (this.f28013l.transact(1, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().hp(hpVar);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.yk.q
            public void j(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(6, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().j(i2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void jl(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(34, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().jl(i2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void jx(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(5, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().jx(i2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public boolean k(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (!this.f28013l.transact(40, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        return hp.eb().k(i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public boolean l(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (!this.f28013l.transact(4, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        return hp.eb().l(i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public List<com.byazt.fu.l> q(int i2) throws RemoteException {
                List<com.byazt.fu.l> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(13, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                        listCreateTypedArrayList = parcelObtain2.createTypedArrayList(com.byazt.fu.l.CREATOR);
                    } else {
                        listCreateTypedArrayList = hp.eb().q(i2);
                    }
                    return listCreateTypedArrayList;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public DownloadInfo s(int i2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(11, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                        downloadInfoCreateFromParcel = parcelObtain2.readInt() != 0 ? DownloadInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        downloadInfoCreateFromParcel = hp.eb().s(i2);
                    }
                    return downloadInfoCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public boolean u(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (!this.f28013l.transact(45, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        return hp.eb().u(i2);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void v(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(41, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                    } else {
                        hp.eb().v(i2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public ud vv(int i2) throws RemoteException {
                ud udVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(52, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                        udVarHp = ud.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        udVarHp = hp.eb().vv(i2);
                    }
                    return udVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public long w(int i2) throws RemoteException {
                long jW;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(8, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                        jW = parcelObtain2.readLong();
                    } else {
                        jW = hp.eb().w(i2);
                    }
                    return jW;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public di xs(int i2) throws RemoteException {
                di diVarHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(51, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                        diVarHp = di.hp.hp(parcelObtain2.readStrongBinder());
                    } else {
                        diVarHp = hp.eb().xs(i2);
                    }
                    return diVarHp;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public int zy(int i2) throws RemoteException {
                int iZy;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (this.f28013l.transact(37, parcelObtain, parcelObtain2, 0) || hp.eb() == null) {
                        parcelObtain2.readException();
                        iZy = parcelObtain2.readInt();
                    } else {
                        iZy = hp.eb().zy(i2);
                    }
                    return iZy;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void hp(int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (!this.f28013l.transact(2, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(i2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public List<DownloadInfo> j(String str) throws RemoteException {
                List<DownloadInfo> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeString(str);
                    if (!this.f28013l.transact(18, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        listCreateTypedArrayList = hp.eb().j(str);
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

            @Override // com.byazt.yk.q
            public List<DownloadInfo> jx(String str) throws RemoteException {
                List<DownloadInfo> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeString(str);
                    if (!this.f28013l.transact(17, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        listCreateTypedArrayList = hp.eb().jx(str);
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

            @Override // com.byazt.yk.q
            public boolean a() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f28013l.transact(55, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        return hp.eb().a();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public List<DownloadInfo> w(String str) throws RemoteException {
                List<DownloadInfo> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeString(str);
                    if (!this.f28013l.transact(32, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        listCreateTypedArrayList = hp.eb().w(str);
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

            @Override // com.byazt.yk.q
            public DownloadInfo l(String str, String str2) throws RemoteException {
                DownloadInfo downloadInfoCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.f28013l.transact(15, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        downloadInfoCreateFromParcel = hp.eb().l(str, str2);
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

            @Override // com.byazt.yk.q
            public void hp(int i2, boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!this.f28013l.transact(3, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(i2, z2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public boolean j() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f28013l.transact(35, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        return hp.eb().j();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void jx(int i2, boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!this.f28013l.transact(23, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().jx(i2, z2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void w() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f28013l.transact(46, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().w();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public List<DownloadInfo> l(String str) throws RemoteException {
                List<DownloadInfo> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeString(str);
                    if (!this.f28013l.transact(16, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        listCreateTypedArrayList = hp.eb().l(str);
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

            @Override // com.byazt.yk.q
            public void hp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f28013l.transact(7, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp();
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public boolean jx() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f28013l.transact(31, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        return hp.eb().jx();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void j(int i2, boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!this.f28013l.transact(36, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().j(i2, z2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public List<DownloadInfo> l() throws RemoteException {
                List<DownloadInfo> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (!this.f28013l.transact(19, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        listCreateTypedArrayList = hp.eb().l();
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

            @Override // com.byazt.yk.q
            public List<DownloadInfo> hp(String str) throws RemoteException {
                List<DownloadInfo> listCreateTypedArrayList;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeString(str);
                    if (!this.f28013l.transact(12, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        listCreateTypedArrayList = hp.eb().hp(str);
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

            @Override // com.byazt.yk.q
            public void l(List<String> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeStringList(list);
                    if (!this.f28013l.transact(21, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().l(list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public int hp(String str, String str2) throws RemoteException {
                int iHp;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.f28013l.transact(14, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        iHp = hp.eb().hp(str, str2);
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

            @Override // com.byazt.yk.q
            public void l(int i2, boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!this.f28013l.transact(22, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().l(i2, z2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void hp(List<String> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeStringList(list);
                    if (!this.f28013l.transact(20, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void l(int i2, int i3, com.byazt.fn.q qVar, int i4, boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(qVar != null ? qVar.asBinder() : null);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!this.f28013l.transact(26, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().l(i2, i3, qVar, i4, z2);
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

            @Override // com.byazt.yk.q
            public void hp(int i2, int i3, com.byazt.fn.q qVar, int i4, boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(qVar != null ? qVar.asBinder() : null);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (!this.f28013l.transact(25, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(i2, i3, qVar, i4, z2);
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

            @Override // com.byazt.yk.q
            public boolean l(DownloadInfo downloadInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (downloadInfo != null) {
                        parcelObtain.writeInt(1);
                        downloadInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f28013l.transact(39, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        boolean zL = hp.eb().l(downloadInfo);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return zL;
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

            @Override // com.byazt.yk.q
            public void hp(int i2, int i3, com.byazt.fn.q qVar, int i4, boolean z2, boolean z3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeStrongBinder(qVar != null ? qVar.asBinder() : null);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeInt(z3 ? 1 : 0);
                    if (!this.f28013l.transact(27, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(i2, i3, qVar, i4, z2, z3);
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

            @Override // com.byazt.yk.q
            public void l(int i2, List<com.byazt.fu.l> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedList(list);
                    if (!this.f28013l.transact(48, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().l(i2, list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public boolean hp(DownloadInfo downloadInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (downloadInfo != null) {
                        parcelObtain.writeInt(1);
                        downloadInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f28013l.transact(28, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        boolean zHp = hp.eb().hp(downloadInfo);
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

            @Override // com.byazt.yk.q
            public void hp(int i2, Notification notification) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    if (notification != null) {
                        parcelObtain.writeInt(1);
                        notification.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f28013l.transact(29, parcelObtain, null, 1) || hp.eb() == null) {
                        parcelObtain.recycle();
                    } else {
                        hp.eb().hp(i2, notification);
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.byazt.yk.q
            public void hp(boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (this.f28013l.transact(30, parcelObtain, null, 1) || hp.eb() == null) {
                        return;
                    }
                    hp.eb().hp(z2);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void hp(com.byazt.fu.l lVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    if (lVar != null) {
                        parcelObtain.writeInt(1);
                        lVar.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f28013l.transact(38, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(lVar);
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

            @Override // com.byazt.yk.q
            public void hp(int i2, int i3, long j2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeLong(j2);
                    if (!this.f28013l.transact(42, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(i2, i3, j2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void hp(int i2, int i3, int i4, long j2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeLong(j2);
                    if (!this.f28013l.transact(43, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(i2, i3, i4, j2);
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

            @Override // com.byazt.yk.q
            public void hp(int i2, int i3, int i4, int i5) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(i4);
                    parcelObtain.writeInt(i5);
                    if (!this.f28013l.transact(44, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(i2, i3, i4, i5);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void hp(int i2, List<com.byazt.fu.l> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeTypedList(list);
                    if (!this.f28013l.transact(47, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(i2, list);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void hp(pu puVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeStrongBinder(puVar != null ? puVar.asBinder() : null);
                    if (!this.f28013l.transact(49, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(puVar);
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

            @Override // com.byazt.yk.q
            public void hp(int i2, int i3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    if (!this.f28013l.transact(50, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(i2, i3);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.byazt.yk.q
            public void hp(int i2, di diVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeStrongBinder(diVar != null ? diVar.asBinder() : null);
                    if (!this.f28013l.transact(53, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(i2, diVar);
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

            @Override // com.byazt.yk.q
            public void hp(int i2, long j2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.ss.android.socialbase.downloader.downloader.IDownloadAidlService");
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeLong(j2);
                    if (!this.f28013l.transact(56, parcelObtain, parcelObtain2, 0) && hp.eb() != null) {
                        hp.eb().hp(i2, j2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }
}
