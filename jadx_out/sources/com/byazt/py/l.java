package com.byazt.py;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.core.app.NotificationCompat;
import com.byazt.pg.k;
import com.byazt.pg.r;
import com.byazt.tw.jx;
import com.byazt.um.eb;
import com.byazt.um.zy;
import com.byazt.ym.j;
import com.byazt.ymw.ud;
import com.bykv.vk.component.ttvideo.SeekCompletionListener;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback;
import com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.component.ttvideo.player.TTPlayerClient;
import com.bykv.vk.component.ttvideo.playerwrapper.MediaPlayerWrapper;
import com.bykv.vk.component.ttvideo.utils.Error;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MEDIACODEC_DROP_NONREF, 34})
/* loaded from: classes3.dex */
public class l implements eb, r.hp {
    public static volatile boolean hp = false;

    /* renamed from: b, reason: collision with root package name */
    public volatile Handler f24531b;

    /* renamed from: e, reason: collision with root package name */
    public long f24533e;
    public int ec;

    /* renamed from: l, reason: collision with root package name */
    public TTVideoEngine f24536l;

    /* renamed from: n, reason: collision with root package name */
    public SurfaceTexture f24537n;
    public SurfaceHolder ns;
    public int sz;
    public boolean ud;
    public boolean jx = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f24534j = false;

    /* renamed from: w, reason: collision with root package name */
    public boolean f24543w = false;

    /* renamed from: a, reason: collision with root package name */
    public boolean f24530a = false;
    public boolean eb = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f24540s = false;

    /* renamed from: q, reason: collision with root package name */
    public boolean f24539q = false;
    public long gu = 0;
    public long jl = 0;
    public long zy = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f24535k = 0;

    /* renamed from: v, reason: collision with root package name */
    public int f24542v = 0;

    /* renamed from: u, reason: collision with root package name */
    public boolean f24541u = false;
    public AtomicBoolean xs = new AtomicBoolean(false);
    public AtomicBoolean vv = new AtomicBoolean(false);
    public final List<WeakReference<eb.hp>> cx = Collections.synchronizedList(new ArrayList());
    public volatile boolean di = false;

    /* renamed from: o, reason: collision with root package name */
    public volatile int f24538o = 200;

    /* renamed from: d, reason: collision with root package name */
    public long f24532d = 0;
    public Runnable wv = new Runnable() { // from class: com.byazt.py.l.1
        @Override // java.lang.Runnable
        public void run() {
            long currentPosition = l.this.getCurrentPosition();
            if (l.this.getVideoDuration() > 0) {
                if (l.this.f24532d != currentPosition) {
                    if (com.byazt.fw.l.j()) {
                        long unused = l.this.f24532d;
                    }
                    l lVar = l.this;
                    lVar.hp(currentPosition, lVar.getVideoDuration());
                }
                l.this.f24532d = currentPosition;
            }
            if (l.this.f24530a) {
                l lVar2 = l.this;
                lVar2.hp(lVar2.getVideoDuration(), l.this.getVideoDuration());
            } else if (l.this.f24531b != null) {
                l.this.f24531b.postDelayed(this, l.this.f24538o);
            }
        }
    };
    public final ArrayList<Runnable> hq = new ArrayList<>();

    public l(Context context, String str) {
        hp(context, "vd_".concat(String.valueOf(str)), (Looper) null);
    }

    @Override // com.byazt.um.eb
    public void addIVideoPlayerCallback(eb.hp hpVar) {
        if (hpVar == null) {
            return;
        }
        for (WeakReference<eb.hp> weakReference : this.cx) {
            if (weakReference != null && weakReference.get() == hpVar) {
                return;
            }
        }
        this.cx.add(new WeakReference<>(hpVar));
    }

    @Override // com.byazt.um.eb
    public int getBufferCount() {
        return this.f24542v;
    }

    @Override // com.byazt.um.eb
    public String getCodec() {
        return "";
    }

