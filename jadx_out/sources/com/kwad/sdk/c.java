package com.kwad.sdk;

import android.content.Context;
import androidx.annotation.NonNull;
import com.anythink.core.common.d.i;
import com.kwad.framework.filedownloader.f.c;
import com.kwad.framework.filedownloader.r;
import com.kwad.framework.filedownloader.services.c;
import com.kwad.sdk.DownloadTask;
import com.kwad.sdk.l;
import com.kwad.sdk.utils.an;
import com.kwad.sdk.utils.au;
import com.kwad.sdk.utils.bg;
import com.kwad.sdk.utils.y;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public final class c {
    private com.kwad.sdk.a aFF;
    private d aFH;
    private Context mContext;
    private final Map<Integer, DownloadTask> BB = new ConcurrentHashMap();
    private final Map<String, Integer> aFE = new ConcurrentHashMap();
    private boolean aFG = false;

    public static final class a {
        private static final c aFK = new c();
    }

    public static boolean EB() {
        try {
            Class.forName("com.kwad.sdk.api.proxy.app.BaseFragmentActivity.RequestInstallPermissionActivity");
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private void EC() {
        l.a aVar;
        try {
            aVar = new l.a(true);
        } catch (Throwable th) {
            th.printStackTrace();
            aVar = null;
        }
        if (aVar != null) {
            com.kwad.framework.filedownloader.download.b.Ca().b(new c.b().cZ(Integer.MAX_VALUE).a(aVar));
            this.aFG = true;
        }
    }

    private static void ED() {
        l.a aVar;
        try {
            aVar = new l.a(false);
        } catch (Throwable th) {
            th.printStackTrace();
            aVar = null;
        }
        if (aVar != null) {
            com.kwad.framework.filedownloader.download.b.Ca().b(new c.b().cZ(Integer.MAX_VALUE).a(aVar));
        }
    }

    public static c Ey() {
        return a.aFK;
    }

    public static void cL(String str) {
        if (str == null) {
            return;
        }
        y.delete(com.kwad.framework.filedownloader.f.f.cm(str));
        y.delete(str);
    }

    private void dl(int i2) {
        DownloadTask downloadTask = this.BB.get(Integer.valueOf(i2));
        if (downloadTask != null) {
            downloadTask.clearListener();
        }
    }

    private void h(@NonNull DownloadTask downloadTask) {
        this.BB.remove(Integer.valueOf(downloadTask.getId()));
        this.aFE.remove(downloadTask.getUrl());
    }

    public final d EA() {
        if (this.aFH == null) {
            this.aFH = new com.kwad.sdk.core.download.b.a();
        }
        return this.aFH;
    }

    public final boolean EE() {
        Iterator<Map.Entry<Integer, DownloadTask>> it = this.BB.entrySet().iterator();
        while (true) {
            boolean z2 = false;
            while (it.hasNext()) {
                DownloadTask value = it.next().getValue();
                if (value != null) {
                    int status = value.getStatus();
                    if (status == -2 || status == 1 || status == 2 || status == 3 || status == 5 || status == 6 || status == 10 || status == 11 || Math.abs(value.getStatusUpdateTime() - System.currentTimeMillis()) <= i.l.f2678c) {
                        break;
                    }
                    z2 = true;
                }
            }
            return z2;
        }
    }

    public final File Ez() {
        return bg.ef(this.mContext);
    }

    public final int a(@NonNull DownloadTask.DownloadRequest downloadRequest, com.kwad.sdk.a aVar) {
        DownloadTask downloadTask = new DownloadTask(downloadRequest);
        if (downloadRequest.getDownloadUrl().contains("downali.game.uc.cn")) {
            EC();
        } else if (this.aFG) {
            ED();
        }
        if (this.BB.get(Integer.valueOf(downloadTask.getId())) != null) {
            a(downloadTask.getId(), downloadRequest);
            dl(downloadTask.getId());
        } else {
            this.BB.put(Integer.valueOf(downloadTask.getId()), downloadTask);
            this.aFE.put(downloadTask.getUrl(), Integer.valueOf(downloadTask.getId()));
            downloadTask.submit();
        }
        a(downloadTask.getId(), null, this.aFF);
        return downloadTask.getId();
    }

    public final void cancel(int i2) {
        DownloadTask downloadTask = this.BB.get(Integer.valueOf(i2));
        if (downloadTask != null) {
            downloadTask.cancel();
            h(downloadTask);
        }
    }

    public final DownloadTask dk(int i2) {
        return this.BB.get(Integer.valueOf(i2));
    }

    public final void dm(int i2) {
        DownloadTask downloadTaskDk = dk(i2);
        if (downloadTaskDk == null) {
            return;
        }
        if (!downloadTaskDk.isUserPause()) {
            pause(i2);
        } else {
            downloadTaskDk.downloadType = 2;
            resume(i2);
        }
    }

    public final void g(DownloadTask downloadTask) {
        final String strMd5 = an.md5(downloadTask.getUrl());
        au.a(downloadTask.getTargetFilePath(), new au.a() { // from class: com.kwad.sdk.c.2
            @Override // com.kwad.sdk.utils.au.a
            public final void d(Throwable th) {
                com.kwad.sdk.core.download.b.Lz().g(strMd5, th);
            }

            @Override // com.kwad.sdk.utils.au.a
            public final void qD() {
                com.kwad.sdk.core.download.b.Lz().eD(strMd5);
            }
        });
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final void init(@NonNull Context context) {
        this.mContext = context;
        r.a(context, new c.b().cZ(Integer.MAX_VALUE).a(new c.a() { // from class: com.kwad.sdk.c.1
            @Override // com.kwad.framework.filedownloader.services.c.a
            public final c.b Cg() {
                try {
                    l.a aVar = new l.a(false);
                    aVar.bX("");
                    return aVar;
                } catch (Throwable unused) {
                    return null;
                }
            }
        }));
    }

    public final void pause(int i2) {
        DownloadTask downloadTask = this.BB.get(Integer.valueOf(i2));
        if (downloadTask != null) {
            downloadTask.userPause();
        }
    }

    public final void resume(int i2) {
        a(i2, (DownloadTask.DownloadRequest) null);
    }

    private void a(int i2, com.kwad.sdk.a... aVarArr) {
        DownloadTask downloadTask = this.BB.get(Integer.valueOf(i2));
        if (downloadTask != null) {
            for (int i3 = 0; i3 < 2; i3++) {
                com.kwad.sdk.a aVar = aVarArr[i3];
                if (aVar != null) {
                    aVar.setId(i2);
                    downloadTask.addListener(aVar);
                }
            }
        }
    }

    public final void a(com.kwad.sdk.a aVar) {
        this.aFF = aVar;
    }

    private void a(int i2, DownloadTask.DownloadRequest downloadRequest) {
        DownloadTask downloadTask = this.BB.get(Integer.valueOf(i2));
        if (downloadTask != null) {
            downloadTask.resume(downloadRequest);
        }
    }
}
