package com.byazt.l;

import android.content.SharedPreferences;
import android.util.SparseArray;
import com.byazt.fu.DownloadInfo;
import com.byazt.t.jl;
import com.byazt.y.zy;
import com.byazt.yk.Downloader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

@com.byazt.kj.hp(hp = {0, 1, 34, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {
    public ExecutorService hp;

    /* renamed from: j, reason: collision with root package name */
    public ExecutorService f22383j;
    public ScheduledExecutorService jx;

    /* renamed from: l, reason: collision with root package name */
    public ExecutorService f22384l;

    @com.byazt.kj.hp(hp = {0, 1, 34, 8})
    public static class hp {
        public static w hp = new w();
    }

    public static w hp() {
        return hp.hp;
    }

    public void a() {
        hp(new Runnable() { // from class: com.byazt.l.w.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.yk.e eVarDi;
                synchronized (w.class) {
                    try {
                        String[] strArr = {"sp_ad_download_event", "sp_download_finish_cache", "sp_delay_operation_info", "sp_ttdownloader_md5", "sp_name_installed_app", "misc_config", "sp_ad_install_back_dialog", "sp_ttdownloader_clean", "sp_order_download", "sp_a_b_c", "sp_ah_config", "sp_download_info", "sp_appdownloader"};
                        for (int i2 = 0; i2 < 13; i2++) {
                            SharedPreferences kVStore = com.byazt.ym.a.getKVStore(jl.getContext(), strArr[i2], 0);
                            if (kVStore != null) {
                                kVStore.edit().clear().apply();
                            }
                        }
                        eVarDi = com.byazt.yk.jx.di();
                    } catch (Throwable unused) {
                    }
                    if (eVarDi instanceof com.byazt.au.j) {
                        SparseArray<DownloadInfo> sparseArrayHp = ((com.byazt.au.j) eVarDi).hp().hp();
                        for (int size = sparseArrayHp.size() - 1; size >= 0; size--) {
                            DownloadInfo downloadInfo = sparseArrayHp.get(sparseArrayHp.keyAt(size));
                            if (downloadInfo != null) {
                                Downloader.getInstance(jl.getContext()).clearDownloadData(downloadInfo.getId());
                            }
                        }
                    }
                }
            }
        });
    }

    public ScheduledExecutorService j() {
        if (this.jx == null) {
            synchronized (w.class) {
                try {
                    if (this.jx == null) {
                        this.jx = new com.byazt.shx.w(0, new com.byazt.ez.hp(e.class.getName() + "-ScheduledThreadPool"));
                    }
                } finally {
                }
            }
        }
        return this.jx;
    }

    public void jx(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        w().execute(runnable);
    }

    public void l(Runnable runnable) {
        l(runnable, false);
    }

    public ExecutorService w() {
        if (this.f22383j == null) {
            synchronized (w.class) {
                try {
                    if (this.f22383j == null) {
                        this.f22383j = new com.byazt.shx.j(5, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new SynchronousQueue(), new com.byazt.ez.hp(e.class.getName() + "-InstallFinishCheckCPUThreadPool"));
                    }
                } finally {
                }
            }
        }
        return this.f22383j;
    }

    private w() {
    }

    public void hp(Runnable runnable) {
        hp(runnable, false);
    }

    public ExecutorService jx() {
        if (this.f22384l == null) {
            synchronized (w.class) {
                try {
                    if (this.f22384l == null) {
                        this.f22384l = new com.byazt.shx.j(0, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new SynchronousQueue(), new com.byazt.ez.hp(e.class.getName() + "-IOThreadPool"));
                    }
                } finally {
                }
            }
        }
        return this.f22384l;
    }

    public void l(Runnable runnable, boolean z2) {
        if (runnable == null) {
            return;
        }
        if (!z2 || zy.l()) {
            jx().execute(runnable);
        } else {
            runnable.run();
        }
    }

    public void hp(Runnable runnable, boolean z2) {
        if (runnable == null) {
            return;
        }
        if (z2 && !zy.l()) {
            runnable.run();
        } else {
            l().execute(runnable);
        }
    }

    public ExecutorService l() {
        if (this.hp == null) {
            synchronized (w.class) {
                try {
                    if (this.hp == null) {
                        this.hp = new com.byazt.shx.j(0, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new SynchronousQueue(), new com.byazt.ez.hp(e.class.getName() + "-CPUThreadPool"));
                    }
                } finally {
                }
            }
        }
        return this.hp;
    }

    public void hp(Runnable runnable, long j2) {
        try {
            j().schedule(runnable, j2, TimeUnit.MILLISECONDS);
        } catch (Throwable unused) {
        }
    }
}
