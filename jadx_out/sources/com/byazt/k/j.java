package com.byazt.k;

import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.byazt.fu.DownloadInfo;
import com.byazt.t.jl;
import com.byazt.yk.Downloader;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 42, 38})
/* loaded from: classes2.dex */
public class j {
    public static volatile j hp;

    /* renamed from: l, reason: collision with root package name */
    public long f22001l = 0;
    public ConcurrentHashMap<String, w> jx = new ConcurrentHashMap<>();

    /* renamed from: j, reason: collision with root package name */
    public HashMap<String, Integer> f22000j = new HashMap<>();

    /* renamed from: w, reason: collision with root package name */
    public List<String> f22002w = new CopyOnWriteArrayList();

    public static j hp() {
        if (hp == null) {
            synchronized (j.class) {
                try {
                    if (hp == null) {
                        hp = new j();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void jx() {
        this.f22001l = System.currentTimeMillis();
    }

    public long l() {
        return this.f22001l;
    }

    public int l(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (this.f22000j == null) {
            this.f22000j = new HashMap<>();
        }
        if (this.f22000j.containsKey(str)) {
            return this.f22000j.get(str).intValue();
        }
        return 0;
    }

    public void hp(String str, w wVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.jx.put(str, wVar);
    }

    public void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.jx.remove(str);
    }

    @WorkerThread
    public static void hp(com.byazt.zv.l lVar) {
        DownloadInfo downloadInfo;
        if (lVar == null || lVar.l() <= 0 || (downloadInfo = Downloader.getInstance(jl.getContext()).getDownloadInfo(lVar.ec())) == null) {
            return;
        }
        hp(downloadInfo);
    }

    @WorkerThread
    public static void hp(DownloadInfo downloadInfo) {
        if (downloadInfo == null || com.byazt.jb.hp.hp(downloadInfo.getId()).hp("delete_file_after_install", 0) == 0) {
            return;
        }
        try {
            String str = downloadInfo.getSavePath() + File.separator + downloadInfo.getName();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            File file = new File(str);
            if (file.isFile() && file.exists()) {
                file.delete();
            }
        } catch (Exception unused) {
        }
    }
}
