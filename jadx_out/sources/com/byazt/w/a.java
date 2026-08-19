package com.byazt.w;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.dg.AdDownloadModel;
import com.byazt.fu.DownloadInfo;
import com.byazt.y.zy;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, 54})
/* loaded from: classes3.dex */
public class a {
    public volatile boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public final ConcurrentHashMap<Long, DownloadController> f26844j;
    public final ConcurrentHashMap<Long, DownloadEventConfig> jx;

    /* renamed from: l, reason: collision with root package name */
    public final ConcurrentHashMap<Long, DownloadModel> f26845l;

    /* renamed from: w, reason: collision with root package name */
    public final ConcurrentHashMap<Long, com.byazt.zv.l> f26846w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp {
        public static a hp = new a();
    }

    public void a(long j2) {
        this.f26845l.remove(Long.valueOf(j2));
        this.jx.remove(Long.valueOf(j2));
        this.f26844j.remove(Long.valueOf(j2));
    }

    public com.byazt.zv.l j(long j2) {
        return this.f26846w.get(Long.valueOf(j2));
    }

    public DownloadController jx(long j2) {
        return this.f26844j.get(Long.valueOf(j2));
    }

    @NonNull
    public w w(long j2) {
        w wVar = new w();
        wVar.hp = j2;
        wVar.f26873l = hp(j2);
        DownloadEventConfig downloadEventConfigL = l(j2);
        wVar.jx = downloadEventConfigL;
        if (downloadEventConfigL == null) {
            wVar.jx = new com.byazt.yy.j();
        }
        DownloadController downloadControllerJx = jx(j2);
        wVar.f26872j = downloadControllerJx;
        if (downloadControllerJx == null) {
            wVar.f26872j = new com.byazt.yy.jx();
        }
        return wVar;
    }

    private a() {
        this.hp = false;
        this.f26845l = new ConcurrentHashMap<>();
        this.jx = new ConcurrentHashMap<>();
        this.f26844j = new ConcurrentHashMap<>();
        this.f26846w = new ConcurrentHashMap<>();
    }

    public ConcurrentHashMap<Long, com.byazt.zv.l> jx() {
        return this.f26846w;
    }

    public void l() {
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.w.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.hp) {
                    return;
                }
                synchronized (a.class) {
                    try {
                        if (!a.this.hp) {
                            a.this.f26846w.putAll(q.hp().l());
                            a.this.hp = true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }, true);
    }

    public static a hp() {
        return hp.hp;
    }

    public DownloadEventConfig l(long j2) {
        return this.jx.get(Long.valueOf(j2));
    }

    public void hp(DownloadModel downloadModel) {
        if (downloadModel != null) {
            this.f26845l.put(Long.valueOf(downloadModel.getId()), downloadModel);
            if (downloadModel.getDeepLink() != null) {
                downloadModel.getDeepLink().setId(downloadModel.getId());
                downloadModel.getDeepLink().setPackageName(downloadModel.getPackageName());
            }
        }
    }

    public com.byazt.zv.l l(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (com.byazt.zv.l lVar : this.f26846w.values()) {
            if (lVar != null && str.equals(lVar.hp())) {
                return lVar;
            }
        }
        return null;
    }

    public void l(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        for (DownloadModel downloadModel : this.f26845l.values()) {
            if ((downloadModel instanceof AdDownloadModel) && TextUtils.equals(downloadModel.getDownloadUrl(), str)) {
                ((AdDownloadModel) downloadModel).setPackageName(str2);
            }
        }
    }

    public void hp(long j2, DownloadEventConfig downloadEventConfig) {
        if (downloadEventConfig != null) {
            this.jx.put(Long.valueOf(j2), downloadEventConfig);
        }
    }

    public void hp(long j2, DownloadController downloadController) {
        if (downloadController != null) {
            this.f26844j.put(Long.valueOf(j2), downloadController);
        }
    }

    public synchronized void hp(com.byazt.zv.l lVar) {
        if (lVar == null) {
            return;
        }
        this.f26846w.put(Long.valueOf(lVar.l()), lVar);
        q.hp().hp(lVar);
    }

    public DownloadModel hp(long j2) {
        return this.f26845l.get(Long.valueOf(j2));
    }

    public com.byazt.zv.l hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (com.byazt.zv.l lVar : this.f26846w.values()) {
            if (lVar != null && str.equals(lVar.w())) {
                return lVar;
            }
        }
        return null;
    }

    public com.byazt.zv.l hp(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return null;
        }
        for (com.byazt.zv.l lVar : this.f26846w.values()) {
            if (lVar != null && lVar.ec() == downloadInfo.getId()) {
                return lVar;
            }
        }
        if (!TextUtils.isEmpty(downloadInfo.getExtra())) {
            try {
                long jHp = zy.hp(new JSONObject(downloadInfo.getExtra()), "extra");
                if (jHp != 0) {
                    for (com.byazt.zv.l lVar2 : this.f26846w.values()) {
                        if (lVar2 != null && lVar2.l() == jHp) {
                            return lVar2;
                        }
                    }
                    com.byazt.u.jx.hp().hp("getNativeModelByInfo");
                }
            } catch (Exception unused) {
            }
        }
        for (com.byazt.zv.l lVar3 : this.f26846w.values()) {
            if (lVar3 != null && TextUtils.equals(lVar3.hp(), downloadInfo.getUrl())) {
                return lVar3;
            }
        }
        return null;
    }

    public com.byazt.zv.l hp(int i2) {
        for (com.byazt.zv.l lVar : this.f26846w.values()) {
            if (lVar != null && lVar.ec() == i2) {
                return lVar;
            }
        }
        return null;
    }

    @NonNull
    public Map<Long, com.byazt.zv.l> hp(String str, String str2) {
        HashMap map = new HashMap();
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            for (com.byazt.zv.l lVar : this.f26846w.values()) {
                if (lVar != null && TextUtils.equals(lVar.hp(), str)) {
                    lVar.l(str2);
                    map.put(Long.valueOf(lVar.l()), lVar);
                }
            }
        }
        return map;
    }

    public synchronized void hp(List<Long> list) {
        try {
            ArrayList arrayList = new ArrayList();
            for (Long l2 : list) {
                arrayList.add(String.valueOf(l2.longValue()));
                this.f26846w.remove(l2);
            }
            q.hp().hp((List<String>) arrayList);
        } catch (Throwable th) {
            throw th;
        }
    }
}
