package com.byazt.ez;

import android.util.SparseArray;
import com.byazt.fu.DownloadTask;
import com.byazt.io.BaseException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 1109, 38})
/* loaded from: classes2.dex */
public class j {
    public static ExecutorService hp = new com.byazt.shx.j(2, 2, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new hp("Download_OP_Thread"));
    public int jx = 0;

    /* renamed from: l, reason: collision with root package name */
    public volatile SparseArray<jx> f19566l = new SparseArray<>();

    public static void hp(Runnable runnable) {
        hp.execute(runnable);
    }

    private void l() {
        try {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.f19566l.size(); i2++) {
                int iKeyAt = this.f19566l.keyAt(i2);
                if (!this.f19566l.get(iKeyAt).j()) {
                    arrayList.add(Integer.valueOf(iKeyAt));
                }
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                try {
                    Integer num = (Integer) arrayList.get(i3);
                    if (num != null) {
                        this.f19566l.remove(num.intValue());
                    }
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public void jx(int i2) {
        synchronized (j.class) {
            try {
                l();
                jx jxVar = this.f19566l.get(i2);
                if (jxVar != null) {
                    jxVar.hp();
                    jx(jxVar);
                    this.f19566l.remove(i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void hp(jx jxVar) {
        jxVar.a();
        synchronized (j.class) {
            try {
                int i2 = this.jx;
                if (i2 >= 500) {
                    l();
                    this.jx = 0;
                } else {
                    this.jx = i2 + 1;
                }
                this.f19566l.put(jxVar.w(), jxVar);
            } finally {
            }
        }
        DownloadTask downloadTaskJx = jxVar.jx();
        try {
            ExecutorService executorServiceU = com.byazt.yk.jx.u();
            if (downloadTaskJx != null && downloadTaskJx.getDownloadInfo() != null) {
                if ("mime_type_plg".equals(downloadTaskJx.getDownloadInfo().getMimeType()) && com.byazt.jb.hp.jx().hp("divide_plugin", 1) == 1) {
                    downloadTaskJx.getDownloadInfo().safePutToDBJsonData("executor_group", 3);
                }
                int executorGroup = downloadTaskJx.getDownloadInfo().getExecutorGroup();
                if (executorGroup == 3) {
                    executorServiceU = com.byazt.yk.jx.k();
                } else if (executorGroup == 4) {
                    executorServiceU = com.byazt.yk.jx.v();
                }
            }
            if (executorServiceU == null) {
                com.byazt.no.hp.hp(downloadTaskJx.getMonitorDepend(), downloadTaskJx.getDownloadInfo(), new BaseException(1003, "execute failed cpu thread executor service is null"), downloadTaskJx.getDownloadInfo() != null ? downloadTaskJx.getDownloadInfo().getStatus() : 0);
            } else if (com.byazt.jb.hp.hp(jxVar.w()).l("pause_with_interrupt", false)) {
                jxVar.hp(executorServiceU.submit(jxVar));
            } else {
                executorServiceU.execute(jxVar);
            }
        } catch (Exception e2) {
            if (downloadTaskJx != null) {
                com.byazt.no.hp.hp(downloadTaskJx.getMonitorDepend(), downloadTaskJx.getDownloadInfo(), new BaseException(1003, com.byazt.xq.a.l(e2, "DownloadThreadPoolExecute")), downloadTaskJx.getDownloadInfo() != null ? downloadTaskJx.getDownloadInfo().getStatus() : 0);
            }
        } catch (OutOfMemoryError unused) {
            if (downloadTaskJx != null) {
                com.byazt.no.hp.hp(downloadTaskJx.getMonitorDepend(), downloadTaskJx.getDownloadInfo(), new BaseException(1003, "execute OOM"), downloadTaskJx.getDownloadInfo() != null ? downloadTaskJx.getDownloadInfo().getStatus() : 0);
            }
        }
    }

    private void jx(jx jxVar) {
        Future futureEb;
        if (jxVar == null) {
            return;
        }
        try {
            ExecutorService executorServiceU = com.byazt.yk.jx.u();
            DownloadTask downloadTaskJx = jxVar.jx();
            if (downloadTaskJx != null && downloadTaskJx.getDownloadInfo() != null) {
                int executorGroup = downloadTaskJx.getDownloadInfo().getExecutorGroup();
                if (executorGroup == 3) {
                    executorServiceU = com.byazt.yk.jx.k();
                } else if (executorGroup == 4) {
                    executorServiceU = com.byazt.yk.jx.v();
                }
            }
            if (executorServiceU == null || !(executorServiceU instanceof ThreadPoolExecutor)) {
                return;
            }
            ((ThreadPoolExecutor) executorServiceU).remove(jxVar);
            if (!com.byazt.jb.hp.hp(jxVar.w()).l("pause_with_interrupt", false) || (futureEb = jxVar.eb()) == null) {
                return;
            }
            futureEb.cancel(true);
        } catch (Exception unused) {
        }
    }

    public void l(jx jxVar) {
        if (jxVar == null) {
            return;
        }
        synchronized (j.class) {
            try {
                if (com.byazt.xq.hp.hp(524288)) {
                    int iIndexOfValue = this.f19566l.indexOfValue(jxVar);
                    if (iIndexOfValue >= 0) {
                        this.f19566l.removeAt(iIndexOfValue);
                    }
                } else {
                    this.f19566l.remove(jxVar.w());
                }
            } catch (Throwable unused) {
            }
        }
    }

    public jx l(int i2) {
        synchronized (j.class) {
            try {
                l();
                jx jxVar = this.f19566l.get(i2);
                if (jxVar == null) {
                    return null;
                }
                jxVar.l();
                jx(jxVar);
                this.f19566l.remove(i2);
                return jxVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean hp(int i2) {
        synchronized (j.class) {
            try {
                boolean z2 = false;
                if (this.f19566l != null && this.f19566l.size() > 0) {
                    jx jxVar = this.f19566l.get(i2);
                    if (jxVar != null && jxVar.j()) {
                        z2 = true;
                    }
                    return z2;
                }
                return false;
            } finally {
            }
        }
    }

    public List<Integer> hp() {
        ArrayList arrayList;
        synchronized (j.class) {
            try {
                l();
                arrayList = new ArrayList();
                for (int i2 = 0; i2 < this.f19566l.size(); i2++) {
                    jx jxVar = this.f19566l.get(this.f19566l.keyAt(i2));
                    if (jxVar != null) {
                        arrayList.add(Integer.valueOf(jxVar.w()));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public void hp(int i2, long j2) {
        this.f19566l.get(i2);
    }
}