    @Override // com.byazt.um.eb
    public long getCurrentPosition() {
        try {
            return this.f24536l.getCurrentPlaybackTime();
        } catch (Throwable th) {
            com.byazt.qm.l.hp(th.getMessage());
            return 0L;
        }
    }

    @Override // com.byazt.um.eb
    public SurfaceHolder getSurfaceHolder() {
        return this.ns;
    }

    @Override // com.byazt.um.eb
    public SurfaceTexture getSurfaceTexture() {
        return this.f24537n;
    }

    @Override // com.byazt.um.eb
    public long getTotalBufferTime() {
        if (this.f24542v == 0) {
            return 0L;
        }
        if (this.jl == 0 && this.zy != 0) {
            this.jl = System.currentTimeMillis() - this.zy;
        }
        return this.jl;
    }

    @Override // com.byazt.um.eb
    public int getUpdateProgressInterval() {
        return this.f24538o;
    }

    @Override // com.byazt.um.eb
    public long getVideoDuration() {
        return this.f24536l.getDuration();
    }

    @Override // com.byazt.um.eb
    public int getVideoHeight() {
        return this.sz;
    }

    @Override // com.byazt.um.eb
    public int getVideoWidth() {
        return this.ec;
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        eb.hp hpVar;
        eb.hp hpVar2;
        int i2 = message.what;
        try {
            if (i2 == 105) {
                TTVideoEngine tTVideoEngine = this.f24536l;
                if (tTVideoEngine != null) {
                    tTVideoEngine.stop();
                    return;
                }
                return;
            }
            if (i2 == 110) {
                TTVideoEngine tTVideoEngine2 = this.f24536l;
                if (tTVideoEngine2 != null) {
                    tTVideoEngine2.setSurfaceHolder((SurfaceHolder) message.obj);
                    this.vv.set(true);
                    if (this.xs.get()) {
                        j();
                        return;
                    }
                    return;
                }
                return;
            }
            if (i2 == 111) {
                TTVideoEngine tTVideoEngine3 = this.f24536l;
                if (tTVideoEngine3 != null) {
                    tTVideoEngine3.setSurface(new Surface((SurfaceTexture) message.obj));
                    this.vv.set(true);
                    if (this.xs.get()) {
                        j();
                        return;
                    }
                    return;
                }
                return;
            }
            switch (i2) {
                case 100:
                    TTVideoEngine tTVideoEngine4 = this.f24536l;
                    if (tTVideoEngine4 != null) {
                        tTVideoEngine4.play();
                        break;
                    }
                    break;
                case 101:
                    if (this.f24536l != null && this.f24531b != null) {
                        this.f24536l.pause();
                        for (WeakReference<eb.hp> weakReference : this.cx) {
                            if (weakReference != null && (hpVar = weakReference.get()) != null) {
                                hpVar.onPause(this);
                            }
                        }
                        this.f24531b.removeCallbacks(this.wv);
                        break;
                    }
                    break;
                case 102:
                    eb();
                    break;
                case 103:
                    TTVideoEngine tTVideoEngine5 = this.f24536l;
                    if (tTVideoEngine5 != null) {
                        tTVideoEngine5.release();
                    }
                    this.f24543w = true;
                    for (WeakReference<eb.hp> weakReference2 : this.cx) {
                        if (weakReference2 != null && (hpVar2 = weakReference2.get()) != null) {
                            hpVar2.onRelease(this);
                        }
                    }
                    break;
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.um.eb
    public boolean isCompleted() {
        return this.f24530a;
    }

    @Override // com.byazt.um.eb
    public boolean isFirstFrameSuccess() {
        return this.f24541u;
    }

    @Override // com.byazt.um.eb
    public boolean isLooping() {
        return this.f24536l.isLooping();
    }

    @Override // com.byazt.um.eb
    public boolean isPaused() {
        return this.f24536l.getPlaybackState() == 2;
    }

    @Override // com.byazt.um.eb
    public boolean isPlaying() {
        return this.f24536l.getPlaybackState() == 1;
    }

    @Override // com.byazt.um.eb
    public boolean isPrepared() {
        return this.eb;
    }

    @Override // com.byazt.um.eb
    public boolean isReleased() {
        return this.f24543w;
    }

    @Override // com.byazt.um.eb
    public boolean isStarted() {
        return this.f24540s;
    }

    @Override // com.byazt.um.eb
    public void pause() {
        Handler handler = this.f24531b;
        if (handler != null) {
            handler.removeMessages(100);
            handler.sendEmptyMessage(101);
        }
    }

    @Override // com.byazt.um.eb
    public void play() {
        Handler handler = this.f24531b;
        if (handler != null) {
            handler.postDelayed(this.wv, this.f24538o);
            handler.post(new Runnable() { // from class: com.byazt.py.l.8
                @Override // java.lang.Runnable
                public void run() {
                    eb.hp hpVar;
                    try {
                        if (l.this.f24536l != null) {
                            l.this.f24536l.play();
                            for (WeakReference weakReference : l.this.cx) {
                                if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                                    hpVar.onResume(l.this);
                                }
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    @Override // com.byazt.um.eb
    public void release() {
        w();
        Handler handler = this.f24531b;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            handler.sendEmptyMessage(103);
            if (handler.getLooper() != null) {
                handler.post(new Runnable() { // from class: com.byazt.py.l.11
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (!l.this.di) {
                                ((r) j.getService("thread_service")).recycleHandler(l.this.f24531b);
                            }
                            l.this.f24531b = null;
                        } catch (Throwable unused) {
                        }
                    }
                });
            }
        }
    }

    @Override // com.byazt.um.eb
    public void removeIVideoPlayerCallback(eb.hp hpVar) {
        if (hpVar == null) {
            return;
        }
        Iterator<WeakReference<eb.hp>> it = this.cx.iterator();
        while (it.hasNext()) {
            WeakReference<eb.hp> next = it.next();
            if (next != null && next.get() == hpVar) {
                it.remove();
            }
        }
    }

    @Override // com.byazt.um.eb
    public void reset() {
        l(new Runnable() { // from class: com.byazt.py.l.9
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f24531b != null) {
                    l.this.f24531b.sendEmptyMessage(102);
                }
            }
        });
    }

    @Override // com.byazt.um.eb
    public void restart() {
        TTVideoEngine tTVideoEngine = this.f24536l;
        boolean zIsMute = tTVideoEngine != null ? tTVideoEngine.isMute() : false;
        this.f24542v = 0;
        this.jl = 0L;
        this.zy = 0L;
        this.f24530a = false;
        start(true, 0L, zIsMute);
    }

    @Override // com.byazt.um.eb
    public void seekTo(long j2) {
        if (this.f24534j) {
            this.f24536l.seekTo((int) j2, new SeekCompletionListener() { // from class: com.byazt.py.l.10
                @Override // com.bykv.vk.component.ttvideo.SeekCompletionListener
                public void onCompletion(boolean z2) {
                    eb.hp hpVar;
                    for (WeakReference weakReference : l.this.cx) {
                        if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                            hpVar.onSeekCompletion(l.this, z2);
                        }
                    }
                }
            });
        }
    }

    @Override // com.byazt.um.eb
    public void setDataSource(zy zyVar) {
        this.f24536l.setDirectUrlUseDataLoader(zyVar.getUrl(), zyVar.getFileNameKey(), (String) null, zyVar.getCacheParentDir());
        this.jx = true;
        this.f24542v = 0;
        zyVar.getUrl();
        zyVar.isH265();
        zyVar.getPreloadSize();
        zyVar.getCacheParentDir();
        zyVar.getFileNameKey();
    }

    @Override // com.byazt.um.eb
    public void setDisplay(final SurfaceHolder surfaceHolder) {
        setSurfaceValid(true);
        this.ns = surfaceHolder;
        l(new Runnable() { // from class: com.byazt.py.l.4
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f24531b != null) {
                    l.this.f24531b.obtainMessage(110, surfaceHolder).sendToTarget();
                }
            }
        });
    }

    @Override // com.byazt.um.eb
    public void setLoop(boolean z2) {
        this.f24536l.setLooping(z2);
    }

    @Override // com.byazt.um.eb
    public void setPlaySpeedRatio(float f2) {
    }

    @Override // com.byazt.um.eb
    public void setQuietPlay(boolean z2) {
        this.f24536l.setIsMute(z2);
    }

    @Override // com.byazt.um.eb
    public void setSeekMode(int i2) {
    }

    @Override // com.byazt.um.eb
    public void setSurface(final SurfaceTexture surfaceTexture) {
        setSurfaceValid(true);
        this.f24537n = surfaceTexture;
        l(new Runnable() { // from class: com.byazt.py.l.5
            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f24531b != null) {
                    l.this.f24531b.obtainMessage(111, surfaceTexture).sendToTarget();
                }
            }
        });
    }

