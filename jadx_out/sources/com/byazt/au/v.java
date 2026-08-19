package com.byazt.au;

import android.app.Notification;
import android.os.IBinder;
import android.os.RemoteException;
import com.byazt.fn.IDownloadFileUriProvider;
import com.byazt.fn.IDownloadListener;
import com.byazt.fn.ky;
import com.byazt.fn.nu;
import com.byazt.fn.o;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.yk.CSJIndependentProcessDownloadService;
import com.byazt.yk.Downloader;
import com.byazt.yk.q;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 273, UMErrorCode.E_UM_BE_ERROR_WORK_MODE})
/* loaded from: classes2.dex */
public class v implements com.byazt.yk.k, com.byazt.yk.zy {
    public static final String hp = "v";

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.yk.zy f18298j = new u();
    public com.byazt.yk.v<CSJIndependentProcessDownloadService> jx;

    /* renamed from: l, reason: collision with root package name */
    public volatile com.byazt.yk.q f18299l;

    public v() {
        com.byazt.yk.v<CSJIndependentProcessDownloadService> vVarD = com.byazt.yk.jx.d();
        this.jx = vVarD;
        vVarD.hp(this);
    }

    @Override // com.byazt.yk.zy
    public int a(int i2) {
        if (this.f18299l == null) {
            return 0;
        }
        try {
            return this.f18299l.a(i2);
        } catch (RemoteException unused) {
            return 0;
        }
    }

