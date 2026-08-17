package com.byazt.au;

import com.byazt.fu.DownloadInfo;
import com.byazt.fu.DownloadTask;
import com.byazt.oy.DownloadStatus;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;

@com.byazt.kj.hp(hp = {0, 1, 273, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w extends hp {

    /* renamed from: l, reason: collision with root package name */
    public static com.byazt.ez.j f18315l;

    public w() {
        f18315l = new com.byazt.ez.j();
    }

    public static List<Future> j(List<Runnable> list) {
        ExecutorService executorServiceXs = com.byazt.yk.jx.xs();
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Runnable> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(executorServiceXs.submit(it.next()));
        }
        return arrayList;
    }

    public static void jx(List<Callable<Object>> list) throws InterruptedException {
        ExecutorService executorServiceXs = com.byazt.yk.jx.xs();
        if (executorServiceXs != null) {
            executorServiceXs.invokeAll(list);
        }
    }

    public static Runnable w(List<Future> list) {
        BlockingQueue<Runnable> queue;
        Runnable runnable;
        if (list != null && !list.isEmpty()) {
            try {
                ExecutorService executorServiceXs = com.byazt.yk.jx.xs();
                if ((executorServiceXs instanceof ThreadPoolExecutor) && (queue = ((ThreadPoolExecutor) executorServiceXs).getQueue()) != null && !queue.isEmpty()) {
                    Iterator<Future> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            runnable = null;
                            break;
                        }
                        Future next = it.next();
                        if ((next instanceof Runnable) && queue.remove(next)) {
                            runnable = (Runnable) next;
                            break;
                        }
                    }
                    if (runnable != null) {
                        list.remove(runnable);
                        return runnable;
                    }
                }
            } catch (Throwable th) {
                com.byazt.nu.hp.j("DefaultDownloadEngine", "getUnstartedTask() error: " + th.toString());
            }
        }
        return null;
    }

    @Override // com.byazt.au.hp
    public boolean hp(int i2) {
        DownloadInfo downloadInfoJ;
        com.byazt.ez.j jVar = f18315l;
        if (jVar == null || !jVar.hp(i2) || (downloadInfoJ = j(i2)) == null) {
            return false;
        }
        if (DownloadStatus.isDownloading(downloadInfoJ.getStatus())) {
            return true;
        }
        l(i2);
        return false;
    }

    @Override // com.byazt.au.hp
    public void l(int i2) {
        com.byazt.ez.j jVar = f18315l;
        if (jVar == null) {
            return;
        }
        jVar.jx(i2);
    }

    @Override // com.byazt.au.hp
    public com.byazt.ez.jx jx(int i2) {
        com.byazt.ez.j jVar = f18315l;
        if (jVar == null) {
            return null;
        }
        return jVar.l(i2);
    }

    @Override // com.byazt.au.hp
    public void hp(com.byazt.ez.jx jxVar) {
        com.byazt.ez.j jVar = f18315l;
        if (jVar == null) {
            return;
        }
        jVar.l(jxVar);
    }

    @Override // com.byazt.au.hp
    public void hp(int i2, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.byazt.nu.hp.l("DownloadTask", "start doDownload for task : ".concat(String.valueOf(i2)));
        f18315l.hp(new com.byazt.ez.jx(downloadTask, this.hp));
    }

    @Override // com.byazt.au.hp
    public List<Integer> hp() {
        return f18315l.hp();
    }

    @Override // com.byazt.au.hp
    public void hp(int i2, long j2) {
        com.byazt.ez.j jVar = f18315l;
        if (jVar == null) {
            return;
        }
        jVar.hp(i2, j2);
    }
}
