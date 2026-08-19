package com.byazt.t;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.byazt.fu.DownloadInfo;
import com.byazt.yk.Downloader;
import java.io.File;

@com.byazt.kj.hp(hp = {0, 1, 311, 34})
/* loaded from: classes3.dex */
public class l {
    public static volatile l hp;

    /* renamed from: l, reason: collision with root package name */
    public Handler f25655l = null;

    public static l hp() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new l();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public boolean l() {
        return jl.q().optInt("forbid_invalidte_download_file_install", 0) == 1;
    }

    public void hp(Context context, DownloadInfo downloadInfo) {
        if (l() && downloadInfo != null) {
            try {
                File file = new File(downloadInfo.getSavePath(), downloadInfo.getName());
                if (file.isFile() && file.exists()) {
                    file.delete();
                }
            } catch (Exception unused) {
            }
            if (this.f25655l == null) {
                this.f25655l = new Handler(Looper.getMainLooper());
            }
            final String url = downloadInfo.getUrl();
            Downloader.getInstance(context).clearDownloadData(downloadInfo.getId());
            this.f25655l.post(new Runnable() { // from class: com.byazt.t.l.1
                @Override // java.lang.Runnable
                public void run() {
                    jl.jx().hp(3, jl.getContext(), null, "下载失败，请重试！", null, 0);
                    w wVarHp = com.byazt.l.s.hp().hp(url);
                    if (wVarHp != null) {
                        wVarHp.eb();
                    }
                }
            });
        }
    }
}
