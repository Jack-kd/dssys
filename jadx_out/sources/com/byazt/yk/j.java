package com.byazt.yk;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.byazt.au.DownloadHandleService;
import com.byazt.fn.IDownloadFileUriProvider;
import com.byazt.fn.IDownloadListener;
import com.byazt.fn.nu;
import com.byazt.fn.o;
import com.byazt.fn.wv;
import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.io.BaseException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 90, 38})
/* loaded from: classes3.dex */
public class j {
    public static volatile j hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile SparseArray<Boolean> f27992l = new SparseArray<>();
    public Handler jx = new Handler(Looper.getMainLooper());

    /* renamed from: j, reason: collision with root package name */
    public volatile List<wv> f27991j = new ArrayList();

    public static j hp() {
        if (hp == null) {
            synchronized (j.class) {
                hp = new j();
            }
        }
        return hp;
    }

    public void a(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return;
        }
        zyVarJx.jx(i2);
    }

    public boolean e(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return false;
        }
        return zyVarJx.eb(i2);
    }

    public void eb(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return;
        }
        zyVarJx.j(i2);
    }

    public DownloadInfo gu(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return null;
        }
        return zyVarJx.s(i2);
    }

    public void j(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return;
        }
        zyVarJx.hp(i2);
    }

    public o jl(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return null;
        }
        return zyVarJx.xs(i2);
    }

    public zy jx(int i2) {
        return com.byazt.au.jl.hp(hp(i2) == 1 && !com.byazt.xq.a.jx());
    }

    public void k(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return;
        }
        zyVarJx.e(i2);
    }

    public void l(wv wvVar) {
        if (wvVar == null) {
            return;
        }
        synchronized (this.f27991j) {
            try {
                if (this.f27991j.contains(wvVar)) {
                    this.f27991j.remove(wvVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int q(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return 0;
        }
        return zyVarJx.a(i2);
    }

    public long s(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return 0L;
        }
        return zyVarJx.w(i2);
    }

    public void u(int i2) {
        zy zyVarHp = com.byazt.au.jl.hp(false);
        if (zyVarHp != null) {
            zyVarHp.gu(i2);
        }
        zy zyVarHp2 = com.byazt.au.jl.hp(true);
        if (zyVarHp2 != null) {
            zyVarHp2.gu(i2);
        }
    }

    public boolean v(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return false;
        }
        return zyVarJx.jl(i2);
    }

    public IDownloadFileUriProvider vv(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return null;
        }
        return zyVarJx.ec(i2);
    }

    public boolean w(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return false;
        }
        return zyVarJx.l(i2);
    }

    public void xs(int i2) {
        if (i2 == 0) {
            return;
        }
        l(i2, true);
        zy zyVarHp = com.byazt.au.jl.hp(true);
        if (zyVarHp == null) {
            return;
        }
        zyVarHp.startService();
    }

    public nu zy(int i2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return null;
        }
        return zyVarJx.vv(i2);
    }

    public void jx(int i2, boolean z2) {
        if (!com.byazt.xq.a.hp()) {
            zy zyVarJx = jx(i2);
            if (zyVarJx != null) {
                zyVarJx.hp(i2, z2);
            }
            com.byazt.au.jl.hp(true).hp(2, i2);
            return;
        }
        if (com.byazt.xq.hp.hp(8388608)) {
            zy zyVarHp = com.byazt.au.jl.hp(true);
            if (zyVarHp != null) {
                zyVarHp.hp(i2, z2);
            }
            zy zyVarHp2 = com.byazt.au.jl.hp(false);
            if (zyVarHp2 != null) {
                zyVarHp2.hp(i2, z2);
                return;
            }
            return;
        }
        zy zyVarHp3 = com.byazt.au.jl.hp(false);
        if (zyVarHp3 != null) {
            zyVarHp3.hp(i2, z2);
        }
        zy zyVarHp4 = com.byazt.au.jl.hp(true);
        if (zyVarHp4 != null) {
            zyVarHp4.hp(i2, z2);
        }
    }

    public boolean a() {
        zy zyVarHp = com.byazt.au.jl.hp(false);
        if (zyVarHp != null) {
            return zyVarHp.w();
        }
        return false;
    }

    public void j(int i2, boolean z2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return;
        }
        zyVarJx.l(i2, z2);
    }

    public List<DownloadInfo> w(String str) {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        zy zyVarHp = com.byazt.au.jl.hp(false);
        List<DownloadInfo> listW = zyVarHp != null ? zyVarHp.w(str) : null;
        zy zyVarHp2 = com.byazt.au.jl.hp(true);
        return hp(listW, zyVarHp2 != null ? zyVarHp2.w(str) : null, sparseArray);
    }

    public boolean j() {
        return jx.m();
    }

    public void l() {
        synchronized (this.f27991j) {
            try {
                Iterator<wv> it = this.f27991j.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void hp(wv wvVar) {
        if (wvVar == null || com.byazt.xq.a.jx()) {
            return;
        }
        com.byazt.au.jl.hp(true);
        synchronized (this.f27991j) {
            try {
                if (!this.f27991j.contains(wvVar)) {
                    this.f27991j.add(wvVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public List<DownloadInfo> j(String str) {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        zy zyVarHp = com.byazt.au.jl.hp(false);
        List<DownloadInfo> listJ = zyVarHp != null ? zyVarHp.j(str) : null;
        zy zyVarHp2 = com.byazt.au.jl.hp(true);
        return hp(listJ, zyVarHp2 != null ? zyVarHp2.j(str) : null, sparseArray);
    }

    public List<DownloadInfo> w() {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        zy zyVarHp = com.byazt.au.jl.hp(false);
        List<DownloadInfo> listJ = zyVarHp != null ? zyVarHp.j() : null;
        zy zyVarHp2 = com.byazt.au.jl.hp(true);
        return hp(listJ, zyVarHp2 != null ? zyVarHp2.j() : null, sparseArray);
    }

    public synchronized void l(int i2, boolean z2) {
        try {
            this.f27992l.put(i2, z2 ? Boolean.TRUE : Boolean.FALSE);
        } catch (Throwable th) {
            throw th;
        }
    }

    public void hp(int i2, boolean z2) {
        l(i2, z2);
        if (jx.nd() && !com.byazt.xq.a.jx() && com.byazt.au.jl.hp(true).eb()) {
            com.byazt.au.jl.hp(true).jx(i2, z2);
        }
        if (jx.jx() || com.byazt.xq.a.jx() || com.byazt.xq.a.hp()) {
            return;
        }
        try {
            Intent intent = new Intent(jx.mp(), (Class<?>) DownloadHandleService.class);
            intent.setAction("com.ss.android.downloader.action.PROCESS_NOTIFY");
            intent.putExtra("extra_download_id", i2);
            jx.mp().startService(intent);
        } catch (Throwable unused) {
        }
    }

    public synchronized int l(int i2) {
        if (this.f27992l.get(i2) == null) {
            return -1;
        }
        return this.f27992l.get(i2).booleanValue() ? 1 : 0;
    }

    private zy l(DownloadTask downloadTask) {
        DownloadInfo downloadInfo;
        List<com.byazt.fu.l> listQ;
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return null;
        }
        boolean zIsNeedIndependentProcess = downloadInfo.isNeedIndependentProcess();
        if (com.byazt.xq.a.jx() || !com.byazt.xq.a.hp()) {
            zIsNeedIndependentProcess = true;
        }
        int iHp = hp(downloadInfo.getId());
        if (iHp >= 0 && iHp != zIsNeedIndependentProcess) {
            try {
                if (iHp == 1) {
                    if (com.byazt.xq.a.hp()) {
                        com.byazt.au.jl.hp(true).hp(downloadInfo.getId());
                        DownloadInfo downloadInfoS = com.byazt.au.jl.hp(true).s(downloadInfo.getId());
                        if (downloadInfoS != null) {
                            com.byazt.au.jl.hp(false).l(downloadInfoS);
                        }
                        if (downloadInfoS.getChunkCount() > 1 && (listQ = com.byazt.au.jl.hp(true).q(downloadInfo.getId())) != null) {
                            com.byazt.au.jl.hp(false).hp(downloadInfo.getId(), com.byazt.xq.a.hp(listQ));
                        }
                    }
                } else if (com.byazt.xq.a.hp()) {
                    com.byazt.au.jl.hp(false).hp(downloadInfo.getId());
                    List<com.byazt.fu.l> listQ2 = com.byazt.au.jl.hp(false).q(downloadInfo.getId());
                    if (listQ2 != null) {
                        com.byazt.au.jl.hp(true).hp(downloadInfo.getId(), com.byazt.xq.a.hp(listQ2));
                    }
                } else {
                    downloadTask.setNeedDelayForCacheSync(true);
                    com.byazt.au.jl.hp(true).hp(1, downloadInfo.getId());
                }
            } catch (Throwable unused) {
            }
        }
        hp(downloadInfo.getId(), zIsNeedIndependentProcess);
        return com.byazt.au.jl.hp(zIsNeedIndependentProcess);
    }

    public void jx() {
        zy zyVarHp = com.byazt.au.jl.hp(false);
        if (zyVarHp != null) {
            zyVarHp.hp();
        }
        zy zyVarHp2 = com.byazt.au.jl.hp(true);
        if (zyVarHp2 != null) {
            zyVarHp2.hp();
        }
    }

    public List<DownloadInfo> jx(String str) {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        zy zyVarHp = com.byazt.au.jl.hp(false);
        List<DownloadInfo> listJx = zyVarHp != null ? zyVarHp.jx(str) : null;
        zy zyVarHp2 = com.byazt.au.jl.hp(true);
        return hp(listJx, zyVarHp2 != null ? zyVarHp2.jx(str) : null, sparseArray);
    }

    public int hp(int i2) {
        if (!jx.nd()) {
            return -1;
        }
        if (!com.byazt.xq.a.jx() && com.byazt.au.jl.hp(true).eb()) {
            return com.byazt.au.jl.hp(true).zy(i2);
        }
        return l(i2);
    }

    public int hp(String str, String str2) {
        return jx.hp(str, str2);
    }

    public List<DownloadInfo> hp(String str) {
        List<DownloadInfo> listHp = com.byazt.au.jl.hp(false).hp(str);
        List<DownloadInfo> listHp2 = com.byazt.au.jl.hp(true).hp(str);
        if (listHp == null && listHp2 == null) {
            return null;
        }
        if (listHp == null || listHp2 == null) {
            return listHp != null ? listHp : listHp2;
        }
        ArrayList arrayList = new ArrayList(listHp);
        arrayList.addAll(listHp2);
        return arrayList;
    }

    public void hp(int i2, o oVar) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return;
        }
        zyVarJx.hp(i2, oVar);
    }

    private List<DownloadInfo> hp(List<DownloadInfo> list, List<DownloadInfo> list2, SparseArray<DownloadInfo> sparseArray) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (DownloadInfo downloadInfo : list) {
                if (downloadInfo != null && sparseArray.get(downloadInfo.getId()) == null) {
                    sparseArray.put(downloadInfo.getId(), downloadInfo);
                }
            }
        }
        if (list2 != null) {
            for (DownloadInfo downloadInfo2 : list2) {
                if (downloadInfo2 != null && sparseArray.get(downloadInfo2.getId()) == null) {
                    sparseArray.put(downloadInfo2.getId(), downloadInfo2);
                }
            }
        }
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            arrayList.add(sparseArray.get(sparseArray.keyAt(i2)));
        }
        return arrayList;
    }

    public DownloadInfo l(String str, String str2) {
        int iHp = hp(str, str2);
        zy zyVarJx = jx(iHp);
        if (zyVarJx == null) {
            return null;
        }
        return zyVarJx.s(iHp);
    }

    public List<DownloadInfo> l(String str) {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        zy zyVarHp = com.byazt.au.jl.hp(false);
        List<DownloadInfo> listL = zyVarHp != null ? zyVarHp.l(str) : null;
        zy zyVarHp2 = com.byazt.au.jl.hp(true);
        return hp(listL, zyVarHp2 != null ? zyVarHp2.l(str) : null, sparseArray);
    }

    public void hp(List<String> list) {
        zy zyVarHp = com.byazt.au.jl.hp(false);
        if (zyVarHp != null) {
            zyVarHp.hp(list);
        }
        zy zyVarHp2 = com.byazt.au.jl.hp(true);
        if (zyVarHp2 != null) {
            zyVarHp2.hp(list);
        }
    }

    public void l(List<String> list) {
        zy zyVarHp = com.byazt.au.jl.hp(false);
        if (zyVarHp != null) {
            zyVarHp.l(list);
        }
        zy zyVarHp2 = com.byazt.au.jl.hp(true);
        if (zyVarHp2 != null) {
            zyVarHp2.l(list);
        }
    }

    public void hp(int i2, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return;
        }
        zyVarJx.l(i2, iDownloadListener == null ? 0 : iDownloadListener.hashCode(), iDownloadListener, aVar, z2);
    }

    public void hp(int i2, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2, boolean z3) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return;
        }
        zyVarJx.hp(i2, iDownloadListener.hashCode(), iDownloadListener, aVar, z2, z3);
    }

    public void l(int i2, IDownloadListener iDownloadListener, com.byazt.oy.a aVar, boolean z2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return;
        }
        zyVarJx.hp(i2, iDownloadListener.hashCode(), iDownloadListener, aVar, z2);
    }

    public boolean hp(DownloadInfo downloadInfo) {
        zy zyVarJx;
        if (downloadInfo == null || (zyVarJx = jx(downloadInfo.getId())) == null) {
            return false;
        }
        return zyVarJx.hp(downloadInfo);
    }

    public void l(com.byazt.fn.gu guVar) {
        jx.l(guVar);
    }

    public void hp(final DownloadTask downloadTask) {
        final zy zyVarL = l(downloadTask);
        if (zyVarL == null) {
            if (downloadTask != null) {
                com.byazt.no.hp.hp(downloadTask.getMonitorDepend(), downloadTask.getDownloadInfo(), new BaseException(1003, "tryDownload but getDownloadHandler failed"), downloadTask.getDownloadInfo() != null ? downloadTask.getDownloadInfo().getStatus() : 0);
            }
        } else if (downloadTask.isNeedDelayForCacheSync()) {
            this.jx.postDelayed(new Runnable() { // from class: com.byazt.yk.j.1
                @Override // java.lang.Runnable
                public void run() {
                    zyVarL.hp(downloadTask);
                }
            }, 500L);
        } else {
            zyVarL.hp(downloadTask);
        }
    }

    public void hp(com.byazt.fn.gu guVar) {
        jx.hp(guVar);
    }

    public void hp(int i2, long j2) {
        zy zyVarJx = jx(i2);
        if (zyVarJx == null) {
            return;
        }
        zyVarJx.hp(i2, j2);
    }
}