    @Override // com.byazt.um.eb
    public void setSurfaceValid(boolean z2) {
        this.f24539q = z2;
    }

    @Override // com.byazt.um.eb
    public void setUpdateProgressInterval(int i2) {
        this.f24538o = i2;
    }

    @Override // com.byazt.um.eb
    public void start(boolean z2, long j2, boolean z3) {
        if (this.f24531b != null) {
            this.f24531b.postDelayed(this.wv, this.f24538o);
        }
        this.f24533e = System.currentTimeMillis();
        this.f24536l.setStartTime((int) j2);
        this.f24536l.setIsMute(z3);
        if (this.vv.get() && this.jx) {
            l();
        } else {
            hp(new Runnable() { // from class: com.byazt.py.l.6
                @Override // java.lang.Runnable
                public void run() {
                    l.this.l();
                }
            });
        }
        this.xs.set(true);
        if (!this.vv.get() || this.f24531b == null) {
            return;
        }
        this.f24531b.post(new Runnable() { // from class: com.byazt.py.l.7
            @Override // java.lang.Runnable
            public void run() {
                l.this.j();
            }
        });
    }

    @Override // com.byazt.um.eb
    public void stop() {
        if (this.f24531b != null) {
            this.f24531b.sendEmptyMessage(105);
        }
    }

