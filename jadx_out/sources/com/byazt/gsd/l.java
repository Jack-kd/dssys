package com.byazt.gsd;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.LruCache;
import com.byazt.jz.sz;
import com.byazt.uid.eb;
import com.byazt.uid.w;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME, 34})
/* loaded from: classes2.dex */
public class l {
    public static volatile l hp;

    /* renamed from: j, reason: collision with root package name */
    public int f20592j;
    public final long jx;

    /* renamed from: l, reason: collision with root package name */
    public LruCache<String, com.byazt.bt.hp> f20593l;

    /* renamed from: w, reason: collision with root package name */
    public CopyOnWriteArrayList<String> f20596w = new CopyOnWriteArrayList<>();

    /* renamed from: a, reason: collision with root package name */
    public CopyOnWriteArrayList<String> f20591a = new CopyOnWriteArrayList<>();
    public ConcurrentHashMap<String, WeakReference<com.byazt.cey.j>> eb = new ConcurrentHashMap<>();

    /* renamed from: s, reason: collision with root package name */
    public ConcurrentHashMap<String, Long> f20595s = new ConcurrentHashMap<>();

    /* renamed from: q, reason: collision with root package name */
    public final Object f20594q = new Object();

    private l() {
        int iHy = sz.l().hy();
        this.f20592j = iHy;
        if (iHy > 30) {
            this.f20592j = 30;
        } else if (iHy < 0) {
            this.f20592j = 5;
        }
        this.jx = sz.l().xe() * 1000;
        this.f20593l = new LruCache<String, com.byazt.bt.hp>(this.f20592j) { // from class: com.byazt.gsd.l.1
            @Override // android.util.LruCache
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int sizeOf(String str, com.byazt.bt.hp hpVar) {
                return 1;
            }
        };
    }

    public static /* synthetic */ void hp(l lVar, String str) {
    }

    private void j(final mp mpVar) {
        if (TextUtils.isEmpty(mpVar.jq())) {
            return;
        }
        final String strJq = mpVar.jq();
        if (this.f20596w.contains(strJq) || this.f20591a.contains(strJq) || this.f20593l.get(strJq) != null) {
            return;
        }
        this.f20596w.add(strJq);
        this.f20595s.put(strJq, Long.valueOf(System.currentTimeMillis()));
        w.l(new eb("playable_prefetch") { // from class: com.byazt.gsd.l.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    l.this.hp(mpVar, strJq);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public long jx(mp mpVar) {
        try {
            if (this.f20595s == null || mpVar == null || TextUtils.isEmpty(mpVar.jq())) {
                return 0L;
            }
            return this.f20595s.get(mpVar.jq()).longValue();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public void l(mp mpVar) {
        if (mpVar != null) {
            try {
                if (TextUtils.isEmpty(mpVar.jq())) {
                    return;
                }
                String strJq = mpVar.jq();
                this.f20591a.add(strJq);
                this.f20593l.remove(strJq);
                this.f20596w.remove(strJq);
                this.eb.remove(strJq);
                this.f20595s.remove(strJq);
                this.f20593l.size();
                this.f20596w.size();
                this.f20591a.size();
            } catch (Exception unused) {
            }
        }
    }

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

    public void hp(mp mpVar) {
        if (mpVar != null) {
            try {
                if (mpVar.wc() == 3) {
                    j(mpVar);
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(mp mpVar, final String str) throws JSONException {
        com.byazt.cm.l.hp(mpVar, mpVar == null ? null : mpVar.el(), new com.byazt.cey.j() { // from class: com.byazt.gsd.l.3
            @Override // com.byazt.cey.j
            public void hp(boolean z2, List<mp> list, boolean z3) {
                try {
                    if (l.this.f20591a != null && l.this.f20591a.contains(str)) {
                        l.hp(l.this, "prefetchCache-onAdLoaded.. discardTask. key: " + str);
                        return;
                    }
                    l.hp(l.this, "prefetchCache-onAdLoaded.. success: ".concat(String.valueOf(z2)));
                    synchronized (l.this.f20594q) {
                        if (z2 && list != null) {
                            try {
                                if (list.size() > 0) {
                                    com.byazt.bt.hp hpVar = new com.byazt.bt.hp();
                                    hpVar.hp = list;
                                    hpVar.f18666l = z2;
                                    hpVar.jx = SystemClock.elapsedRealtime();
                                    l.this.f20593l.put(str, hpVar);
                                    l.hp(l.this, "prefetchCache-onAdLoaded.. 缓存save  key: " + str);
                                }
                            } finally {
                            }
                        }
                        l.this.f20596w.remove(str);
                    }
                    WeakReference weakReference = (WeakReference) l.this.eb.get(str);
                    com.byazt.cey.j jVar = weakReference == null ? null : (com.byazt.cey.j) weakReference.get();
                    if (jVar != null) {
                        jVar.hp(z2, list, true);
                        l.this.eb.remove(str);
                        l.hp(l.this, "prefetchCache-onAdLoaded..callback invoke key: " + str);
                    }
                } catch (Exception unused) {
                }
            }
        }, (com.byazt.jt.l) null);
    }

    public boolean hp(mp mpVar, com.byazt.cey.j jVar) {
        if (mpVar != null && !TextUtils.isEmpty(mpVar.jq())) {
            String strJq = mpVar.jq();
            try {
                synchronized (this.f20594q) {
                    try {
                        if (this.f20596w.contains(strJq)) {
                            this.eb.put(strJq, new WeakReference<>(jVar));
                            return true;
                        }
                        com.byazt.bt.hp hpVar = this.f20593l.get(strJq);
                        if (hpVar == null) {
                            return false;
                        }
                        if (hp(hpVar)) {
                            l(mpVar);
                            return false;
                        }
                        if (jVar != null) {
                            jVar.hp(hpVar.f18666l, hpVar.hp, true);
                            return true;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private boolean hp(com.byazt.bt.hp hpVar) {
        return this.jx > 0 && hpVar != null && SystemClock.elapsedRealtime() - hpVar.jx > this.jx;
    }
}
