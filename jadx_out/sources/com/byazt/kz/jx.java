package com.byazt.kz;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import com.byazt.fjh.q;
import com.byazt.nke.b;
import com.byazt.nke.e;
import com.byazt.nke.jl;
import com.byazt.nke.k;
import com.byazt.nke.lv;
import com.byazt.nke.sz;
import com.byazt.nke.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Queue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, 30})
/* loaded from: classes3.dex */
public final class jx implements jl {

    /* renamed from: a, reason: collision with root package name */
    public ImageView.ScaleType f22271a;

    /* renamed from: b, reason: collision with root package name */
    public com.byazt.kz.hp f22272b;
    public a cx;

    /* renamed from: d, reason: collision with root package name */
    public int f22273d;
    public com.byazt.nke.l di;
    public boolean dy;

    /* renamed from: e, reason: collision with root package name */
    public e f22274e;
    public Bitmap.Config eb;
    public final Handler ec;
    public int gu;
    public Future<?> hp;
    public ExecutorService hq;

    /* renamed from: j, reason: collision with root package name */
    public String f22275j;
    public WeakReference<ImageView> jl;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f22276k;

    /* renamed from: l, reason: collision with root package name */
    public String f22277l;

    /* renamed from: n, reason: collision with root package name */
    public com.byazt.nke.s f22278n;
    public int ns;
    public sz nu;

    /* renamed from: o, reason: collision with root package name */
    public int f22279o;

    /* renamed from: q, reason: collision with root package name */
    public int f22280q;

    /* renamed from: s, reason: collision with root package name */
    public int f22281s;
    public boolean sz;

    /* renamed from: u, reason: collision with root package name */
    public lv f22282u;
    public boolean ud;

    /* renamed from: v, reason: collision with root package name */
    public boolean f22283v;
    public Queue<q> vv;