    private void a() {
        this.f24536l.setVideoEngineSimpleCallback(new VideoEngineSimpleCallback() { // from class: com.byazt.py.l.2
            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onBufferEnd(int i2) {
                eb.hp hpVar;
                if (l.this.f24535k == i2) {
                    l.this.jl += System.currentTimeMillis() - l.this.zy;
                }
                for (WeakReference weakReference : l.this.cx) {
                    if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                        hpVar.onBufferEnd(l.this, i2);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onBufferStart(int i2, int i3, int i4) {
                eb.hp hpVar;
                l.this.f24535k = i2;
                l.this.f24542v++;
                l.this.zy = System.currentTimeMillis();
                for (WeakReference weakReference : l.this.cx) {
                    if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                        hpVar.onBufferStart(l.this, i2, i3, i4);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onBufferingUpdate(TTVideoEngine tTVideoEngine, int i2) {
                eb.hp hpVar;
                for (WeakReference weakReference : l.this.cx) {
                    if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                        hpVar.onBufferingUpdate(l.this, i2);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onCompletion(TTVideoEngine tTVideoEngine) {
                eb.hp hpVar;
                l.this.f24530a = true;
                if (l.this.f24531b != null) {
                    l.this.f24531b.removeCallbacks(l.this.wv);
                }
                for (WeakReference weakReference : l.this.cx) {
                    if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                        hpVar.onCompletion(l.this);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onError(Error error) {
                eb.hp hpVar;
                jx jxVar = new jx(error.getCode(), error.getInternalCode());
                for (WeakReference weakReference : l.this.cx) {
                    if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                        hpVar.onError(l.this, jxVar);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onLoadStateChanged(TTVideoEngine tTVideoEngine, int i2) {
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onMDLHitCache(String str, long j2) {
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onPlaybackStateChanged(TTVideoEngine tTVideoEngine, int i2) {
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onPrepare(TTVideoEngine tTVideoEngine) {
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onPrepared(TTVideoEngine tTVideoEngine) {
                eb.hp hpVar;
                l.this.eb = true;
                for (WeakReference weakReference : l.this.cx) {
                    if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                        hpVar.onPrepared(l.this);
                    }
                }
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onRenderSeekComplete(int i2) {
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onRenderStart(TTVideoEngine tTVideoEngine) {
                eb.hp hpVar;
                l.this.gu = System.currentTimeMillis() - l.this.f24533e;
                for (WeakReference weakReference : l.this.cx) {
                    if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                        l lVar = l.this;
                        hpVar.onRenderStart(lVar, lVar.gu);
                    }
                }
                l.this.f24541u = true;
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onRetry(int i2) {
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onUseMDLCacheEnd() {
            }

            @Override // com.bykv.vk.component.ttvideo.VideoEngineSimpleCallback, com.bykv.vk.component.ttvideo.VideoEngineCallback
            public void onVideoSizeChanged(TTVideoEngine tTVideoEngine, int i2, int i3) {
                eb.hp hpVar;
                l.this.ec = i2;
                l.this.sz = i3;
                for (WeakReference weakReference : l.this.cx) {
                    if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                        hpVar.onVideoSizeChanged(l.this, i2, i3);
                    }
                }
            }
        });
    }

    private void eb() {
        this.jx = false;
        this.f24534j = false;
        this.f24530a = false;
        this.eb = false;
        this.f24540s = false;
    }

    private void w() {
        ArrayList<Runnable> arrayList = this.hq;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.hq.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        ArrayList<Runnable> arrayList = this.hq;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        jx();
    }

    private void jx() {
        if (this.ud) {
            return;
        }
        this.ud = true;
        ArrayList arrayList = new ArrayList(this.hq);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((Runnable) obj).run();
        }
        this.hq.clear();
        this.ud = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        eb.hp hpVar;
        this.f24540s = true;
        this.f24534j = true;
        for (WeakReference<eb.hp> weakReference : this.cx) {
            if (weakReference != null && (hpVar = weakReference.get()) != null) {
                hpVar.onStart(this);
            }
        }
        if (this.f24531b != null) {
            this.f24531b.sendEmptyMessage(100);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2, long j3) {
        long j4;
        long j5;
        eb.hp hpVar;
        for (WeakReference<eb.hp> weakReference : this.cx) {
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

    private void hp(Context context, String str, Looper looper) {
        this.f24536l = hp.hp(context);
        if (looper != null) {
            this.f24531b = new ud(looper, this);
            this.di = true;
        } else if (this.f24531b == null) {
            this.f24531b = ((r) j.getService("thread_service")).obtainHandler(this, "csj_".concat(String.valueOf(str)));
        }
        a();
    }

    private void l(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (!this.f24543w) {
            runnable.run();
        } else {
            hp(runnable);
        }
    }

    private synchronized void hp(Runnable runnable) {
        this.hq.add(runnable);
    }

    public static boolean hp() {
        return hp;
    }

    public static void hp(Context context, String str, int i2, String[] strArr, long[] jArr, boolean z2) {
        boolean z3;
        try {
            TTPlayerClient.create(new MediaPlayerWrapper(), com.byazt.fw.l.getContext()).release();
            hp.hp(context, str, i2, strArr, jArr, new VideoEventEngineUploader() { // from class: com.byazt.py.l.3
                @Override // com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader
                public void onEvent(String str2, JSONObject jSONObject) {
                    ((k) j.getService(NotificationCompat.CATEGORY_EVENT)).onAppLogMiscEvent(str2, jSONObject);
                }
            });
            hp.hp(z2);
            z3 = true;
        } catch (Throwable unused) {
            z3 = false;
        }
        hp = z3;
    }
}
