package com.byazt.jc;

import android.annotation.SuppressLint;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.byazt.jc.jx;
import com.byazt.pg.r;
import com.byazt.tw.a;
import com.byazt.um.eb;
import com.byazt.um.zy;
import com.byazt.ymw.ud;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 692, 38})
/* loaded from: classes.dex */
public class j implements jx.a, jx.eb, jx.hp, jx.j, jx.InterfaceC0280jx, jx.l, jx.w, eb, r.hp {
    public ArrayList<Runnable> cx;

    /* renamed from: e, reason: collision with root package name */
    public boolean f21285e;
    public boolean gu;
    public SurfaceHolder jx;

    /* renamed from: k, reason: collision with root package name */
    public volatile Handler f21287k;

    /* renamed from: l, reason: collision with root package name */
    public SurfaceTexture f21288l;

    /* renamed from: ms, reason: collision with root package name */
    public volatile boolean f21289ms;
    public boolean ns;

    /* renamed from: o, reason: collision with root package name */
    public boolean f21291o;
    public com.byazt.tw.l ud;

    /* renamed from: w, reason: collision with root package name */
    public int f21297w;
    public static final AtomicInteger hp = new AtomicInteger(0);
    public static final SparseIntArray di = new SparseIntArray();

    /* renamed from: j, reason: collision with root package name */
    public int f21286j = 0;

    /* renamed from: a, reason: collision with root package name */
    public boolean f21282a = false;
    public volatile jx eb = null;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f21294s = false;

    /* renamed from: q, reason: collision with root package name */
    public boolean f21292q = false;
    public volatile int jl = 201;
    public long zy = -1;

    /* renamed from: v, reason: collision with root package name */
    public volatile boolean f21296v = false;

    /* renamed from: u, reason: collision with root package name */
    public boolean f21295u = false;
    public long xs = 0;
    public long vv = Long.MIN_VALUE;
    public long ec = 0;
    public long sz = 0;

    /* renamed from: n, reason: collision with root package name */
    public long f21290n = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f21283b = 0;

    /* renamed from: d, reason: collision with root package name */
    public final List<WeakReference<eb.hp>> f21284d = new CopyOnWriteArrayList();
    public zy wv = null;
    public boolean hq = false;
    public volatile int nu = 200;
    public AtomicBoolean dy = new AtomicBoolean(false);
    public AtomicBoolean lv = new AtomicBoolean(false);

    /* renamed from: r, reason: collision with root package name */
    public AtomicBoolean f21293r = new AtomicBoolean(false);
    public Surface pu = null;
    public final Runnable ky = new Runnable() { // from class: com.byazt.jc.j.1
        @Override // java.lang.Runnable
        public void run() {
            if (j.this.eb == null) {
                return;
            }
            long currentPosition = j.this.getCurrentPosition();
            if (currentPosition > 0 && j.this.isPlaying() && j.this.vv != Long.MIN_VALUE) {
                try {
                    if (j.this.vv == currentPosition) {
                        if (!j.this.f21295u && j.this.ec >= 400) {
                            j.this.l(701, 800);
                            j.this.f21295u = true;
                        }
                        j.this.ec += j.this.nu;
                    } else {
                        if (j.this.f21295u) {
                            j.this.xs += j.this.ec;
                            j.this.l(702, 800);
                            long unused = j.this.xs;
                            int unused2 = j.this.f21286j;
                        }
                        j.this.ec = 0L;
                        j.this.f21295u = false;
                    }
                } catch (Throwable th) {
                    th.getMessage();
                }
            }
            if (j.this.getVideoDuration() > 0) {
                if (j.this.vv != currentPosition) {
                    if (com.byazt.fw.l.j()) {
                        long unused3 = j.this.vv;
                    }
                    j jVar = j.this;
                    jVar.hp(currentPosition, jVar.getVideoDuration());
                }
                j.this.vv = currentPosition;
            }
            if (j.this.isCompleted()) {
                j jVar2 = j.this;
                jVar2.hp(jVar2.getVideoDuration(), j.this.getVideoDuration());
            } else if (j.this.f21287k != null) {
                j.this.f21287k.postDelayed(this, j.this.nu);
            }
        }
    };
    public final hp xh = new hp();
    public long as = 0;
    public long kg = 0;
    public boolean mp = true;

