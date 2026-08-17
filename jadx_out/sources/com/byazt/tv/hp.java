package com.byazt.tv;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.byazt.na.LottieAnimationView;
import com.byazt.na.j;
import com.byazt.na.q;
import com.byazt.na.sz;
import com.byazt.tw.a;
import com.byazt.tw.jx;
import com.byazt.uah.l;
import com.byazt.um.eb;
import com.byazt.um.zy;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_IS_TOO_LARGE_AV_DIFF, 28})
/* loaded from: classes3.dex */
public class hp implements eb {

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.cw.l f26007a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f26008b;
    public boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public boolean f26009d;
    public boolean di;
    public boolean dy;

    /* renamed from: e, reason: collision with root package name */
    public LottieAnimationView f26010e;
    public final Context eb;
    public Bitmap gu;
    public int hq;

    /* renamed from: j, reason: collision with root package name */
    public final int f26011j;
    public final long jx;

    /* renamed from: k, reason: collision with root package name */
    public final String f26012k;
    public ViewTreeObserverOnGlobalLayoutListenerC0379hp ky;

    /* renamed from: l, reason: collision with root package name */
    public final String f26013l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f26015n;
    public boolean ns;

    /* renamed from: o, reason: collision with root package name */
    public boolean f26016o;

    /* renamed from: q, reason: collision with root package name */
    public String f26017q;

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.tw.l f26019s;
    public boolean sz;

    /* renamed from: u, reason: collision with root package name */
    public final eb f26020u;
    public long ud;

    /* renamed from: v, reason: collision with root package name */
    public final JSONObject f26021v;
    public eb.hp vv;

    /* renamed from: w, reason: collision with root package name */
    public final int f26022w;
    public boolean xs;
    public final String hp = "TTLottieFakeVideoPlayer";
    public final Map<String, Bitmap> jl = new HashMap();
    public final Map<String, Integer> zy = new HashMap();
    public final Set<eb.hp> ec = new HashSet();
    public volatile int wv = 200;
    public float nu = 1.0f;
    public int lv = 0;

    /* renamed from: r, reason: collision with root package name */
    public int f26018r = 0;
    public final Handler xh = new Handler(Looper.getMainLooper());

