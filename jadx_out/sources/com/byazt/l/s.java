package com.byazt.l;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.work.PeriodicWorkRequest;
import com.byazt.b.IDownloadButtonClickListener;
import com.byazt.b.OnItemClickListener;
import com.byazt.dg.AdDownloadModel;
import com.byazt.fu.DownloadInfo;
import com.byazt.io.BaseException;
import com.byazt.t.jl;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import com.byazt.yy.DownloadStatusChangeListener;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 34, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static volatile s hp;

    /* renamed from: a, reason: collision with root package name */
    public long f22372a;
    public final List<com.byazt.t.eb> jx = new CopyOnWriteArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, com.byazt.t.eb> f22373j = new ConcurrentHashMap();

    /* renamed from: w, reason: collision with root package name */
    public final CopyOnWriteArrayList<Object> f22375w = new CopyOnWriteArrayList<>();

    /* renamed from: l, reason: collision with root package name */
    public final Handler f22374l = new Handler(Looper.getMainLooper());

    private s() {
    }

    private void j() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        for (com.byazt.t.eb ebVar : this.jx) {
            if (!ebVar.l() && jCurrentTimeMillis - ebVar.j() > PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
                ebVar.s();
                arrayList.add(ebVar);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.jx.removeAll(arrayList);
    }

    private void jx(Context context, int i2, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel) {
        if (downloadModel == null) {
            return;
        }
        com.byazt.t.w wVar = new com.byazt.t.w();
        wVar.l(context).l(i2, downloadStatusChangeListener).l(downloadModel).hp();
        this.f22373j.put(downloadModel.getDownloadUrl(), wVar);
    }

    private synchronized void l(Context context, int i2, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel) {
        if (this.jx.size() <= 0) {
            jx(context, i2, downloadStatusChangeListener, downloadModel);
            return;
        }
        com.byazt.t.eb ebVarRemove = this.jx.remove(0);
        ebVarRemove.l(context).l(i2, downloadStatusChangeListener).l(downloadModel).hp();
        this.f22373j.put(downloadModel.getDownloadUrl(), ebVarRemove);
    }

    public static s hp() {
        if (hp == null) {
            synchronized (s.class) {
                try {
                    if (hp == null) {
                        hp = new s();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private void jx() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f22372a < PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
            return;
        }
        this.f22372a = jCurrentTimeMillis;
        if (this.jx.isEmpty()) {
            return;
        }
        j();
    }

    public void hp(Context context, int i2, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel) {
        com.byazt.t.eb ebVar;
        Context context2;
        DownloadStatusChangeListener downloadStatusChangeListener2;
        if (downloadModel == null || TextUtils.isEmpty(downloadModel.getDownloadUrl())) {
            return;
        }
        boolean z2 = jl.q().optInt("filter_download_url_key", 0) == 1;
        String strHp = com.byazt.t.a.hp().hp(downloadModel.getDownloadUrl());
        if (z2 && !TextUtils.isEmpty(strHp)) {
            ebVar = this.f22373j.get(strHp);
            if (downloadModel instanceof AdDownloadModel) {
                AdDownloadModel adDownloadModel = (AdDownloadModel) downloadModel;
                if (TextUtils.isEmpty(adDownloadModel.getTaskKey())) {
                    adDownloadModel.setTaskKey(strHp);
                }
            }
        } else {
            ebVar = this.f22373j.get(downloadModel.getDownloadUrl());
        }
        if (ebVar != null) {
            ebVar.l(context).l(i2, downloadStatusChangeListener).l(downloadModel).hp();
            return;
        }
        if (!this.jx.isEmpty()) {
            if (z2) {
                if (!TextUtils.isEmpty(strHp)) {
                    hp(context, i2, downloadStatusChangeListener, downloadModel, strHp);
                    return;
                }
                String strHp2 = com.byazt.t.a.hp().hp(downloadModel);
                if (TextUtils.isEmpty(strHp2)) {
                    l(context, i2, downloadStatusChangeListener, downloadModel);
                    return;
                }
                hp(context, i2, downloadStatusChangeListener, downloadModel, strHp2);
                if (downloadModel instanceof AdDownloadModel) {
                    AdDownloadModel adDownloadModel2 = (AdDownloadModel) downloadModel;
                    if (TextUtils.isEmpty(adDownloadModel2.getTaskKey())) {
                        adDownloadModel2.setTaskKey(strHp2);
                        return;
                    }
                    return;
                }
                return;
            }
            l(context, i2, downloadStatusChangeListener, downloadModel);
            return;
        }
        if (!z2) {
            context2 = context;
            downloadStatusChangeListener2 = downloadStatusChangeListener;
        } else {
            if (!TextUtils.isEmpty(strHp)) {
                l(context, i2, downloadStatusChangeListener, downloadModel, strHp);
                return;
            }
            context2 = context;
            downloadStatusChangeListener2 = downloadStatusChangeListener;
            String strHp3 = com.byazt.t.a.hp().hp(downloadModel);
            if (!TextUtils.isEmpty(strHp3)) {
                l(context2, i2, downloadStatusChangeListener2, downloadModel, strHp3);
                if (downloadModel instanceof AdDownloadModel) {
                    AdDownloadModel adDownloadModel3 = (AdDownloadModel) downloadModel;
                    if (TextUtils.isEmpty(adDownloadModel3.getTaskKey())) {
                        adDownloadModel3.setTaskKey(strHp3);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        jx(context2, i2, downloadStatusChangeListener2, downloadModel);
    }

    private void l(Context context, int i2, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel, String str) {
        if (downloadModel == null) {
            return;
        }
        com.byazt.t.w wVar = new com.byazt.t.w();
        wVar.l(context).l(i2, downloadStatusChangeListener).l(downloadModel).hp(str).hp();
        this.f22373j.put(str, wVar);
        com.byazt.t.a.hp().hp(str, downloadModel.getDownloadUrl());
    }

    public void l(final DownloadInfo downloadInfo, final String str) {
        this.f22374l.post(new Runnable() { // from class: com.byazt.l.s.4
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = s.this.f22375w.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next instanceof com.byazt.x.hp) {
                        ((com.byazt.x.hp) next).hp(downloadInfo, str);
                    } else if (next instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.byazt.x.hp) {
                            ((com.byazt.x.hp) softReference.get()).hp(downloadInfo, str);
                        }
                    }
                }
            }
        });
    }

    public Handler l() {
        return this.f22374l;
    }

    public com.byazt.t.w hp(String str) {
        com.byazt.t.eb ebVar;
        Map<String, com.byazt.t.eb> map = this.f22373j;
        if (map != null && map.size() != 0 && !TextUtils.isEmpty(str)) {
            if (jl.q().optInt("filter_download_url_key", 0) == 1) {
                ebVar = this.f22373j.get(com.byazt.t.a.hp().hp(str));
            } else {
                ebVar = this.f22373j.get(str);
            }
            if (ebVar instanceof com.byazt.t.w) {
                return (com.byazt.t.w) ebVar;
            }
        }
        return null;
    }

    private synchronized void hp(Context context, int i2, DownloadStatusChangeListener downloadStatusChangeListener, DownloadModel downloadModel, String str) throws Throwable {
        try {
            try {
                if (this.jx.size() <= 0) {
                    l(context, i2, downloadStatusChangeListener, downloadModel, str);
                    return;
                }
                com.byazt.t.eb ebVarRemove = this.jx.remove(0);
                ebVarRemove.l(context).l(i2, downloadStatusChangeListener).l(downloadModel).hp(str).hp();
                this.f22373j.put(str, ebVarRemove);
                com.byazt.t.a.hp().hp(str, downloadModel.getDownloadUrl());
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    public void hp(String str, int i2) {
        com.byazt.t.eb ebVar;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean z2 = jl.q().optInt("filter_download_url_key", 0) == 1;
        String strHp = com.byazt.t.a.hp().hp(str);
        if (z2 && !TextUtils.isEmpty(strHp)) {
            ebVar = this.f22373j.get(strHp);
        } else {
            ebVar = this.f22373j.get(str);
        }
        if (ebVar != null) {
            if (ebVar.hp(i2)) {
                this.jx.add(ebVar);
                if (z2 && !TextUtils.isEmpty(strHp)) {
                    this.f22373j.remove(strHp);
                    com.byazt.t.a.hp().l(strHp);
                } else {
                    this.f22373j.remove(str);
                }
            }
            jx();
        }
    }

    public void hp(String str, boolean z2) {
        com.byazt.t.eb ebVar;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean z3 = jl.q().optInt("filter_download_url_key", 0) == 1;
        String strHp = com.byazt.t.a.hp().hp(str);
        if (z3 && !TextUtils.isEmpty(strHp)) {
            ebVar = this.f22373j.get(strHp);
        } else {
            ebVar = this.f22373j.get(str);
        }
        if (ebVar != null) {
            ebVar.hp(z2);
        }
    }

    public void hp(String str, long j2, int i2, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        hp(str, j2, i2, downloadEventConfig, downloadController, null, null);
    }

    public void hp(String str, long j2, int i2, DownloadEventConfig downloadEventConfig, DownloadController downloadController, IDownloadButtonClickListener iDownloadButtonClickListener) {
        hp(str, j2, i2, downloadEventConfig, downloadController, null, iDownloadButtonClickListener);
    }

    public void hp(String str, long j2, int i2, DownloadEventConfig downloadEventConfig, DownloadController downloadController, OnItemClickListener onItemClickListener, IDownloadButtonClickListener iDownloadButtonClickListener) {
        com.byazt.t.eb ebVar;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean z2 = jl.q().optInt("filter_download_url_key", 0) == 1;
        String strHp = com.byazt.t.a.hp().hp(str);
        if (z2 && !TextUtils.isEmpty(strHp)) {
            ebVar = this.f22373j.get(strHp);
        } else {
            ebVar = this.f22373j.get(str);
        }
        if (ebVar != null) {
            ebVar.hp(j2).l(downloadEventConfig).l(downloadController).hp(onItemClickListener).hp(iDownloadButtonClickListener).l(i2);
        }
    }

    public void hp(com.byazt.x.hp hpVar) {
        if (hpVar != null) {
            if (com.byazt.jb.hp.jx().l("fix_listener_oom", false)) {
                this.f22375w.add(new SoftReference(hpVar));
            } else {
                this.f22375w.add(hpVar);
            }
        }
    }

    public void hp(final DownloadModel downloadModel, @Nullable final DownloadController downloadController, @Nullable final DownloadEventConfig downloadEventConfig) {
        this.f22374l.post(new Runnable() { // from class: com.byazt.l.s.1
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = s.this.f22375w.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!(next instanceof com.byazt.x.hp) && (next instanceof SoftReference)) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.byazt.x.hp) {
                            softReference.get();
                        }
                    }
                }
            }
        });
    }

    public void hp(final DownloadInfo downloadInfo, final BaseException baseException, final String str) {
        this.f22374l.post(new Runnable() { // from class: com.byazt.l.s.2
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = s.this.f22375w.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!(next instanceof com.byazt.x.hp) && (next instanceof SoftReference)) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.byazt.x.hp) {
                            softReference.get();
                        }
                    }
                }
            }
        });
    }

    public void hp(final DownloadInfo downloadInfo, final String str) {
        this.f22374l.post(new Runnable() { // from class: com.byazt.l.s.3
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = s.this.f22375w.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!(next instanceof com.byazt.x.hp) && (next instanceof SoftReference)) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.byazt.x.hp) {
                            softReference.get();
                        }
                    }
                }
            }
        });
    }

    public void hp(final DownloadInfo downloadInfo) {
        this.f22374l.post(new Runnable() { // from class: com.byazt.l.s.5
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = s.this.f22375w.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (!(next instanceof com.byazt.x.hp) && (next instanceof SoftReference)) {
                        SoftReference softReference = (SoftReference) next;
                        if (softReference.get() instanceof com.byazt.x.hp) {
                            softReference.get();
                        }
                    }
                }
            }
        });
    }
}