    @com.byazt.kj.hp(hp = {0, 1, 692, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public class hp implements Runnable {
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public long f21304l;

        public hp() {
        }

        public void hp(boolean z2) {
            this.jx = z2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (j.this.eb != null) {
                try {
                    if (!this.jx) {
                        long jQ = j.this.eb.q();
                        j.this.zy = Math.max(this.f21304l, jQ);
                    }
                    long unused = j.this.zy;
                } catch (Throwable unused2) {
                }
            }
            if (j.this.f21287k != null) {
                j.this.f21287k.sendEmptyMessageDelayed(100, 0L);
            }
        }

        public void hp(long j2) {
            this.f21304l = j2;
        }
    }

    public j(String str, com.byazt.tw.l lVar) {
        this.ud = lVar;
        hp("mda_" + str + "_" + hp.addAndGet(1), (Looper) null);
        hp("0501");
    }

    private boolean hp(int i2, int i3) {
        boolean z2 = i2 == -1010 || i2 == -1007 || i2 == -1004 || i2 == -110 || i2 == 100 || i2 == 200;
        if (i3 == 1 || i3 == 700 || i3 == 800) {
            return true;
        }
        return z2;
    }

    @Override // com.byazt.um.eb
    public void addIVideoPlayerCallback(eb.hp hpVar) {
        if (hpVar == null) {
            return;
        }
        for (WeakReference<eb.hp> weakReference : this.f21284d) {
            if (weakReference != null && weakReference.get() == hpVar) {
                return;
            }
        }
        this.f21284d.add(new WeakReference<>(hpVar));
    }

    @Override // com.byazt.um.eb
    public int getBufferCount() {
        return this.f21286j;
    }

    @Override // com.byazt.um.eb
    public String getCodec() {
        return "";
    }

    @Override // com.byazt.um.eb
    public long getCurrentPosition() {
        if (isReleased()) {
            return 0L;
        }
        if (this.jl == 206 || this.jl == 207) {
            try {
                return this.eb.q();
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    @Override // com.byazt.um.eb
    public SurfaceHolder getSurfaceHolder() {
        return this.jx;
    }

    @Override // com.byazt.um.eb
    public SurfaceTexture getSurfaceTexture() {
        return this.f21288l;
    }

    @Override // com.byazt.um.eb
    public long getTotalBufferTime() {
        if (this.f21295u) {
            long j2 = this.ec;
            if (j2 > 0) {
                return this.xs + j2;
            }
        }
        return this.xs;
    }

    @Override // com.byazt.um.eb
    public int getUpdateProgressInterval() {
        return this.nu;
    }

    @Override // com.byazt.um.eb
    public long getVideoDuration() {
        long j2 = this.sz;
        if (j2 != 0) {
            return j2;
        }
        if (this.jl == 206 || this.jl == 207) {
            try {
                this.sz = this.eb.e();
            } catch (Throwable unused) {
            }
        }
        return this.sz;
    }

    @Override // com.byazt.um.eb
    public int getVideoHeight() {
        if (this.eb == null || isReleased()) {
            return 0;
        }
        return this.eb.k();
    }

    @Override // com.byazt.um.eb
    public int getVideoWidth() {
        if (this.eb == null || isReleased()) {
            return 0;
        }
        return this.eb.zy();
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        eb.hp hpVar;
        eb.hp hpVar2;
        eb.hp hpVar3;
        eb.hp hpVar4;
        int i2 = this.jl;
        int i3 = message.what;
        if (this.eb != null) {
            try {
                switch (message.what) {
                    case 100:
                        if (this.jl == 205 || this.jl == 207 || this.jl == 209) {
                            hp("0505");
                            this.eb.w();
                            this.f21290n = SystemClock.elapsedRealtime();
                            this.jl = 206;
                            if (this.zy > 0) {
                                this.eb.hp(this.zy, this.f21297w);
                                this.zy = -1L;
                            }
                            if (this.wv != null) {
                                setQuietPlay(this.hq);
                            }
                            for (WeakReference<eb.hp> weakReference : this.f21284d) {
                                if (weakReference != null && (hpVar2 = weakReference.get()) != null) {
                                    hpVar2.onStart(this);
                                }
                            }
                            return;
                        }
                        break;
                    case 101:
                        if (this.f21295u) {
                            this.xs += this.ec;
                        }
                        this.f21295u = false;
                        this.ec = 0L;
                        this.vv = Long.MIN_VALUE;
                        if (this.jl == 206 || this.jl == 207 || this.jl == 209) {
                            this.eb.eb();
                            hp("0507");
                            this.jl = 207;
                            this.f21289ms = false;
                            for (WeakReference<eb.hp> weakReference2 : this.f21284d) {
                                if (weakReference2 != null && (hpVar3 = weakReference2.get()) != null) {
                                    hpVar3.onPause(this);
                                }
                            }
                            return;
                        }
                        break;
                    case 102:
                        this.eb.jl();
                        this.jl = 201;
                        return;
                    case 103:
                        try {
                            w();
                        } catch (Throwable th) {
                            com.byazt.qm.l.hp("CSJ_VIDEO_MEDIA", "OP_RELEASE error: ", th);
                        }
                        for (WeakReference<eb.hp> weakReference3 : this.f21284d) {
                            if (weakReference3 != null && (hpVar = weakReference3.get()) != null) {
                                hpVar.onRelease(this);
                            }
                        }
                        this.jl = 203;
                        return;
                    case 104:
                        if (this.jl == 202 || this.jl == 208) {
                            try {
                                this.eb.s();
                                return;
                            } catch (Throwable th2) {
                                com.byazt.qm.l.hp("CSJ_VIDEO_MEDIA", "OP_PREPARE_ASYNC error: ", th2);
                                return;
                            }
                        }
                        break;
                    case 105:
                        if (this.jl == 205 || this.jl == 206 || this.jl == 208 || this.jl == 207 || this.jl == 209) {
                            this.eb.a();
                            hp("0508");
                            this.jl = 208;
                            return;
                        }
                        break;
                    case 106:
                        if (this.jl == 206 || this.jl == 207 || this.jl == 209) {
                            this.eb.hp(((Long) message.obj).longValue(), this.f21297w);
                            return;
                        }
                        break;
                    case 107:
                        l();
                        if (this.jl == 201 || this.jl == 203) {
                            a aVar = (a) message.obj;
                            if (TextUtils.isEmpty(aVar.getCacheParentDir())) {
                                aVar.setCacheParentDir(com.byazt.fw.l.hp());
                            }
                            File file = new File(aVar.getCacheParentDir(), aVar.getFileNameKey());
                            if (file.exists()) {
                                file.getAbsolutePath();
                                if (com.byazt.fw.l.l()) {
                                    l(file.getAbsolutePath());
                                } else {
                                    this.eb.hp(file.getAbsolutePath());
                                }
                            } else {
                                aVar.getUrl();
                                this.eb.hp(aVar, this.ud);
                            }
                            hp("0503");
                            this.jl = 202;
                            return;
                        }
                        break;
                    case 108:
                    case 109:
                    default:
                        return;
                    case 110:
                        this.eb.hp((SurfaceHolder) message.obj);
                        hp("0502");
                        this.eb.l(true);
                        this.lv.set(true);
                        if (this.dy.get()) {
                            gu();
                            return;
                        }
                        return;
                    case 111:
                        this.pu = new Surface((SurfaceTexture) message.obj);
                        this.eb.hp(this.pu);
                        hp("0502");
                        this.eb.l(true);
                        this.f21293r.set(true);
                        if (this.dy.get()) {
                            gu();
                            return;
                        }
                        return;
                }
                this.jl = 200;
                if (this.f21292q) {
                    return;
                }
                com.byazt.tw.jx jxVar = new com.byazt.tw.jx(308, i3);
                jxVar.setMsg(i2 + "," + i3);
                hp("0510");
                com.byazt.tw.l lVar = this.ud;
                if (lVar != null) {
                    lVar.hp(308, i3, "state error");
                }
                for (WeakReference<eb.hp> weakReference4 : this.f21284d) {
                    if (weakReference4 != null && (hpVar4 = weakReference4.get()) != null) {
                        hpVar4.onError(this, jxVar);
                    }
                }
                this.f21292q = true;
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.um.eb
    public boolean isCompleted() {
        return this.jl == 209;
    }

    @Override // com.byazt.um.eb
    public boolean isFirstFrameSuccess() {
        return this.f21282a;
    }

    @Override // com.byazt.um.eb
    public boolean isLooping() {
        return (isReleased() || this.eb == null || !this.eb.v()) ? false : true;
    }

    @Override // com.byazt.um.eb
    public boolean isPaused() {
        return ((this.jl != 207 && !this.f21289ms) || this.f21287k == null || this.f21287k.hasMessages(100)) ? false : true;
    }

    @Override // com.byazt.um.eb
    public boolean isPlaying() {
        return (this.jl == 206 || (this.f21287k != null && this.f21287k.hasMessages(100))) && !this.f21289ms;
    }

    @Override // com.byazt.um.eb
    public boolean isPrepared() {
        return this.jl == 205;
    }

    @Override // com.byazt.um.eb
    public boolean isReleased() {
        return this.gu;
    }

    @Override // com.byazt.um.eb
    public boolean isStarted() {
        return isPrepared() || isPlaying() || isPaused();
    }

    @Override // com.byazt.um.eb
    public void pause() {
        if (isReleased() || this.f21287k == null) {
            return;
        }
        this.f21287k.removeMessages(100);
        this.f21289ms = true;
        if (this.mp) {
            if (!this.f21282a && !hp(this.wv)) {
                hp(new Runnable() { // from class: com.byazt.jc.j.17
                    @Override // java.lang.Runnable
                    public void run() {
                        if (j.this.f21287k != null) {
                            j.this.f21287k.sendEmptyMessage(101);
                        }
                    }
                });
                return;
            } else {
                if (this.f21287k != null) {
                    this.f21287k.sendEmptyMessage(101);
                    return;
                }
                return;
            }
        }
        if (!this.ns && !hp(this.wv)) {
            hp(new Runnable() { // from class: com.byazt.jc.j.16
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.f21287k != null) {
                        j.this.f21287k.sendEmptyMessage(101);
                    }
                }
            });
        } else if (this.f21287k != null) {
            this.f21287k.sendEmptyMessage(101);
        }
    }

    @Override // com.byazt.um.eb
    public void play() {
        if (isReleased() || this.f21287k == null) {
            return;
        }
        this.dy.set(true);
        this.f21287k.post(new Runnable() { // from class: com.byazt.jc.j.15
            @Override // java.lang.Runnable
            public void run() {
                eb.hp hpVar;
                if (!j.this.isPaused() || j.this.eb == null) {
                    return;
                }
                try {
                    j.this.eb.w();
                    for (WeakReference weakReference : j.this.f21284d) {
                        if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                            hpVar.onResume(j.this);
                        }
                    }
                    j.this.jl = 206;
                } catch (Throwable th) {
                    th.getMessage();
                }
            }
        });
    }

    @Override // com.byazt.um.eb
    public void release() {
        if (isReleased()) {
            return;
        }
        this.gu = true;
        jl();
        if (this.f21287k != null) {
            try {
                this.f21287k.removeCallbacksAndMessages(null);
                if (this.eb != null) {
                    this.f21287k.sendEmptyMessage(103);
                }
                a();
            } catch (Throwable unused) {
                a();
            }
        }
    }

    @Override // com.byazt.um.eb
    public void removeIVideoPlayerCallback(eb.hp hpVar) {
        if (hpVar == null) {
            return;
        }
        Iterator<WeakReference<eb.hp>> it = this.f21284d.iterator();
        while (it.hasNext()) {
            WeakReference<eb.hp> next = it.next();
            if (next != null && next.get() == hpVar) {
                it.remove();
            }
        }
    }

    @Override // com.byazt.um.eb
    @SuppressLint({"unused"})
    public void reset() {
        if (isReleased()) {
            return;
        }
        l(new Runnable() { // from class: com.byazt.jc.j.18
            @Override // java.lang.Runnable
            public void run() {
                if (j.this.f21287k != null) {
                    j.this.f21287k.sendEmptyMessage(102);
                }
            }
        });
    }

    @Override // com.byazt.um.eb
    public void restart() {
        if (isReleased() || this.eb == null) {
            return;
        }
        if (this.jl != 206) {
            l();
            this.f21289ms = false;
            this.xh.hp(true);
            hp(0L);
            if (this.f21287k != null) {
                this.f21287k.removeCallbacks(this.ky);
                this.f21287k.postDelayed(this.ky, this.nu);
            }
        }
        this.dy.set(true);
        if ((this.lv.get() || this.f21293r.get()) && this.f21287k != null) {
            this.f21287k.post(new Runnable() { // from class: com.byazt.jc.j.13
                @Override // java.lang.Runnable
                public void run() {
                    j.this.gu();
                }
            });
        }
    }

    @Override // com.byazt.um.eb
    public void seekTo(final long j2) {
        if (isReleased()) {
            return;
        }
        if (this.jl == 207 || this.jl == 206 || this.jl == 209) {
            l(new Runnable() { // from class: com.byazt.jc.j.4
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.f21287k != null) {
                        j.this.f21287k.obtainMessage(106, Long.valueOf(j2)).sendToTarget();
                    }
                }
            });
        }
    }

    @Override // com.byazt.um.eb
    public void setDataSource(final zy zyVar) {
        if (isReleased()) {
            return;
        }
        this.wv = zyVar;
        if (zyVar != null) {
            this.mp = !zyVar.isAudio();
        }
        l(new Runnable() { // from class: com.byazt.jc.j.7
            @Override // java.lang.Runnable
            public void run() {
                j.this.jx();
                if (j.this.f21287k != null) {
                    j.this.f21287k.obtainMessage(107, zyVar).sendToTarget();
                }
            }
        });
    }

    @Override // com.byazt.um.eb
    public void setDisplay(final SurfaceHolder surfaceHolder) {
        if (isReleased()) {
            return;
        }
        this.jx = surfaceHolder;
        setSurfaceValid(true);
        l(new Runnable() { // from class: com.byazt.jc.j.6
            @Override // java.lang.Runnable
            public void run() {
                j.this.jx();
                if (j.this.f21287k != null) {
                    j.this.f21287k.obtainMessage(110, surfaceHolder).sendToTarget();
                }
            }
        });
    }

    @Override // com.byazt.um.eb
    public void setLoop(boolean z2) {
        if (isReleased()) {
            return;
        }
        this.eb.w(z2);
    }

    @Override // com.byazt.um.eb
    public void setPlaySpeedRatio(float f2) {
        try {
            com.byazt.fw.hp hpVar = new com.byazt.fw.hp();
            hpVar.hp(f2);
            this.eb.hp(hpVar);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    @Override // com.byazt.um.eb
    public void setQuietPlay(final boolean z2) {
        if (isReleased() || this.f21287k == null) {
            return;
        }
        this.f21287k.post(new Runnable() { // from class: com.byazt.jc.j.10
            @Override // java.lang.Runnable
            public void run() {
                if (j.this.isReleased() || j.this.eb == null) {
                    return;
                }
                try {
                    j.this.hq = z2;
                    j.this.eb.j(z2);
                } catch (Throwable unused) {
                }
            }
        });
    }

    @Override // com.byazt.um.eb
    public void setSeekMode(int i2) {
        this.f21297w = i2;
    }

    @Override // com.byazt.um.eb
    public void setSurface(final SurfaceTexture surfaceTexture) {
        if (isReleased()) {
            return;
        }
        this.f21288l = surfaceTexture;
        setSurfaceValid(true);
        l(new Runnable() { // from class: com.byazt.jc.j.5
            @Override // java.lang.Runnable
            public void run() {
                j.this.jx();
                if (j.this.f21287k != null) {
                    j.this.f21287k.obtainMessage(111, surfaceTexture).sendToTarget();
                }
            }
        });
    }

    @Override // com.byazt.um.eb
    public void setSurfaceValid(final boolean z2) {
        if (isReleased()) {
            return;
        }
        this.f21291o = z2;
        if (this.eb != null) {
            this.eb.hp(z2);
        } else if (this.f21287k != null) {
            this.f21287k.post(new Runnable() { // from class: com.byazt.jc.j.11
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.eb != null) {
                        j.this.eb.hp(z2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.um.eb
    public void setUpdateProgressInterval(int i2) {
        if (isReleased()) {
            return;
        }
        this.nu = i2;
    }

    @Override // com.byazt.um.eb
    public void start(boolean z2, long j2, boolean z3) {
        if (isReleased()) {
            return;
        }
        jx();
        this.hq = z3;
        this.f21289ms = false;
        setQuietPlay(z3);
        if (z2) {
            this.zy = j2;
            j();
        } else {
            hp(j2);
        }
        if (this.f21287k != null) {
            this.f21287k.removeCallbacks(this.ky);
            this.f21287k.postDelayed(this.ky, this.nu);
        }
        this.dy.set(true);
        if ((this.lv.get() || this.f21293r.get()) && this.f21287k != null) {
            this.f21287k.post(new Runnable() { // from class: com.byazt.jc.j.14
                @Override // java.lang.Runnable
                public void run() {
                    j.this.gu();
                }
            });
        }
    }

    @Override // com.byazt.um.eb
    public void stop() {
        if (isReleased()) {
            return;
        }
        l(new Runnable() { // from class: com.byazt.jc.j.3
            @Override // java.lang.Runnable
            public void run() {
                if (j.this.f21287k != null) {
                    j.this.f21287k.sendEmptyMessage(105);
                }
            }
        });
    }

    private void a() {
        Handler handler = this.f21287k;
        if (handler == null || handler.getLooper() == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.byazt.jc.j.8
            @Override // java.lang.Runnable
            public void run() {
                if (j.this.f21287k == null || j.this.f21287k.getLooper() == null) {
                    return;
                }
                try {
                    if (j.this.f21296v) {
                        j.this.f21287k.removeCallbacksAndMessages(null);
                    } else {
                        com.byazt.lo.hp.hp().hp(j.this.f21287k);
                    }
                    j.this.f21287k = null;
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void e() {
        if (this.f21285e) {
            return;
        }
        this.f21285e = true;
        ArrayList arrayList = new ArrayList(this.cx);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((Runnable) obj).run();
        }
        this.cx.clear();
        this.f21285e = false;
    }

    private void eb() {
        SparseIntArray sparseIntArray = di;
        sparseIntArray.put(this.f21283b, sparseIntArray.get(this.f21283b) + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gu() {
        ArrayList<Runnable> arrayList = this.cx;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        e();
    }

    private void jl() {
        ArrayList<Runnable> arrayList = this.cx;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.cx.clear();
    }

    private void q() {
        if (this.f21287k != null) {
            this.f21287k.post(new Runnable() { // from class: com.byazt.jc.j.9
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        j.this.eb.eb();
                        j.this.jl = 207;
                        j.this.f21289ms = false;
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    private void s() {
        eb.hp hpVar;
        hp("0506");
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f21290n;
        for (WeakReference<eb.hp> weakReference : this.f21284d) {
            if (weakReference != null && (hpVar = weakReference.get()) != null) {
                hpVar.onRenderStart(this, jElapsedRealtime);
            }
        }
        this.f21282a = true;
    }

    private void w() {
        if (this.eb == null) {
            return;
        }
        try {
            this.eb.jl();
        } catch (Throwable unused) {
        }
        this.eb.hp((jx.l) null);
        this.eb.hp((jx.eb) null);
        this.eb.hp((jx.hp) null);
        this.eb.hp((jx.j) null);
        this.eb.hp((jx.InterfaceC0280jx) null);
        this.eb.hp((jx.w) null);
        this.eb.hp((jx.a) null);
        try {
            this.eb.gu();
            com.byazt.tw.l lVar = this.ud;
            if (lVar != null) {
                lVar.hp(this.vv, this.wv);
            }
        } catch (Throwable unused2) {
        }
    }

    private void j() {
        l(new Runnable() { // from class: com.byazt.jc.j.2
            @Override // java.lang.Runnable
            public void run() {
                if (j.this.f21287k != null) {
                    j.this.f21287k.sendEmptyMessage(104);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        if (this.f21287k != null) {
            this.f21287k.post(new Runnable() { // from class: com.byazt.jc.j.12
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.eb == null) {
                        try {
                            j.this.eb = new l();
                        } catch (Throwable th) {
                            com.byazt.qm.l.hp("CSJ_VIDEO_MEDIA", th.getMessage());
                        }
                        if (j.this.eb == null) {
                            return;
                        }
                        jx unused = j.this.eb;
                        j.this.eb.hp((jx.w) j.this);
                        j.this.eb.hp((jx.l) j.this);
                        j.this.eb.hp((jx.InterfaceC0280jx) j.this);
                        j.this.eb.hp((jx.hp) j.this);
                        j.this.eb.hp((jx.a) j.this);
                        j.this.eb.hp((jx.j) j.this);
                        j.this.eb.hp((jx.eb) j.this);
                        try {
                            j.this.eb.jx(false);
                        } catch (Throwable unused2) {
                        }
                        j.this.f21292q = false;
                    }
                }
            });
        }
    }

    private void l() {
        this.xs = 0L;
        this.f21286j = 0;
        this.ec = 0L;
        this.f21295u = false;
        this.vv = Long.MIN_VALUE;
    }

    @Override // com.byazt.jc.jx.a
    public void jx(jx jxVar) {
        eb.hp hpVar;
        for (WeakReference<eb.hp> weakReference : this.f21284d) {
            if (weakReference != null && (hpVar = weakReference.get()) != null) {
                hpVar.onSeekCompletion(this, true);
            }
        }
    }

    private void l(String str) throws Throwable {
        FileInputStream fileInputStream = new FileInputStream(str);
        this.eb.hp(fileInputStream.getFD());
        fileInputStream.close();
    }

    private void hp(String str) {
        com.byazt.tw.l lVar = this.ud;
        if (lVar != null) {
            lVar.hp(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2, long j3) {
        long j4;
        long j5;
        eb.hp hpVar;
        for (WeakReference<eb.hp> weakReference : this.f21284d) {
            if (weakReference == null || (hpVar = weakReference.get()) == null) {
                j4 = j2;
                j5 = j3;
            } else {
                j4 = j2;
                j5 = j3;
                hpVar.onPlayPositionUpdate(this, j4, j5);
            }
            j2 = j4;
            j3 = j5;
        }
    }

    @Override // com.byazt.jc.jx.j
    public boolean l(jx jxVar, int i2, int i3) {
        eb.hp hpVar;
        com.byazt.qm.l.hp("CSJ_VIDEO_MEDIA", "what,extra:" + i2 + "," + i3);
        if (this.eb != jxVar) {
            return false;
        }
        if (i3 == -1004) {
            com.byazt.tw.jx jxVar2 = new com.byazt.tw.jx(i2, i3);
            hp("0510");
            com.byazt.tw.l lVar = this.ud;
            if (lVar != null) {
                lVar.hp(i2, i3, "");
            }
            for (WeakReference<eb.hp> weakReference : this.f21284d) {
                if (weakReference != null && (hpVar = weakReference.get()) != null) {
                    hpVar.onError(this, jxVar2);
                }
            }
        }
        l(i2, i3);
        return false;
    }

    private void hp(String str, Looper looper) {
        this.f21283b = 0;
        if (looper != null) {
            this.f21296v = true;
            this.f21287k = new ud(looper, this);
        } else if (this.f21287k == null) {
            this.f21287k = com.byazt.lo.hp.hp().hp(this, "csj_" + str);
        }
        jx();
    }

    private void hp(long j2) {
        this.xh.hp(j2);
        if (this.f21291o) {
            l(this.xh);
        } else if (hp(this.wv)) {
            l(this.xh);
        } else {
            hp(this.xh);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2, int i3) {
        eb.hp hpVar;
        eb.hp hpVar2;
        if (i2 == 701) {
            this.as = SystemClock.elapsedRealtime();
            this.f21286j++;
            for (WeakReference<eb.hp> weakReference : this.f21284d) {
                if (weakReference != null && (hpVar2 = weakReference.get()) != null) {
                    hpVar2.onBufferStart(this, Integer.MAX_VALUE, 0, 0);
                }
            }
            return;
        }
        if (i2 == 702) {
            if (this.as > 0) {
                this.kg += SystemClock.elapsedRealtime() - this.as;
                this.as = 0L;
            }
            for (WeakReference<eb.hp> weakReference2 : this.f21284d) {
                if (weakReference2 != null && (hpVar = weakReference2.get()) != null) {
                    hpVar.onBufferEnd(this, Integer.MAX_VALUE);
                }
            }
            return;
        }
        if (this.mp && i2 == 3) {
            gu();
            s();
            setQuietPlay(this.hq);
        }
    }

    private boolean hp(zy zyVar) {
        return zyVar != null && zyVar.isAudio();
    }

    public int hp() {
        if (isReleased()) {
            return 203;
        }
        return this.jl;
    }

    @Override // com.byazt.jc.jx.hp
    public void hp(jx jxVar, int i2) {
        eb.hp hpVar;
        if (this.eb != jxVar) {
            return;
        }
        for (WeakReference<eb.hp> weakReference : this.f21284d) {
            if (weakReference != null && (hpVar = weakReference.get()) != null) {
                hpVar.onBufferingUpdate(this, i2);
            }
        }
    }

    @Override // com.byazt.jc.jx.l
    public void hp(jx jxVar) {
        eb.hp hpVar;
        this.jl = 209;
        di.delete(this.f21283b);
        if (this.f21287k != null) {
            this.f21287k.removeCallbacks(this.ky);
        }
        hp("0509");
        for (WeakReference<eb.hp> weakReference : this.f21284d) {
            if (weakReference != null && (hpVar = weakReference.get()) != null) {
                hpVar.onCompletion(this);
            }
        }
    }

    @Override // com.byazt.jc.jx.w
    public void l(jx jxVar) {
        eb.hp hpVar;
        if (isReleased()) {
            return;
        }
        this.jl = 205;
        try {
            zy zyVar = this.wv;
            if (zyVar != null) {
                float playSpeedRatio = zyVar.getPlaySpeedRatio();
                if (playSpeedRatio > 0.0f) {
                    com.byazt.fw.hp hpVar2 = new com.byazt.fw.hp();
                    hpVar2.hp(playSpeedRatio);
                    this.eb.hp(hpVar2);
                }
            }
        } catch (Throwable unused) {
        }
        if (this.f21287k != null) {
            if (this.f21289ms) {
                q();
            } else {
                com.byazt.qm.l.hp("CSJ_VIDEO_MEDIA", "onPrepared op_Start");
                this.f21287k.sendMessage(this.f21287k.obtainMessage(100, -1, -1));
            }
        }
        di.delete(this.f21283b);
        com.byazt.qm.l.hp("CSJ_VIDEO_MEDIA", "onPrepared:" + this.mp + " " + this.ns);
        if (!this.mp && !this.ns) {
            s();
            this.ns = true;
        }
        hp("0504");
        for (WeakReference<eb.hp> weakReference : this.f21284d) {
            if (weakReference != null && (hpVar = weakReference.get()) != null) {
                hpVar.onPrepared(this);
            }
        }
    }

    @Override // com.byazt.jc.jx.InterfaceC0280jx
    public boolean hp(jx jxVar, int i2, int i3) {
        eb.hp hpVar;
        com.byazt.qm.l.hp("CSJ_VIDEO_MEDIA", "what=" + i2 + " extra=" + i3);
        eb();
        this.jl = 200;
        if (this.f21287k != null) {
            this.f21287k.removeCallbacks(this.ky);
        }
        if (hp(i2, i3)) {
            a();
        }
        if (!this.dy.get()) {
            return true;
        }
        this.dy.set(false);
        com.byazt.tw.jx jxVar2 = new com.byazt.tw.jx(i2, i3);
        hp("0510");
        com.byazt.tw.l lVar = this.ud;
        if (lVar != null) {
            lVar.hp(i2, i3, "");
        }
        for (WeakReference<eb.hp> weakReference : this.f21284d) {
            if (weakReference != null && (hpVar = weakReference.get()) != null) {
                hpVar.onError(this, jxVar2);
            }
        }
        return true;
    }

    private void hp(Runnable runnable) {
        try {
            if (this.cx == null) {
                this.cx = new ArrayList<>();
            }
            this.cx.add(runnable);
        } catch (Throwable th) {
            com.byazt.qm.l.hp("CSJ_VIDEO_MEDIA", th.getMessage());
        }
    }

    private void l(Runnable runnable) {
        if (runnable == null || isReleased()) {
            return;
        }
        if (!this.gu) {
            runnable.run();
        } else {
            hp(runnable);
        }
    }

    @Override // com.byazt.jc.jx.eb
    public void hp(jx jxVar, int i2, int i3, int i4, int i5) {
        eb.hp hpVar;
        for (WeakReference<eb.hp> weakReference : this.f21284d) {
            if (weakReference != null && (hpVar = weakReference.get()) != null) {
                hpVar.onVideoSizeChanged(this, i2, i3);
            }
        }
    }
}
