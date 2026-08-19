package com.byazt.au;

import android.app.Notification;
import com.byazt.fn.IDownloadFileUriProvider;
import com.byazt.fn.IDownloadListener;
import com.byazt.fn.ky;
import com.byazt.fn.nu;
import com.byazt.fn.o;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.io.BaseException;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 273, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF})
/* loaded from: classes2.dex */
public class u implements com.byazt.yk.zy {
    public final hp hp;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f18296j;
    public final com.byazt.yk.v jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.yk.e f18297l;

    public u() {
        this(false);
    }

    @Override // com.byazt.yk.zy
    public int a(int i2) {
        DownloadInfo downloadInfoJ;
        hp hpVar = this.hp;
        if (hpVar == null || (downloadInfoJ = hpVar.j(i2)) == null) {
            return 0;
        }
        return downloadInfoJ.getStatus();
    }

    @Override // com.byazt.yk.zy
    public void e(int i2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.zy(i2);
        }
    }

    @Override // com.byazt.yk.zy
    public boolean eb(int i2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.hp(i2);
        }
        return false;
    }

    @Override // com.byazt.yk.zy
    public IDownloadFileUriProvider ec(int i2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.e(i2);
        }
        return null;
    }

    @Override // com.byazt.yk.zy
    public void gu(int i2) {
        com.byazt.nu.hp.hp(i2);
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.w(i2);
        }
    }

    @Override // com.byazt.yk.zy
    public void j(int i2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.eb(i2);
        }
    }

    @Override // com.byazt.yk.zy
    public boolean jl(int i2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.gu(i2);
        }
        return false;
    }

    @Override // com.byazt.yk.zy
    public void jx(int i2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.a(i2);
        }
    }

    @Override // com.byazt.yk.zy
    public boolean k(int i2) {
        return this.f18297l.w(i2);
    }

    @Override // com.byazt.yk.zy
    public boolean l(int i2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.k(i2);
        }
        return false;
    }

    @Override // com.byazt.yk.zy
    public List<com.byazt.fu.l> q(int i2) {
        return this.f18297l.jx(i2);
    }

    @Override // com.byazt.yk.zy
    public DownloadInfo s(int i2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.j(i2);
        }
        return null;
    }

    @Override // com.byazt.yk.zy
    public void startService() {
    }

    @Override // com.byazt.yk.zy
    public boolean u(int i2) {
        return this.f18297l.a(i2);
    }

    @Override // com.byazt.yk.zy
    public void v(int i2) {
        this.f18297l.j(i2);
    }

    @Override // com.byazt.yk.zy
    public nu vv(int i2) {
        hp hpVar = this.hp;
        nu nuVarS = hpVar != null ? hpVar.s(i2) : null;
        return nuVarS == null ? com.byazt.yk.jx.xh() : nuVarS;
    }

    @Override // com.byazt.yk.zy
    public long w(int i2) {
        DownloadInfo downloadInfoL;
        com.byazt.yk.e eVar = this.f18297l;
        if (eVar == null || (downloadInfoL = eVar.l(i2)) == null) {
            return 0L;
        }
        int chunkCount = downloadInfoL.getChunkCount();
        if (chunkCount <= 1) {
            return downloadInfoL.getCurBytes();
        }
        List<com.byazt.fu.l> listJx = this.f18297l.jx(i2);
        if (listJx == null || listJx.size() != chunkCount) {
            return 0L;
        }
        return com.byazt.xq.a.l(listJx);
    }

    @Override // com.byazt.yk.zy
    public o xs(int i2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.q(i2);
        }
        return null;
    }

    @Override // com.byazt.yk.zy
    public int zy(int i2) {
        return com.byazt.yk.j.hp().hp(i2);
    }

    public u(boolean z2) {
        this.hp = com.byazt.yk.jx.ud();
        this.f18297l = com.byazt.yk.jx.di();
        if (z2) {
            this.jx = com.byazt.yk.jx.d();
        } else {
            this.jx = com.byazt.yk.jx.o();
        }
        this.f18296j = com.byazt.jb.hp.jx().l("service_alive", false);
    }

    @Override // com.byazt.yk.zy
    public boolean eb() {
        com.byazt.yk.v vVar;
        return this.f18296j && (vVar = this.jx) != null && vVar.hp();
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, boolean z2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(i2, z2);
        }
    }

    @Override // com.byazt.yk.zy
    public List<DownloadInfo> j() {
        com.byazt.yk.e eVar = this.f18297l;
        if (eVar != null) {
            return eVar.l();
        }
        return null;
    }

    @Override // com.byazt.yk.zy
    public List<DownloadInfo> jx(String str) {
        com.byazt.yk.e eVar = this.f18297l;
        if (eVar != null) {
            return eVar.jx(str);
        }
        return null;
    }

    @Override // com.byazt.yk.zy
    public List<DownloadInfo> l(String str) {
        com.byazt.yk.e eVar = this.f18297l;
        if (eVar != null) {
            return eVar.l(str);
        }
        return null;
    }

    @Override // com.byazt.yk.zy
    public void a() {
        this.f18297l.jx();
    }

    @Override // com.byazt.yk.zy
    public void hp() {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.l();
        }
    }

    public void j(int i2, boolean z2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.jx(i2, z2);
        }
    }

    @Override // com.byazt.yk.zy
    public boolean jx() {
        return com.byazt.yk.jx.m();
    }

    @Override // com.byazt.yk.zy
    public void l(List<String> list) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.l(list);
        }
    }

    @Override // com.byazt.yk.zy
    public void jx(int i2, boolean z2) {
        com.byazt.yk.j.hp().hp(i2, z2);
    }

    @Override // com.byazt.yk.zy
    public void hp(List<String> list) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(list);
        }
    }

    @Override // com.byazt.yk.zy
    public List<DownloadInfo> j(String str) {
        com.byazt.yk.e eVar = this.f18297l;
        if (eVar != null) {
            return eVar.j(str);
        }
        return null;
    }

    @Override // com.byazt.yk.zy
    public boolean jx(DownloadInfo downloadInfo) {
        return this.f18297l.hp(downloadInfo);
    }

    @Override // com.byazt.yk.zy
    public DownloadInfo l(String str, String str2) {
        return s(com.byazt.yk.jx.hp(str, str2));
    }

    @Override // com.byazt.yk.zy
    public List<DownloadInfo> w(String str) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.l(str);
        }
        return null;
    }

    @Override // com.byazt.yk.zy
    public List<DownloadInfo> hp(String str) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.hp(str);
        }
        return null;
    }

    @Override // com.byazt.yk.zy
    public void l(int i2, boolean z2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.l(i2, z2);
        }
    }

    @Override // com.byazt.yk.zy
    public boolean w() {
        return this.f18297l.j();
    }

    @Override // com.byazt.yk.zy
    public int hp(String str, String str2) {
        return com.byazt.yk.jx.hp(str, str2);
    }

    @Override // com.byazt.yk.zy
    public void l(int i2, int i3, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(i2, i3, iDownloadListener, aVar, z2);
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, int i3, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.l(i2, i3, iDownloadListener, aVar, z2);
        }
    }

    @Override // com.byazt.yk.zy
    public boolean l() {
        com.byazt.yk.v vVar = this.jx;
        if (vVar != null) {
            return vVar.l();
        }
        return false;
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, int i3, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2, boolean z3) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(i2, i3, iDownloadListener, aVar, z2, z3);
        }
    }

    @Override // com.byazt.yk.zy
    public void l(DownloadTask downloadTask) {
        com.byazt.yk.v vVar = this.jx;
        if (vVar != null) {
            vVar.jx(downloadTask);
        }
    }

    @Override // com.byazt.yk.zy
    public boolean hp(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return false;
        }
        boolean zHp = com.byazt.xq.a.hp(downloadInfo.getStatus(), downloadInfo.getSavePath(), downloadInfo.getName());
        if (zHp) {
            if (com.byazt.xq.hp.hp(33554432)) {
                l(downloadInfo.getId(), true);
                return zHp;
            }
            j(downloadInfo.getId(), true);
        }
        return zHp;
    }

    @Override // com.byazt.yk.zy
    public void l(DownloadInfo downloadInfo) {
        this.f18297l.l(downloadInfo);
    }

    @Override // com.byazt.yk.zy
    public void l(int i2, List<com.byazt.fu.l> list) {
        this.f18297l.l(i2, list);
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, Notification notification) {
        com.byazt.yk.v vVar = this.jx;
        if (vVar != null) {
            vVar.hp(i2, notification);
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(boolean z2, boolean z3) {
        com.byazt.yk.v vVar = this.jx;
        if (vVar != null) {
            vVar.hp(z3);
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(DownloadTask downloadTask) {
        com.byazt.yk.v vVar = this.jx;
        if (vVar != null) {
            vVar.l(downloadTask);
        } else if (downloadTask != null) {
            com.byazt.no.hp.hp(downloadTask.getMonitorDepend(), downloadTask.getDownloadInfo(), new BaseException(1003, "downloadServiceHandler is null"), downloadTask.getDownloadInfo() != null ? downloadTask.getDownloadInfo().getStatus() : 0);
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, List<com.byazt.fu.l> list) {
        this.f18297l.hp(i2, list);
    }

    @Override // com.byazt.yk.zy
    public void hp(com.byazt.fu.l lVar) {
        this.f18297l.hp(lVar);
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, int i3, long j2) {
        this.f18297l.hp(i2, i3, j2);
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, int i3, int i4, long j2) {
        this.f18297l.hp(i2, i3, i4, j2);
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, int i3, int i4, int i5) {
        this.f18297l.hp(i2, i3, i4, i5);
    }

    @Override // com.byazt.yk.zy
    public void hp(ky kyVar) {
        com.byazt.yk.jx.hp(kyVar);
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, int i3) {
        if (com.byazt.yk.jx.w() != null) {
            for (ky kyVar : com.byazt.yk.jx.w()) {
                if (kyVar != null) {
                    kyVar.hp(i3, i2);
                }
            }
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, o oVar) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.hp(i2, oVar);
        }
    }

    @Override // com.byazt.yk.zy
    public void hp(int i2, long j2) {
        hp hpVar = this.hp;
        if (hpVar != null) {
            hpVar.l(i2, j2);
        }
    }
}