    /* renamed from: w, reason: collision with root package name */
    public b f22284w;
    public boolean wv;
    public int xs;
    public volatile boolean zy;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, 219})
    public class hp implements b {

        /* renamed from: l, reason: collision with root package name */
        public b f22285l;

        public hp(b bVar) {
            this.f22285l = bVar;
        }

        @Override // com.byazt.nke.b
        public void onFailed(final int i2, final String str, final Throwable th) {
            if (jx.this.xs == 5) {
                jx.this.ec.post(new Runnable() { // from class: com.byazt.kz.jx.hp.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (hp.this.f22285l != null) {
                            hp.this.f22285l.onFailed(i2, str, th);
                        }
                    }
                });
                return;
            }
            b bVar = this.f22285l;
            if (bVar != null) {
                bVar.onFailed(i2, str, th);
            }
        }

        @Override // com.byazt.nke.b
        public void onSuccess(final u uVar) {
            Bitmap bitmapCoverterTo;
            final ImageView imageView = (ImageView) jx.this.jl.get();
            if (imageView != null && jx.this.gu != 3 && hp(imageView) && (uVar.getResult() instanceof Bitmap)) {
                final Bitmap bitmap = (Bitmap) uVar.getResult();
                jx.this.ec.post(new Runnable() { // from class: com.byazt.kz.jx.hp.1
                    @Override // java.lang.Runnable
                    public void run() {
                        imageView.setImageBitmap(bitmap);
                    }
                });
            }
            try {
                if (jx.this.f22274e != null && (uVar.getResult() instanceof Bitmap) && (bitmapCoverterTo = jx.this.f22274e.coverterTo((Bitmap) uVar.getResult())) != null) {
                    uVar.setResult(bitmapCoverterTo);
                }
            } catch (Throwable unused) {
            }
            if (jx.this.xs == 5) {
                jx.this.ec.postAtFrontOfQueue(new Runnable() { // from class: com.byazt.kz.jx.hp.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (hp.this.f22285l != null) {
                            hp.this.f22285l.onSuccess(uVar);
                        }
                    }
                });
                return;
            }
            b bVar = this.f22285l;
            if (bVar != null) {
                bVar.onSuccess(uVar);
            }
        }

        private boolean hp(ImageView imageView) {
            Object tag;
            return (imageView == null || (tag = imageView.getTag(1094453505)) == null || !tag.equals(jx.this.jx)) ? false : true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public jl vv() {
        try {
            a aVar = this.cx;
            if (aVar == null) {
                b bVar = this.f22284w;
                if (bVar != null) {
                    bVar.onFailed(1005, "not init !", null);
                    return this;
                }
            } else {
                ExecutorService executorServiceA = this.hq == null ? aVar.a() : null;
                Runnable runnable = new Runnable() { // from class: com.byazt.kz.jx.1
                    @Override // java.lang.Runnable
                    public void run() {
                        q qVar;
                        while (!jx.this.zy && (qVar = (q) jx.this.vv.poll()) != null) {
                            try {
                                if (jx.this.f22282u != null) {
                                    jx.this.f22282u.onStepStart(qVar.hp(), jx.this);
                                }
                                qVar.hp(jx.this);
                                if (jx.this.f22282u != null) {
                                    jx.this.f22282u.onStepEnd(qVar.hp(), jx.this);
                                }
                            } catch (Throwable th) {
                                jx.this.hp(2000, th.getMessage(), th);
                                if (jx.this.f22282u != null) {
                                    jx.this.f22282u.onStepEnd("exception", jx.this);
                                    return;
                                }
                                return;
                            }
                        }
                        if (jx.this.zy) {
                            jx.this.hp(1003, "canceled", null);
                        }
                    }
                };
                if (this.ud) {
                    runnable.run();
                    return this;
                }
                ExecutorService executorService = this.hq;
                if (executorService != null) {
                    this.hp = executorService.submit(runnable);
                    return this;
                }
                if (executorServiceA != null) {
                    this.hp = executorServiceA.submit(runnable);
                }
            }
            return this;
        } catch (Exception e2) {
            com.byazt.ymw.u.l("ImageRequest", e2.getMessage());
            return this;
        }
    }

    @Override // com.byazt.nke.jl
    public boolean cancelRequest() {
        this.zy = true;
        Future<?> future = this.hp;
        if (future != null) {
            return future.cancel(true);
        }
        return true;
    }

    @Override // com.byazt.nke.jl
    public Bitmap.Config getBitmapConfig() {
        return this.eb;
    }

    @Override // com.byazt.nke.jl
    public int getHeight() {
        return this.f22280q;
    }

    @Override // com.byazt.nke.jl
    public String getMemoryCacheKey() {
        return this.jx;
    }

    @Override // com.byazt.nke.jl
    public String getRawCacheKey() {
        return this.f22275j;
    }

    @Override // com.byazt.nke.jl
    public ImageView.ScaleType getScaleType() {
        return this.f22271a;
    }

    @Override // com.byazt.nke.jl
    public String getUrl() {
        return this.f22277l;
    }

    @Override // com.byazt.nke.jl
    public int getWidth() {
        return this.f22281s;
    }

    public int gu() {
        return this.ns;
    }

    public com.byazt.kz.hp jl() {
        return this.f22272b;
    }

    public com.byazt.nke.l k() {
        return this.di;
    }

    public sz u() {
        return this.nu;
    }

    public boolean v() {
        return this.wv;
    }

    public String xs() {
        return getRawCacheKey();
    }

    public a zy() {
        return this.cx;
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, 224})
    public static class l implements k {

        /* renamed from: a, reason: collision with root package name */
        public Bitmap.Config f22290a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f22291b;
        public sz cx;
        public int eb;
        public int ec;
        public lv gu;
        public b hp;

        /* renamed from: j, reason: collision with root package name */
        public String f22293j;
        public boolean jl;
        public String jx;

        /* renamed from: k, reason: collision with root package name */
        public String f22294k;

        /* renamed from: l, reason: collision with root package name */
        public ImageView f22295l;

        /* renamed from: n, reason: collision with root package name */
        public ExecutorService f22296n;
        public boolean ns;

        /* renamed from: s, reason: collision with root package name */
        public int f22298s;
        public boolean sz;

        /* renamed from: u, reason: collision with root package name */
        public a f22299u;

        /* renamed from: v, reason: collision with root package name */
        public com.byazt.nke.l f22300v;
        public int vv;

        /* renamed from: w, reason: collision with root package name */
        public ImageView.ScaleType f22301w;
        public e xs;
        public boolean zy;

        /* renamed from: q, reason: collision with root package name */
        public int f22297q = 1;

        /* renamed from: e, reason: collision with root package name */
        public int f22292e = 5;

        public l(a aVar) {
            this.f22299u = aVar;
        }

        @Override // com.byazt.nke.k
        public k cache(com.byazt.nke.l lVar) {
            this.f22300v = lVar;
            return this;
        }

        @Override // com.byazt.nke.k
        public k cacheDir(String str) {
            this.f22294k = str;
            return this;
        }

        @Override // com.byazt.nke.k
        public k config(Bitmap.Config config) {
            this.f22290a = config;
            return this;
        }

        @Override // com.byazt.nke.k
        public k converter(e eVar) {
            this.xs = eVar;
            return this;
        }

        @Override // com.byazt.nke.k
        public k from(String str) {
            this.f22293j = str;
            return this;
        }

        @Override // com.byazt.nke.k
        public k headers(boolean z2) {
            this.jl = z2;
            return this;
        }

        @Override // com.byazt.nke.k
        public k height(int i2) {
            this.f22298s = i2;
            return this;
        }

        @Override // com.byazt.nke.k
        public k isLocalRes(boolean z2) {
            this.f22291b = z2;
            return this;
        }

        @Override // com.byazt.nke.k
        public k key(String str) {
            this.jx = str;
            return this;
        }

        @Override // com.byazt.nke.k
        public k loadSetp(sz szVar) {
            this.cx = szVar;
            return this;
        }

        @Override // com.byazt.nke.k
        public k maxHeight(int i2) {
            this.ec = i2;
            return this;
        }

        @Override // com.byazt.nke.k
        public k maxWidth(int i2) {
            this.vv = i2;
            return this;
        }

        @Override // com.byazt.nke.k
        public k requestTime(boolean z2) {
            this.zy = z2;
            return this;
        }

        @Override // com.byazt.nke.k
        public k runIn(ExecutorService executorService) {
            this.f22296n = executorService;
            return this;
        }

        @Override // com.byazt.nke.k
        public k scaleType(ImageView.ScaleType scaleType) {
            this.f22301w = scaleType;
            return this;
        }

        @Override // com.byazt.nke.k
        public k sync(boolean z2) {
            this.ns = z2;
            return this;
        }

        @Override // com.byazt.nke.k
        public jl to(b bVar, int i2) {
            this.f22292e = i2;
            return to(bVar);
        }

        @Override // com.byazt.nke.k
        public k track(lv lvVar) {
            this.gu = lvVar;
            return this;
        }

        @Override // com.byazt.nke.k
        public k type(int i2) {
            this.f22297q = i2;
            return this;
        }

        @Override // com.byazt.nke.k
        public k width(int i2) {
            this.eb = i2;
            return this;
        }

        @Override // com.byazt.nke.k
        public jl to(b bVar) {
            this.hp = bVar;
            return new jx(this).vv();
        }

        @Override // com.byazt.nke.k
        public jl to(ImageView imageView) {
            this.f22295l = imageView;
            return new jx(this).vv();
        }
    }

    private jx(l lVar) {
        this.vv = new LinkedBlockingQueue();
        this.ec = new Handler(Looper.getMainLooper());
        this.sz = true;
        this.f22277l = lVar.f22293j;
        this.f22284w = new hp(lVar.hp);
        this.jl = new WeakReference<>(lVar.f22295l);
        this.f22271a = lVar.f22301w;
        this.eb = lVar.f22290a;
        this.f22281s = lVar.eb;
        this.f22280q = lVar.f22298s;
        this.gu = lVar.f22297q;
        this.xs = lVar.f22292e;
        this.f22282u = lVar.gu;
        this.di = hp(lVar);
        if (!TextUtils.isEmpty(lVar.jx)) {
            l(lVar.jx);
            hp(lVar.jx);
        }
        this.f22276k = lVar.jl;
        this.f22283v = lVar.zy;
        this.cx = lVar.f22299u;
        this.f22274e = lVar.xs;
        this.f22273d = lVar.ec;
        this.f22279o = lVar.vv;
        this.hq = lVar.f22296n;
        this.wv = lVar.sz;
        this.ud = lVar.ns;
        this.nu = lVar.cx;
        this.dy = lVar.f22291b;
        this.vv.add(new com.byazt.fjh.jx());
    }

    public boolean a() {
        return this.f22276k;
    }

    public com.byazt.nke.s e() {
        return this.f22278n;
    }

    public boolean eb() {
        return this.f22283v;
    }

    public Bitmap.Config j() {
        return this.eb;
    }

    public b jx() {
        return this.f22284w;
    }

    public int l() {
        return this.f22273d;
    }

    public boolean q() {
        return this.dy;
    }

    public boolean s() {
        return this.sz;
    }

    public int w() {
        return this.gu;
    }

    private com.byazt.nke.l hp(l lVar) {
        if (lVar.f22300v != null) {
            return lVar.f22300v;
        }
        if (!TextUtils.isEmpty(lVar.f22294k)) {
            return com.byazt.jn.hp.hp(new File(lVar.f22294k));
        }
        return com.byazt.jn.hp.hp();
    }

    public void l(String str) {
        WeakReference<ImageView> weakReference = this.jl;
        if (weakReference != null && weakReference.get() != null) {
            this.jl.get().setTag(1094453505, str);
        }
        this.jx = str;
    }

    public int hp() {
        return this.f22279o;
    }

    public void hp(String str) {
        this.f22275j = str;
    }

    public void hp(boolean z2) {
        this.sz = z2;
    }

    public void hp(com.byazt.nke.s sVar) {
        this.f22278n = sVar;
    }

    public void hp(int i2) {
        this.ns = i2;
    }

    public void hp(com.byazt.kz.hp hpVar) {
        this.f22272b = hpVar;
    }

    public boolean hp(q qVar) {
        if (this.zy) {
            return false;
        }
        return this.vv.add(qVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, String str, Throwable th) {
        new com.byazt.fjh.s(i2, str, th).hp(this);
        this.vv.clear();
    }
}