    /* renamed from: ms, reason: collision with root package name */
    public final Runnable f26014ms = new Runnable() { // from class: com.byazt.tv.hp.5
        @Override // java.lang.Runnable
        public void run() {
            Iterator it = hp.this.ec.iterator();
            while (it.hasNext()) {
                ((eb.hp) it.next()).onPlayPositionUpdate(hp.this, r3.hq, hp.this.getVideoDuration());
            }
            if (hp.this.hq < hp.this.getVideoDuration()) {
                hp.this.hq += hp.this.wv;
                hp.this.xh.postDelayed(hp.this.f26014ms, hp.this.wv);
                return;
            }
            if (hp.this.f26010e != null) {
                hp.this.f26010e.a();
            }
            if (hp.this.ns && !hp.this.f26008b && hp.this.f26020u != null && hp.this.f26020u.isPlaying()) {
                hp.this.f26020u.pause();
            }
            hp.this.f26015n = false;
            hp.this.cx = true;
            hp.this.a();
            Iterator it2 = hp.this.ec.iterator();
            while (it2.hasNext()) {
                ((eb.hp) it2.next()).onCompletion(hp.this);
            }
        }
    };
    public long pu = SystemClock.elapsedRealtime();

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_IS_TOO_LARGE_AV_DIFF, 170})
    /* renamed from: com.byazt.tv.hp$hp, reason: collision with other inner class name */
    public class ViewTreeObserverOnGlobalLayoutListenerC0379hp implements ViewTreeObserver.OnGlobalLayoutListener {
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public final ViewGroup f26031l;

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int width = this.f26031l.getWidth();
            int height = this.f26031l.getHeight();
            this.f26031l.removeAllViews();
            int i2 = this.jx;
            this.jx = i2 - 1;
            if (i2 < 0) {
                this.f26031l.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
            if (width <= 0 || height <= 0) {
                this.f26031l.addView(hp.this.f26010e);
            } else {
                this.f26031l.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                float f2 = width;
                float f3 = height;
                float f4 = f2 / f3;
                float f5 = hp.this.f26022w > 0 ? hp.this.f26011j / hp.this.f26022w : f4;
                if (f5 <= 0.0f || f5 < f4) {
                    width = (int) (f3 * f5);
                } else {
                    height = (int) (f2 / f5);
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(width, height);
                layoutParams.gravity = 17;
                this.f26031l.addView(hp.this.f26010e, layoutParams);
            }
            if (!hp.this.sz || hp.this.f26010e.w()) {
                return;
            }
            hp.this.f26010e.hp();
        }

        private ViewTreeObserverOnGlobalLayoutListenerC0379hp(ViewGroup viewGroup) {
            this.jx = 10;
            this.f26031l = viewGroup;
        }
    }

    public hp(com.byazt.cw.l lVar, com.byazt.uah.hp hpVar, eb ebVar, a aVar, com.byazt.tw.l lVar2) {
        this.eb = lVar.getView().getContext();
        this.f26007a = lVar;
        this.f26019s = lVar2;
        this.jx = hpVar.a();
        this.f26011j = hpVar.j();
        this.f26022w = hpVar.w();
        String strJx = hpVar.jx();
        this.f26012k = strJx;
        String strHp = hpVar.hp();
        this.f26013l = strHp;
        String strL = hpVar.l();
        this.f26021v = hpVar.eb();
        hp(strHp);
        l(strJx);
        this.f26020u = ebVar;
        hp(strL, aVar);
    }

    public static /* synthetic */ int cx(hp hpVar) {
        int i2 = hpVar.f26018r;
        hpVar.f26018r = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int di(hp hpVar) {
        int i2 = hpVar.lv;
        hpVar.lv = i2 + 1;
        return i2;
    }

    @Override // com.byazt.um.eb
    public void addIVideoPlayerCallback(eb.hp hpVar) {
        this.ec.add(hpVar);
    }

    @Override // com.byazt.um.eb
    public int getBufferCount() {
        return 1;
    }

    @Override // com.byazt.um.eb
    public String getCodec() {
        return "";
    }

    @Override // com.byazt.um.eb
    public long getCurrentPosition() {
        return this.hq;
    }

    @Override // com.byazt.um.eb
    public SurfaceHolder getSurfaceHolder() {
        return null;
    }

    @Override // com.byazt.um.eb
    public SurfaceTexture getSurfaceTexture() {
        return null;
    }

    @Override // com.byazt.um.eb
    public long getTotalBufferTime() {
        if (this.ns) {
            return this.pu;
        }
        return 0L;
    }

    @Override // com.byazt.um.eb
    public int getUpdateProgressInterval() {
        return this.wv;
    }

    @Override // com.byazt.um.eb
    public long getVideoDuration() {
        return this.jx;
    }

    @Override // com.byazt.um.eb
    public int getVideoHeight() {
        return this.f26022w;
    }

    @Override // com.byazt.um.eb
    public int getVideoWidth() {
        return this.f26011j;
    }

    @Override // com.byazt.um.eb
    public boolean isCompleted() {
        return this.cx;
    }

    @Override // com.byazt.um.eb
    public boolean isFirstFrameSuccess() {
        return this.ns;
    }

    @Override // com.byazt.um.eb
    public boolean isLooping() {
        return this.di;
    }

    @Override // com.byazt.um.eb
    public boolean isPaused() {
        return (this.f26015n || this.cx || this.f26008b || !this.ns) ? false : true;
    }

    @Override // com.byazt.um.eb
    public boolean isPlaying() {
        return this.f26015n;
    }

    @Override // com.byazt.um.eb
    public boolean isPrepared() {
        return this.ns;
    }

    @Override // com.byazt.um.eb
    public boolean isReleased() {
        return this.f26008b;
    }

    @Override // com.byazt.um.eb
    public boolean isStarted() {
        return this.sz;
    }

    @Override // com.byazt.um.eb
    public void pause() {
        s();
        com.byazt.wb.l.l(new Runnable() { // from class: com.byazt.tv.hp.7
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = hp.this.ec.iterator();
                while (it.hasNext()) {
                    ((eb.hp) it.next()).onPause(hp.this);
                }
            }
        });
    }

    @Override // com.byazt.um.eb
    public void play() {
        eb();
        if (this.hq > 0) {
            com.byazt.wb.l.l(new Runnable() { // from class: com.byazt.tv.hp.6
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = hp.this.ec.iterator();
                    while (it.hasNext()) {
                        ((eb.hp) it.next()).onResume(hp.this);
                    }
                }
            });
        }
    }

    @Override // com.byazt.um.eb
    public void release() {
        this.f26008b = true;
        a();
        this.jl.clear();
        this.gu = null;
        eb ebVar = this.f26020u;
        if (ebVar != null) {
            if (this.ns) {
                ebVar.stop();
            }
            this.f26020u.release();
        }
        com.byazt.wb.l.l(new Runnable() { // from class: com.byazt.tv.hp.8
            @Override // java.lang.Runnable
            public void run() {
                ViewGroup viewGroup = (ViewGroup) hp.this.f26007a.getView();
                if (viewGroup != null) {
                    viewGroup.getViewTreeObserver().removeOnGlobalLayoutListener(hp.this.ky);
                }
                Iterator it = hp.this.ec.iterator();
                while (it.hasNext()) {
                    ((eb.hp) it.next()).onRelease(hp.this);
                }
            }
        });
    }

    @Override // com.byazt.um.eb
    public void removeIVideoPlayerCallback(eb.hp hpVar) {
        this.ec.remove(hpVar);
    }

    @Override // com.byazt.um.eb
    public void reset() {
        eb ebVar;
        this.hq = 0;
        a();
        LottieAnimationView lottieAnimationView = this.f26010e;
        if (lottieAnimationView != null) {
            lottieAnimationView.a();
            this.f26010e.setProgress(0.0f);
        }
        if (!this.ns || this.f26008b || (ebVar = this.f26020u) == null) {
            return;
        }
        if (ebVar.isPlaying()) {
            this.f26020u.pause();
        }
        this.f26020u.seekTo(0L);
    }

    @Override // com.byazt.um.eb
    public void restart() {
        a();
        this.hq = 0;
        this.ns = true;
        this.cx = false;
        this.f26008b = false;
        LottieAnimationView lottieAnimationView = this.f26010e;
        if (lottieAnimationView != null) {
            lottieAnimationView.a();
            this.f26010e.setProgress(0.0f);
        }
        play();
    }

    @Override // com.byazt.um.eb
    public void seekTo(long j2) {
        this.hq = (int) j2;
        LottieAnimationView lottieAnimationView = this.f26010e;
        if (lottieAnimationView != null) {
            long duration = lottieAnimationView.getDuration();
            if (duration <= 0) {
                duration = getVideoDuration();
            }
            if (duration > 0) {
                this.f26010e.setProgress((j2 % duration) / duration);
            }
        }
        eb ebVar = this.f26020u;
        if (ebVar != null && ebVar.getVideoDuration() > 0) {
            this.f26020u.seekTo((int) (j2 % this.f26020u.getVideoDuration()));
        }
        hp(true);
    }

    @Override // com.byazt.um.eb
    public void setDataSource(zy zyVar) {
    }

    @Override // com.byazt.um.eb
    public void setDisplay(SurfaceHolder surfaceHolder) {
    }

    @Override // com.byazt.um.eb
    public void setLoop(boolean z2) {
        this.di = z2;
    }

    @Override // com.byazt.um.eb
    public void setPlaySpeedRatio(float f2) {
        this.nu = f2;
    }

    @Override // com.byazt.um.eb
    public void setQuietPlay(boolean z2) {
        this.dy = z2;
        eb ebVar = this.f26020u;
        if (ebVar != null) {
            ebVar.setQuietPlay(z2);
        }
    }

    @Override // com.byazt.um.eb
    public void setSeekMode(int i2) {
    }

    @Override // com.byazt.um.eb
    public void setSurface(SurfaceTexture surfaceTexture) {
    }

    @Override // com.byazt.um.eb
    public void setSurfaceValid(boolean z2) {
    }

    @Override // com.byazt.um.eb
    public void setUpdateProgressInterval(int i2) {
        this.wv = i2;
    }

    @Override // com.byazt.um.eb
    public void start(boolean z2, long j2, boolean z3) {
        this.dy = z3;
        this.sz = true;
        this.ud = j2;
        this.f26020u.start(z2, j2, z3);
        if (this.ns) {
            this.f26020u.setQuietPlay(z3);
            this.f26020u.setLoop(true);
            if (j2 > 0) {
                hp(j2);
            } else {
                play();
            }
        }
    }

    @Override // com.byazt.um.eb
    public void stop() {
        eb ebVar;
        LottieAnimationView lottieAnimationView = this.f26010e;
        if (lottieAnimationView != null) {
            lottieAnimationView.a();
            this.sz = false;
        }
        if (this.ns && !this.f26008b && (ebVar = this.f26020u) != null && ebVar.isPlaying()) {
            this.f26020u.pause();
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void eb() {
        eb ebVar;
        LottieAnimationView lottieAnimationView = this.f26010e;
        if (lottieAnimationView != null && this.ns && !lottieAnimationView.w()) {
            if (this.hq > 0) {
                this.f26010e.l();
            } else {
                this.f26010e.hp();
            }
        }
        if (this.ns && !this.f26008b && (ebVar = this.f26020u) != null && !ebVar.isPlaying()) {
            if (this.hq > 0) {
                this.f26020u.play();
            } else {
                this.f26020u.seekTo(0L);
                this.f26020u.play();
            }
        }
        this.f26015n = true;
        w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        eb ebVar;
        LottieAnimationView lottieAnimationView = this.f26010e;
        if (lottieAnimationView != null && this.ns && lottieAnimationView.w()) {
            this.f26010e.eb();
        }
        if (this.ns && !this.f26008b && (ebVar = this.f26020u) != null && ebVar.isPlaying()) {
            this.f26020u.pause();
        }
        this.f26015n = false;
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.xh.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        com.byazt.wb.l.l(new Runnable() { // from class: com.byazt.tv.hp.2
            @Override // java.lang.Runnable
            public void run() {
                hp.this.f26009d = false;
                if (hp.this.isPaused()) {
                    hp.this.eb();
                }
                Iterator it = hp.this.ec.iterator();
                while (it.hasNext()) {
                    ((eb.hp) it.next()).onBufferEnd(hp.this, -1);
                }
            }
        });
    }

    private void w() {
        this.xh.removeCallbacksAndMessages(null);
        this.xh.post(this.f26014ms);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        com.byazt.wb.l.l(new Runnable() { // from class: com.byazt.tv.hp.15
            @Override // java.lang.Runnable
            public void run() {
                if (!hp.this.f26009d) {
                    if (hp.this.isPlaying()) {
                        hp.this.s();
                    }
                    Iterator it = hp.this.ec.iterator();
                    while (it.hasNext()) {
                        ((eb.hp) it.next()).onBufferStart(hp.this, -1, -1, -1);
                    }
                }
                hp.this.f26009d = true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        com.byazt.wb.l.hp(new Runnable() { // from class: com.byazt.tv.hp.9
            @Override // java.lang.Runnable
            public void run() {
                if (hp.this.gu == null || hp.this.f26017q == null || !hp.this.xs || hp.this.f26010e != null) {
                    return;
                }
                hp.this.f26010e = new LottieAnimationView(hp.this.eb);
                hp.this.f26010e.setVideoStats(hp.this.f26019s);
                hp.this.f26010e.setRepeatCount(-1);
                hp.this.f26010e.setSpeed(hp.this.nu);
                hp.this.f26010e.setImageAssetDelegate(new j() { // from class: com.byazt.tv.hp.9.1
                    @Override // com.byazt.na.j
                    public Bitmap hp(q qVar) {
                        if (qVar != null) {
                            String strZy = qVar.zy();
                            if (!TextUtils.isEmpty(strZy)) {
                                if (strZy.startsWith("${") && strZy.endsWith("}")) {
                                    strZy = com.byazt.wb.hp.hp(strZy, hp.this.f26021v);
                                    if (TextUtils.isEmpty(strZy)) {
                                        return null;
                                    }
                                    if (!strZy.startsWith("http") || TextUtils.equals(strZy, hp.this.f26012k)) {
                                        Bitmap bitmap = hp.this.gu;
                                        if (bitmap != null && (bitmap.getWidth() != qVar.hp() || bitmap.getHeight() != qVar.l())) {
                                            hp.this.gu = Bitmap.createScaledBitmap(bitmap, qVar.hp(), qVar.l(), false);
                                        }
                                        return hp.this.gu;
                                    }
                                }
                                Bitmap bitmap2 = (Bitmap) hp.this.jl.get(strZy);
                                if (bitmap2 != null) {
                                    return bitmap2;
                                }
                                hp.this.hp(strZy, qVar.hp(), qVar.l());
                            }
                        }
                        return null;
                    }
                });
                hp.this.f26010e.setTextDelegate(new sz(hp.this.f26010e) { // from class: com.byazt.tv.hp.9.2
                    @Override // com.byazt.na.sz
                    public String hp(String str) {
                        return com.byazt.wb.hp.hp(str, hp.this.f26021v != null ? hp.this.f26021v : null);
                    }
                });
                hp.this.f26010e.hp(hp.this.f26017q, hp.this.f26013l);
                hp.this.hp();
                hp.this.ns = true;
                hp.this.pu = SystemClock.elapsedRealtime() - hp.this.pu;
                for (eb.hp hpVar : hp.this.ec) {
                    hpVar.onPrepared(hp.this);
                    hp hpVar2 = hp.this;
                    hpVar.onVideoSizeChanged(hpVar2, hpVar2.f26011j, hp.this.f26022w);
                }
                if (hp.this.sz) {
                    hp.this.f26020u.setQuietPlay(hp.this.dy);
                    hp.this.f26020u.setLoop(true);
                    if (hp.this.ud > 0) {
                        hp hpVar3 = hp.this;
                        hpVar3.hp(hpVar3.ud);
                    } else {
                        hp.this.play();
                    }
                }
                for (eb.hp hpVar4 : hp.this.ec) {
                    hp hpVar5 = hp.this;
                    hpVar4.onRenderStart(hpVar5, hpVar5.pu);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(final String str) {
        if (TextUtils.isEmpty(str)) {
            hp(new jx(60008, 10002, "广告主图url为空"));
        } else {
            com.byazt.uah.l.hp().l(str, new l.hp<Bitmap>() { // from class: com.byazt.tv.hp.11
                @Override // com.byazt.uah.l.hp
                public void hp(Bitmap bitmap) {
                    hp.this.gu = bitmap;
                    hp.this.l();
                }

                @Override // com.byazt.uah.l.hp
                public void hp(int i2, String str2) {
                    hp.di(hp.this);
                    if (hp.this.lv <= 3) {
                        hp.this.l(str);
                    } else {
                        hp.this.hp(new jx(60008, 10003, "广告主图url加载失败"));
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp() {
        final ViewGroup viewGroup = (ViewGroup) this.f26007a.getView();
        viewGroup.removeAllViews();
        viewGroup.addView(this.f26010e);
        this.ky = new ViewTreeObserverOnGlobalLayoutListenerC0379hp(viewGroup);
        viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(this.ky);
        viewGroup.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.tv.hp.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                ViewGroup viewGroup2 = viewGroup;
                if (viewGroup2 == view) {
                    viewGroup2.getViewTreeObserver().removeOnGlobalLayoutListener(hp.this.ky);
                    viewGroup.removeOnAttachStateChangeListener(this);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final String str) {
        if (TextUtils.isEmpty(str)) {
            hp(new jx(60008, 10000, "lottieJsonUrl为空"));
        } else {
            com.byazt.wb.l.jx(new Runnable() { // from class: com.byazt.tv.hp.10
                @Override // java.lang.Runnable
                public void run() {
                    String strHp = com.byazt.uah.l.hp().hp(str);
                    if (TextUtils.isEmpty(strHp)) {
                        com.byazt.uah.l.hp().hp(str, new l.hp<String>() { // from class: com.byazt.tv.hp.10.1
                            @Override // com.byazt.uah.l.hp
                            public void hp(String str2) {
                                hp.this.f26017q = str2;
                                hp.this.l();
                            }

                            @Override // com.byazt.uah.l.hp
                            public void hp(int i2, String str2) {
                                if (i2 == 10006) {
                                    hp.this.hp(new jx(60008, i2, str2));
                                    return;
                                }
                                hp.cx(hp.this);
                                if (hp.this.f26018r <= 3) {
                                    AnonymousClass10 anonymousClass10 = AnonymousClass10.this;
                                    hp.this.hp(str);
                                } else {
                                    hp.this.hp(new jx(60008, i2, str2));
                                }
                            }
                        });
                    } else {
                        hp.this.f26017q = strHp;
                        hp.this.l();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final String str, final int i2, final int i3) {
        Integer num = this.zy.get(str);
        if (num == null || num.intValue() != 1) {
            this.zy.put(str, 1);
            this.f26010e.hp(str, new com.byazt.wf.q() { // from class: com.byazt.tv.hp.12
                @Override // com.byazt.wf.q
                public void hp(Bitmap bitmap) {
                    hp.this.hp(bitmap, str, i2, i3);
                }

                @Override // com.byazt.wf.q
                public void hp() {
                    com.byazt.uah.l.hp().hp(hp.this.eb, str, new l.hp<Bitmap>() { // from class: com.byazt.tv.hp.12.1
                        @Override // com.byazt.uah.l.hp
                        public void hp(Bitmap bitmap) {
                            AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                            hp.this.hp(bitmap, str, i2, i3);
                        }

                        @Override // com.byazt.uah.l.hp
                        public void hp(int i4, String str2) {
                            hp.this.zy.put(str, 2);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Bitmap bitmap, String str, int i2, int i3) {
        if (bitmap != null) {
            if (bitmap.getWidth() != i2 || bitmap.getHeight() != i3) {
                bitmap = Bitmap.createScaledBitmap(bitmap, i2, i3, false);
            }
            this.jl.put(str, bitmap);
            com.byazt.wb.l.hp(new Runnable() { // from class: com.byazt.tv.hp.13
                @Override // java.lang.Runnable
                public void run() {
                    if (hp.this.f26010e != null) {
                        hp.this.f26010e.invalidate();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final jx jxVar) {
        com.byazt.wb.l.l(new Runnable() { // from class: com.byazt.tv.hp.14
            @Override // java.lang.Runnable
            public void run() {
                if (!hp.this.f26016o) {
                    jxVar.getCode();
                    jxVar.getExtraCode();
                    jxVar.getMsg();
                    Iterator it = hp.this.ec.iterator();
                    while (it.hasNext()) {
                        ((eb.hp) it.next()).onError(hp.this, jxVar);
                    }
                }
                hp.this.f26016o = true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final int i2) {
        com.byazt.wb.l.l(new Runnable() { // from class: com.byazt.tv.hp.16
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = hp.this.ec.iterator();
                while (it.hasNext()) {
                    ((eb.hp) it.next()).onBufferingUpdate(hp.this, i2);
                }
            }
        });
    }

    private void hp(final boolean z2) {
        com.byazt.wb.l.l(new Runnable() { // from class: com.byazt.tv.hp.3
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = hp.this.ec.iterator();
                while (it.hasNext()) {
                    ((eb.hp) it.next()).onSeekCompletion(hp.this, z2);
                }
            }
        });
    }

    private void hp(String str, a aVar) {
        if (TextUtils.isEmpty(str)) {
            hp(new jx(60008, AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1, "lottie音频url为空"));
            return;
        }
        eb.hp hpVar = new eb.hp() { // from class: com.byazt.tv.hp.4
            @Override // com.byazt.um.eb.hp
            public void onBufferEnd(eb ebVar, int i2) {
                hp.this.j();
            }

            @Override // com.byazt.um.eb.hp
            public void onBufferStart(eb ebVar, int i2, int i3, int i4) {
                hp.this.jx();
            }

            @Override // com.byazt.um.eb.hp
            public void onBufferingUpdate(eb ebVar, int i2) {
                hp.this.hp(i2);
            }

            @Override // com.byazt.um.eb.hp
            public void onCompletion(eb ebVar) {
            }

            @Override // com.byazt.um.eb.hp
            public void onError(eb ebVar, com.byazt.um.jx jxVar) {
                int code;
                String msg;
                int extraCode;
                if (jxVar != null) {
                    code = jxVar.getCode();
                    extraCode = jxVar.getExtraCode();
                    msg = jxVar.getMsg();
                } else {
                    code = -1;
                    msg = "";
                    extraCode = -1;
                }
                hp.this.hp(new jx(code, extraCode, "lottie音频播放失败:".concat(String.valueOf(msg))));
            }

            @Override // com.byazt.um.eb.hp
            public void onMonitorLog(eb ebVar, JSONObject jSONObject, String str2) {
            }

            @Override // com.byazt.um.eb.hp
            public void onPause(eb ebVar) {
            }

            @Override // com.byazt.um.eb.hp
            public void onPlayPositionUpdate(eb ebVar, long j2, long j3) {
            }

            @Override // com.byazt.um.eb.hp
            public void onPrepared(eb ebVar) {
                hp.this.xs = true;
                hp.this.l();
            }

            @Override // com.byazt.um.eb.hp
            public void onRelease(eb ebVar) {
            }

            @Override // com.byazt.um.eb.hp
            public void onRenderStart(eb ebVar, long j2) {
            }

            @Override // com.byazt.um.eb.hp
            public void onResume(eb ebVar) {
            }

            @Override // com.byazt.um.eb.hp
            public void onSeekCompletion(eb ebVar, boolean z2) {
            }

            @Override // com.byazt.um.eb.hp
            public void onStart(eb ebVar) {
                for (eb.hp hpVar2 : hp.this.ec) {
                    if (hpVar2 != null) {
                        hpVar2.onStart(hp.this);
                    }
                }
            }

            @Override // com.byazt.um.eb.hp
            public void onVideoSizeChanged(eb ebVar, int i2, int i3) {
            }
        };
        this.vv = hpVar;
        this.f26020u.addIVideoPlayerCallback(hpVar);
        this.f26020u.setDataSource(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2) {
        LottieAnimationView lottieAnimationView = this.f26010e;
        if (lottieAnimationView != null) {
            lottieAnimationView.hp();
        }
        seekTo(j2);
        eb ebVar = this.f26020u;
        if (ebVar != null) {
            ebVar.play();
        }
        this.f26015n = true;
        w();
    }
}
