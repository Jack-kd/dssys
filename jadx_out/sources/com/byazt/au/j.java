package com.byazt.au;

import android.database.sqlite.SQLiteException;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import com.byazt.ez.s;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.yk.jx;
import com.byazt.yk.sz;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 273, 38})
/* loaded from: classes2.dex */
public class j implements com.byazt.yk.e {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.ez.s f18286a;

    /* renamed from: j, reason: collision with root package name */
    public volatile boolean f18287j;
    public volatile boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public sz f18288l;

    /* renamed from: w, reason: collision with root package name */
    public s.hp f18289w = new s.hp() { // from class: com.byazt.au.j.1
        @Override // com.byazt.ez.s.hp
        public void hp(Message message) {
            if (message.what == 1) {
                com.byazt.yk.jx.jl().execute(new Runnable() { // from class: com.byazt.au.j.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            j.this.q();
                        } catch (Exception unused) {
                        }
                    }
                });
            }
        }
    };
    public final gu hp = new gu();

    public j() {
        this.f18286a = null;
        if (com.byazt.jb.hp.jx().hp("fix_sigbus_downloader_db") && !com.byazt.xq.a.hp() && com.byazt.yk.jx.nd()) {
            this.f18288l = com.byazt.yk.jx.hd().hp(new jx.hp.InterfaceC0421hp() { // from class: com.byazt.au.j.2
                @Override // com.byazt.yk.jx.hp.InterfaceC0421hp
                public void hp() {
                    j.this.f18288l = new com.byazt.cy.w();
                    com.byazt.ymw.u.l("DefaultDownloadCache", "rebind error,use backup sqlDownloadCache");
                }
            });
        } else {
            this.f18288l = new com.byazt.cy.w();
        }
        this.jx = false;
        this.f18286a = new com.byazt.ez.s(Looper.getMainLooper(), this.f18289w);
        eb();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        synchronized (this) {
            this.jx = true;
            notifyAll();
        }
    }

    public sz a() {
        return this.f18288l;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo eb(int i2) {
        DownloadInfo downloadInfoEb = this.hp.eb(i2);
        jx(downloadInfoEb);
        return downloadInfoEb;
    }

    @Override // com.byazt.yk.e
    public boolean j() {
        return this.jx;
    }

    @Override // com.byazt.yk.e
    public Map<Long, com.byazt.rc.q> jl(int i2) {
        Map<Long, com.byazt.rc.q> mapJl = this.hp.jl(i2);
        if (mapJl != null && !mapJl.isEmpty()) {
            return mapJl;
        }
        Map<Long, com.byazt.rc.q> mapJl2 = this.f18288l.jl(i2);
        this.hp.hp(i2, mapJl2);
        return mapJl2;
    }

    @Override // com.byazt.yk.e
    public List<DownloadInfo> jx(String str) {
        return this.hp.jx(str);
    }

    @Override // com.byazt.yk.e
    public List<com.byazt.rc.q> k(int i2) {
        List<com.byazt.rc.q> listK = this.hp.k(i2);
        return (listK == null || listK.size() == 0) ? this.f18288l.k(i2) : listK;
    }

    public void q() {
        List<String> listHp;
        ArrayList arrayList;
        DownloadInfo downloadInfo;
        DownloadInfo downloadInfo2;
        if (this.jx) {
            if (this.f18287j) {
                com.byazt.nu.hp.l("DefaultDownloadCache", "resumeUnCompleteTask: has resumed, return!!!");
                return;
            }
            this.f18287j = true;
            if (com.byazt.xq.a.hp()) {
                com.byazt.yk.jl jlVarB = com.byazt.yk.jx.b();
                if (jlVarB != null) {
                    listHp = jlVarB.hp();
                    arrayList = (listHp == null || listHp.isEmpty()) ? null : new ArrayList();
                } else {
                    listHp = null;
                    arrayList = null;
                }
                SparseArray sparseArray = new SparseArray();
                synchronized (this) {
                    try {
                        SparseArray<DownloadInfo> sparseArrayHp = this.hp.hp();
                        for (int i2 = 0; i2 < sparseArrayHp.size(); i2++) {
                            int iKeyAt = sparseArrayHp.keyAt(i2);
                            if (iKeyAt != 0 && (downloadInfo2 = sparseArrayHp.get(iKeyAt)) != null) {
                                sparseArray.put(iKeyAt, downloadInfo2);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (sparseArray.size() == 0) {
                    return;
                }
                for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                    int iKeyAt2 = sparseArray.keyAt(i3);
                    if (iKeyAt2 != 0 && (downloadInfo = (DownloadInfo) sparseArray.get(iKeyAt2)) != null) {
                        int realStatus = downloadInfo.getRealStatus();
                        int statusAtDbInit = downloadInfo.getStatusAtDbInit();
                        if (statusAtDbInit > 0 && statusAtDbInit <= 11) {
                            com.byazt.no.hp.hp(com.byazt.yk.jx.eb(), downloadInfo, (BaseException) null, -5);
                        }
                        if (listHp != null && arrayList != null && downloadInfo.getMimeType() != null && listHp.contains(downloadInfo.getMimeType()) && (com.byazt.jb.hp.hp(downloadInfo.getId()).l("enable_notification_ui") >= 2 || realStatus != -2 || downloadInfo.isPauseReserveOnWifi())) {
                            downloadInfo.setDownloadFromReserveWifi(false);
                            arrayList.add(downloadInfo);
                        }
                    }
                }
                if (jlVarB == null || arrayList == null || arrayList.isEmpty()) {
                    return;
                }
                jlVarB.hp(arrayList, 1);
            }
        }
    }

    public void s() {
        this.f18286a.sendMessageDelayed(this.f18286a.obtainMessage(1), com.byazt.jb.hp.jx().hp("task_resume_delay") ? 4000L : 1000L);
    }

    @Override // com.byazt.yk.e
    public boolean w() {
        if (this.jx) {
            return true;
        }
        synchronized (this) {
            if (!this.jx) {
                com.byazt.nu.hp.j("DefaultDownloadCache", "ensureDownloadCacheSyncSuccess: waiting start!!!!");
                try {
                    wait(5000L);
                } catch (InterruptedException unused) {
                }
                com.byazt.nu.hp.j("DefaultDownloadCache", "ensureDownloadCacheSyncSuccess: waiting end!!!!");
            }
        }
        return this.jx;
    }

    @Override // com.byazt.yk.e
    public void zy(int i2) {
        this.hp.zy(i2);
        this.f18288l.zy(i2);
    }

    @Override // com.byazt.yk.e
    public boolean a(int i2) {
        com.byazt.yk.zy zyVarHp;
        if (!com.byazt.xq.a.l() || (zyVarHp = jl.hp(true)) == null) {
            this.f18288l.a(i2);
        } else {
            zyVarHp.u(i2);
        }
        return this.hp.a(i2);
    }

    @Override // com.byazt.yk.e
    public List<DownloadInfo> j(String str) {
        return this.hp.j(str);
    }

    @Override // com.byazt.yk.e
    public List<com.byazt.fu.l> jx(int i2) {
        return this.hp.jx(i2);
    }

    @Override // com.byazt.yk.e
    public DownloadInfo l(int i2) {
        return this.hp.l(i2);
    }

    public void eb() {
        List<com.byazt.fu.l> list;
        DownloadInfo downloadInfo;
        com.byazt.yk.jx.hp(com.byazt.oy.j.SYNC_START);
        final SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        final SparseArray<List<com.byazt.fu.l>> sparseArray2 = new SparseArray<>();
        synchronized (this.hp) {
            try {
                SparseArray<DownloadInfo> sparseArrayHp = this.hp.hp();
                for (int i2 = 0; i2 < sparseArrayHp.size(); i2++) {
                    int iKeyAt = sparseArrayHp.keyAt(i2);
                    if (iKeyAt != 0 && (downloadInfo = sparseArrayHp.get(iKeyAt)) != null) {
                        sparseArray.put(iKeyAt, downloadInfo);
                    }
                }
                SparseArray<List<com.byazt.fu.l>> sparseArrayA = this.hp.a();
                for (int i3 = 0; i3 < sparseArrayA.size(); i3++) {
                    int iKeyAt2 = sparseArrayA.keyAt(i3);
                    if (iKeyAt2 != 0 && (list = sparseArrayA.get(iKeyAt2)) != null) {
                        sparseArray2.put(iKeyAt2, new CopyOnWriteArrayList(list));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f18288l.hp(sparseArray, sparseArray2, new com.byazt.cy.j() { // from class: com.byazt.au.j.3
            @Override // com.byazt.cy.j
            public void hp() {
                synchronized (j.this.hp) {
                    try {
                        SparseArray<DownloadInfo> sparseArrayHp2 = j.this.hp.hp();
                        if (sparseArray != null) {
                            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                                int iKeyAt3 = sparseArray.keyAt(i4);
                                if (iKeyAt3 != 0) {
                                    sparseArrayHp2.put(iKeyAt3, (DownloadInfo) sparseArray.get(iKeyAt3));
                                }
                            }
                        }
                        SparseArray<List<com.byazt.fu.l>> sparseArrayA2 = j.this.hp.a();
                        if (sparseArray2 != null) {
                            for (int i5 = 0; i5 < sparseArray2.size(); i5++) {
                                int iKeyAt4 = sparseArray2.keyAt(i5);
                                if (iKeyAt4 != 0) {
                                    sparseArrayA2.put(iKeyAt4, (List) sparseArray2.get(iKeyAt4));
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                j.this.e();
                j.this.s();
                com.byazt.yk.jx.hp(com.byazt.oy.j.SYNC_SUCCESS);
            }
        });
    }

    public gu hp() {
        return this.hp;
    }

    @Override // com.byazt.yk.e
    public void j(int i2) {
        this.hp.j(i2);
        if (com.byazt.xq.a.l()) {
            com.byazt.yk.zy zyVarHp = jl.hp(true);
            if (zyVarHp != null) {
                zyVarHp.v(i2);
                return;
            } else {
                this.f18288l.j(i2);
                return;
            }
        }
        this.f18288l.j(i2);
    }

    @Override // com.byazt.yk.e
    public void jx() {
        try {
            this.hp.jx();
        } catch (SQLiteException unused) {
        }
        if (com.byazt.xq.a.l()) {
            com.byazt.yk.zy zyVarHp = jl.hp(true);
            if (zyVarHp != null) {
                zyVarHp.a();
                return;
            } else {
                this.f18288l.jx();
                return;
            }
        }
        this.f18288l.jx();
    }

    @Override // com.byazt.yk.e
    public List<DownloadInfo> l(String str) {
        return this.hp.l(str);
    }

    @Override // com.byazt.yk.e
    public List<DownloadInfo> hp(String str) {
        return this.hp.hp(str);
    }

    @Override // com.byazt.yk.e
    public List<DownloadInfo> l() {
        return this.hp.l();
    }

    @Override // com.byazt.yk.e
    public DownloadInfo s(int i2) {
        DownloadInfo downloadInfoS = this.hp.s(i2);
        jx(downloadInfoS);
        return downloadInfoS;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo e(int i2) {
        DownloadInfo downloadInfoE = this.hp.e(i2);
        jx(downloadInfoE);
        return downloadInfoE;
    }

    @Override // com.byazt.yk.e
    public void hp(com.byazt.fu.l lVar) {
        synchronized (this.hp) {
            this.hp.hp(lVar);
        }
        if (com.byazt.xq.a.l()) {
            com.byazt.yk.zy zyVarHp = jl.hp(true);
            if (zyVarHp != null) {
                zyVarHp.hp(lVar);
                return;
            } else {
                this.f18288l.hp(lVar);
                return;
            }
        }
        this.f18288l.hp(lVar);
    }

    @Override // com.byazt.yk.e
    public void l(com.byazt.fu.l lVar) {
        if (com.byazt.xq.a.l()) {
            com.byazt.yk.zy zyVarHp = jl.hp(true);
            if (zyVarHp != null) {
                zyVarHp.hp(lVar);
                return;
            } else {
                this.f18288l.hp(lVar);
                return;
            }
        }
        this.f18288l.hp(lVar);
    }

    private void jx(DownloadInfo downloadInfo) {
        hp(downloadInfo, true);
    }

    @Override // com.byazt.yk.e
    public DownloadInfo j(int i2, long j2) {
        DownloadInfo downloadInfoJ = this.hp.j(i2, j2);
        l(i2, (List<com.byazt.fu.l>) null);
        return downloadInfoJ;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo jx(int i2, long j2) {
        DownloadInfo downloadInfoJx = this.hp.jx(i2, j2);
        l(i2, (List<com.byazt.fu.l>) null);
        return downloadInfoJx;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo l(int i2, long j2) {
        DownloadInfo downloadInfoL = this.hp.l(i2, j2);
        l(i2, (List<com.byazt.fu.l>) null);
        return downloadInfoL;
    }

    @Override // com.byazt.yk.e
    public boolean w(int i2) {
        com.byazt.yk.zy zyVarHp;
        try {
            if (com.byazt.xq.a.l() && (zyVarHp = jl.hp(true)) != null) {
                zyVarHp.k(i2);
            } else {
                this.f18288l.w(i2);
            }
        } catch (SQLiteException unused) {
        }
        return this.hp.w(i2);
    }

    @Override // com.byazt.yk.e
    public void l(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        this.hp.hp(downloadInfo);
    }

    @Override // com.byazt.yk.e
    public void l(int i2, List<com.byazt.fu.l> list) {
        try {
            hp(this.hp.l(i2));
            if (list == null) {
                list = this.hp.jx(i2);
            }
            if (com.byazt.xq.a.l()) {
                com.byazt.yk.zy zyVarHp = jl.hp(true);
                if (zyVarHp != null) {
                    zyVarHp.l(i2, list);
                    return;
                } else {
                    this.f18288l.l(i2, list);
                    return;
                }
            }
            this.f18288l.l(i2, list);
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.yk.e
    public void hp(int i2, int i3, long j2) {
        this.hp.hp(i2, i3, j2);
        if (com.byazt.xq.a.l()) {
            com.byazt.yk.zy zyVarHp = jl.hp(true);
            if (zyVarHp != null) {
                zyVarHp.hp(i2, i3, j2);
                return;
            } else {
                this.f18288l.hp(i2, i3, j2);
                return;
            }
        }
        this.f18288l.hp(i2, i3, j2);
    }

    @Override // com.byazt.yk.e
    public void hp(int i2, int i3, int i4, long j2) {
        if (com.byazt.xq.a.l()) {
            com.byazt.yk.zy zyVarHp = jl.hp(true);
            if (zyVarHp != null) {
                zyVarHp.hp(i2, i3, i4, j2);
                return;
            } else {
                this.f18288l.hp(i2, i3, i4, j2);
                return;
            }
        }
        this.f18288l.hp(i2, i3, i4, j2);
    }

    @Override // com.byazt.yk.e
    public void hp(int i2, int i3, int i4, int i5) {
        if (com.byazt.xq.a.l()) {
            com.byazt.yk.zy zyVarHp = jl.hp(true);
            if (zyVarHp != null) {
                zyVarHp.hp(i2, i3, i4, i5);
                return;
            } else {
                this.f18288l.hp(i2, i3, i4, i5);
                return;
            }
        }
        this.f18288l.hp(i2, i3, i4, i5);
    }

    @Override // com.byazt.yk.e
    public DownloadInfo hp(int i2, int i3) {
        DownloadInfo downloadInfoHp = this.hp.hp(i2, i3);
        jx(downloadInfoHp);
        return downloadInfoHp;
    }

    @Override // com.byazt.yk.e
    public boolean hp(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return false;
        }
        boolean zHp = this.hp.hp(downloadInfo);
        jx(downloadInfo);
        return zHp;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo hp(int i2, long j2, String str, String str2) {
        DownloadInfo downloadInfoHp = this.hp.hp(i2, j2, str, str2);
        jx(downloadInfoHp);
        return downloadInfoHp;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo q(int i2) {
        DownloadInfo downloadInfoQ = this.hp.q(i2);
        jx(downloadInfoQ);
        return downloadInfoQ;
    }

    @Override // com.byazt.yk.e
    public DownloadInfo hp(int i2, long j2) {
        DownloadInfo downloadInfoHp = this.hp.hp(i2, j2);
        hp(downloadInfoHp, false);
        return downloadInfoHp;
    }

    private void hp(DownloadInfo downloadInfo, boolean z2) {
        if (downloadInfo == null) {
            return;
        }
        if (!com.byazt.xq.a.l()) {
            this.f18288l.hp(downloadInfo);
            return;
        }
        if (z2) {
            com.byazt.yk.zy zyVarHp = jl.hp(true);
            if (zyVarHp != null) {
                zyVarHp.jx(downloadInfo);
            } else {
                this.f18288l.hp(downloadInfo);
            }
        }
    }

    @Override // com.byazt.yk.e
    public void hp(int i2, List<com.byazt.fu.l> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.hp.hp(i2, list);
        if (com.byazt.xq.a.jx()) {
            this.f18288l.l(i2, list);
        }
    }

    @Override // com.byazt.yk.e
    public boolean hp(int i2, Map<Long, com.byazt.rc.q> map) {
        this.hp.hp(i2, map);
        this.f18288l.hp(i2, map);
        return false;
    }
}