    @Override // com.byazt.yk.zy
    public void e(int i2) {
        if (this.f18299l == null) {
            this.f18298j.e(i2);
        } else {
            try {
                this.f18299l.e(i2);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public boolean eb(int i2) {
        if (this.f18299l == null) {
            return false;
        }
        try {
            return this.f18299l.eb(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.zy
    public IDownloadFileUriProvider ec(int i2) {
        if (this.f18299l == null) {
            return null;
        }
        try {
            return com.byazt.xq.eb.hp(this.f18299l.ec(i2));
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.zy
    public void gu(int i2) {
        com.byazt.yk.v<CSJIndependentProcessDownloadService> vVar = this.jx;
        if (vVar != null) {
            vVar.hp(i2);
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2) {
        if (this.f18299l == null) {
            return;
        }
        try {
            this.f18299l.hp(i2);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.zy
    public void j(int i2) {
        if (this.f18299l == null) {
            return;
        }
        try {
            this.f18299l.j(i2);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.zy
    public boolean jl(int i2) {
        if (this.f18299l == null) {
            return false;
        }
        try {
            return this.f18299l.gu(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.zy
    public void jx(int i2) {
        if (this.f18299l == null) {
            return;
        }
        try {
            this.f18299l.jx(i2);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.zy
    public boolean k(int i2) {
        if (this.f18299l == null) {
            return this.f18298j.k(i2);
        }
        try {
            return this.f18299l.k(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.zy
    public void l(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.yk.zy
    public List<com.byazt.fu.l> q(int i2) {
        if (this.f18299l == null) {
            return this.f18298j.q(i2);
        }
        try {
            return this.f18299l.q(i2);
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.zy
    public DownloadInfo s(int i2) {
        if (this.f18299l == null) {
            return this.f18298j.s(i2);
        }
        try {
            return this.f18299l.s(i2);
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.zy
    public void startService() {
        com.byazt.yk.v<CSJIndependentProcessDownloadService> vVar = this.jx;
        if (vVar != null) {
            vVar.startService();
        }
    }

    @Override // com.byazt.yk.zy
    public boolean u(int i2) {
        if (this.f18299l == null) {
            return this.f18298j.u(i2);
        }
        try {
            return this.f18299l.u(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.zy
    public void v(int i2) {
        if (this.f18299l == null) {
            this.f18298j.v(i2);
        } else {
            try {
                this.f18299l.v(i2);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public nu vv(int i2) {
        if (this.f18299l == null) {
            return null;
        }
        try {
            return com.byazt.xq.eb.hp(this.f18299l.vv(i2));
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.zy
    public long w(int i2) {
        if (this.f18299l == null) {
            return 0L;
        }
        try {
            return this.f18299l.w(i2);
        } catch (RemoteException unused) {
            return 0L;
        }
    }

    @Override // com.byazt.yk.zy
    public o xs(int i2) {
        if (this.f18299l == null) {
            return null;
        }
        try {
            return com.byazt.xq.eb.hp(this.f18299l.xs(i2));
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.zy
    public int zy(int i2) {
        if (this.f18299l == null) {
            return com.byazt.yk.j.hp().l(i2);
        }
        try {
            return this.f18299l.zy(i2);
        } catch (RemoteException unused) {
            return -1;
        }
    }

    @Override // com.byazt.yk.zy
    public boolean l(int i2) {
        if (this.f18299l == null) {
            return false;
        }
        try {
            return this.f18299l.l(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.zy
    public void a() {
        if (this.f18299l == null) {
            this.f18298j.a();
        } else {
            try {
                this.f18299l.w();
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public boolean eb() {
        return this.f18299l != null;
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, boolean z2) {
        if (this.f18299l == null) {
            return;
        }
        try {
            this.f18299l.hp(i2, z2);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.zy
    public List<DownloadInfo> j() {
        if (this.f18299l == null) {
            return this.f18298j.j();
        }
        try {
            return this.f18299l.l();
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.zy
    public List<DownloadInfo> jx(String str) {
        if (this.f18299l == null) {
            return this.f18298j.jx(str);
        }
        try {
            return this.f18299l.jx(str);
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.zy
    public List<DownloadInfo> w(String str) {
        if (this.f18299l == null) {
            return null;
        }
        try {
            return this.f18299l.j(str);
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.zy
    public DownloadInfo l(String str, String str2) {
        return s(hp(str, str2));
    }

    @Override // com.byazt.yk.k
    public void s() {
        this.f18299l = null;
    }

    @Override // com.byazt.yk.zy
    public void hp() {
        if (this.f18299l == null) {
            return;
        }
        try {
            this.f18299l.hp();
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.zy
    public boolean w() {
        if (this.f18299l == null) {
            return this.f18298j.w();
        }
        try {
            return this.f18299l.j();
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.zy
    public List<DownloadInfo> j(String str) {
        if (this.f18299l == null) {
            return this.f18298j.j(str);
        }
        try {
            return this.f18299l.w(str);
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.zy
    public boolean jx() {
        return com.byazt.yk.jx.m();
    }

    @Override // com.byazt.yk.zy
    public List<DownloadInfo> l(String str) {
        if (this.f18299l == null) {
            return this.f18298j.l(str);
        }
        try {
            return this.f18299l.l(str);
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.zy
    public List<DownloadInfo> hp(String str) {
        if (this.f18299l == null) {
            return this.f18298j.hp(str);
        }
        try {
            return this.f18299l.hp(str);
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // com.byazt.yk.zy
    public void jx(int i2, boolean z2) {
        if (this.f18299l == null) {
            return;
        }
        try {
            this.f18299l.j(i2, z2);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.zy
    public boolean jx(DownloadInfo downloadInfo) {
        if (this.f18299l == null) {
            return this.f18298j.jx(downloadInfo);
        }
        try {
            return this.f18299l.l(downloadInfo);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.zy
    public void l(List<String> list) {
        if (this.f18299l == null) {
            this.f18298j.l(list);
        } else {
            try {
                this.f18299l.l(list);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public int hp(String str, String str2) {
        return com.byazt.yk.jx.hp(str, str2);
    }

    @Override // com.byazt.yk.zy
    public void hp(List<String> list) {
        if (this.f18299l == null) {
            this.f18298j.hp(list);
        } else {
            try {
                this.f18299l.hp(list);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public void l(int i2, boolean z2) {
        if (this.f18299l == null) {
            this.f18298j.l(i2, z2);
        } else {
            try {
                this.f18299l.l(i2, z2);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, int i3, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2) {
        if (this.f18299l == null) {
            return;
        }
        try {
            this.f18299l.l(i2, i3, com.byazt.xq.eb.hp(iDownloadListener, aVar != com.byazt.oy.a.SUB), aVar.ordinal(), z2);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.zy
    public void l(int i2, int i3, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2) {
        if (this.f18299l == null) {
            return;
        }
        try {
            this.f18299l.hp(i2, i3, com.byazt.xq.eb.hp(iDownloadListener, aVar != com.byazt.oy.a.SUB), aVar.ordinal(), z2);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, int i3, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2, boolean z3) {
        if (this.f18299l == null) {
            return;
        }
        try {
            this.f18299l.hp(i2, i3, com.byazt.xq.eb.hp(iDownloadListener, aVar != com.byazt.oy.a.SUB), aVar.ordinal(), z2, z3);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.zy
    public boolean l() {
        if (this.f18299l == null) {
            com.byazt.nu.hp.j(hp, "isServiceForeground, aidlService is null");
            return false;
        }
        com.byazt.nu.hp.jx(hp, "aidlService.isServiceForeground");
        try {
            return this.f18299l.a();
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.zy
    public boolean hp(DownloadInfo downloadInfo) {
        if (this.f18299l == null) {
            return this.f18298j.hp(downloadInfo);
        }
        try {
            this.f18299l.hp(downloadInfo);
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, Notification notification) {
        if (this.f18299l == null) {
            com.byazt.nu.hp.j(hp, "startForeground, aidlService is null");
            return;
        }
        com.byazt.nu.hp.jx(hp, "aidlService.startForeground, id = ".concat(String.valueOf(i2)));
        try {
            this.f18299l.hp(i2, notification);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.zy
    public void l(DownloadTask downloadTask) {
        com.byazt.yk.v<CSJIndependentProcessDownloadService> vVar;
        if (downloadTask == null || (vVar = this.jx) == null) {
            return;
        }
        vVar.jx(downloadTask);
    }

    @Override // com.byazt.yk.zy
    public void l(int i2, List<com.byazt.fu.l> list) {
        if (this.f18299l == null) {
            this.f18298j.l(i2, list);
        } else {
            try {
                this.f18299l.hp(i2, list);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(boolean z2, boolean z3) {
        if (this.f18299l == null) {
            com.byazt.nu.hp.j(hp, "stopForeground, aidlService is null");
            return;
        }
        com.byazt.nu.hp.jx(hp, "aidlService.stopForeground");
        try {
            this.f18299l.hp(z3);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(DownloadTask downloadTask) {
        com.byazt.yk.v<CSJIndependentProcessDownloadService> vVar;
        if (downloadTask == null || (vVar = this.jx) == null) {
            return;
        }
        vVar.l(downloadTask);
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, List<com.byazt.fu.l> list) {
        if (this.f18299l == null) {
            return;
        }
        try {
            this.f18299l.l(i2, list);
        } catch (RemoteException unused) {
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(com.byazt.fu.l lVar) {
        if (this.f18299l == null) {
            this.f18298j.hp(lVar);
        } else {
            try {
                this.f18299l.hp(lVar);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, int i3, long j2) {
        if (this.f18299l == null) {
            this.f18298j.hp(i2, i3, j2);
        } else {
            try {
                this.f18299l.hp(i2, i3, j2);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, int i3, int i4, long j2) {
        if (this.f18299l == null) {
            this.f18298j.hp(i2, i3, i4, j2);
        } else {
            try {
                this.f18299l.hp(i2, i3, i4, j2);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, int i3, int i4, int i5) {
        if (this.f18299l == null) {
            this.f18298j.hp(i2, i3, i4, i5);
        } else {
            try {
                this.f18299l.hp(i2, i3, i4, i5);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(ky kyVar) {
        if (this.f18299l != null) {
            try {
                this.f18299l.hp(com.byazt.xq.eb.hp(kyVar));
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, int i3) {
        if (this.f18299l != null) {
            try {
                this.f18299l.hp(i2, i3);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, o oVar) {
        if (this.f18299l != null) {
            try {
                this.f18299l.hp(i2, com.byazt.xq.eb.hp(oVar));
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.byazt.yk.k
    public void hp(IBinder iBinder) {
        this.f18299l = q.hp.hp(iBinder);
        if (com.byazt.xq.a.hp()) {
            hp(new ky() { // from class: com.byazt.au.v.1
                @Override // com.byazt.fn.ky
                public void hp(int i2, int i3) {
                    if (i3 != 1) {
                        if (i3 == 2) {
                            Downloader.getInstance(com.byazt.yk.jx.mp()).cancel(i2);
                        }
                    } else {
                        Downloader.getInstance(com.byazt.yk.jx.mp()).pause(i2);
                        List<com.byazt.fu.l> listQ = jl.hp(false).q(i2);
                        if (listQ != null) {
                            jl.hp(true).hp(i2, com.byazt.xq.a.hp(listQ));
                        }
                    }
                }
            });
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, long j2) {
        if (this.f18299l == null) {
            return;
        }
        try {
            this.f18299l.hp(i2, j2);
        } catch (RemoteException unused) {
        }
    }
}
