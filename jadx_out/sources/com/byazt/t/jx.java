package com.byazt.t;

import com.byazt.dg.AdDownloadModel;
import com.byazt.fu.DownloadInfo;
import com.byazt.yy.DownloadModel;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 311, 30})
/* loaded from: classes3.dex */
public class jx {
    public static String hp = "jx";

    /* renamed from: l, reason: collision with root package name */
    public static volatile jx f25652l;
    public ConcurrentHashMap<Long, Runnable> jx;

    public jx() {
        this.jx = null;
        this.jx = new ConcurrentHashMap<>();
    }

    public static jx hp() {
        if (f25652l == null) {
            synchronized (jx.class) {
                try {
                    if (f25652l == null) {
                        f25652l = new jx();
                    }
                } finally {
                }
            }
        }
        return f25652l;
    }

    public long l() {
        return jl.q().optLong("quick_app_check_internal", 1200L);
    }

    public void hp(w wVar, boolean z2, int i2, DownloadModel downloadModel) {
        if (downloadModel instanceof AdDownloadModel) {
            ((AdDownloadModel) downloadModel).setFunnelType(3);
        }
        long id = downloadModel.getId();
        if (i2 == 4) {
            if (!z2) {
                hp(id, false, 2);
                wVar.l(false);
                return;
            } else {
                hp(id, true, 2);
                return;
            }
        }
        if (i2 == 5) {
            if (!z2) {
                hp(id, false, 1);
                wVar.jx(false);
                return;
            } else {
                hp(id, true, 1);
                return;
            }
        }
        if (i2 != 7) {
            return;
        }
        Runnable runnableRemove = this.jx.remove(Long.valueOf(id));
        if (z2) {
            com.byazt.r.hp.hp().hp(id, 1);
            hp(id, true, 1);
        } else {
            if (runnableRemove != null) {
                com.byazt.l.s.hp().l().post(runnableRemove);
            }
            hp(id, false, 1);
        }
    }

    private void hp(long j2, boolean z2, int i2) {
        com.byazt.r.hp.hp().hp(j2, z2, i2);
        if (z2) {
            jl.n().hp(null, null, null, null, null, 3);
        }
    }

    public void hp(final w wVar, final int i2, final DownloadModel downloadModel) {
        com.byazt.j.w.hp().hp(new com.byazt.j.j() { // from class: com.byazt.t.jx.1
            @Override // com.byazt.j.j
            public void hp(boolean z2) {
                jx.this.hp(wVar, z2, i2, downloadModel);
            }
        }, l());
    }

    public static boolean hp(DownloadInfo downloadInfo) {
        return downloadInfo == null || downloadInfo.getStatus() == 0 || downloadInfo.getStatus() == -4;
    }
}
