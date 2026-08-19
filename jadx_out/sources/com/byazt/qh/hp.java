package com.byazt.qh;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.anythink.core.common.m.f;
import com.byazt.fw.l;
import com.byazt.pg.r;
import com.byazt.tw.jx;
import com.byazt.uhg.jl;
import com.byazt.uhg.k;
import com.byazt.uhg.u;
import com.byazt.um.eb;
import com.byazt.um.zy;
import com.byazt.ym.j;
import com.byazt.ymw.ud;
import com.bykv.vk.component.ttvideo.ILiveListener;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.ILiveSettingBundle;
import com.bykv.vk.component.ttvideo.INetworkClient;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bykv.vk.component.ttvideo.VideoLiveManager;
import com.bykv.vk.component.ttvideo.log.LiveError;
import com.umeng.analytics.pro.cl;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 791, 28})
/* loaded from: classes3.dex */
public class hp implements eb, r.hp {

    /* renamed from: a, reason: collision with root package name */
    public Handler f24705a;
    public long cx;

    /* renamed from: d, reason: collision with root package name */
    public SurfaceTexture f24707d;
    public volatile boolean eb;
    public ILivePlayer hp;
    public volatile zy hq;

    /* renamed from: j, reason: collision with root package name */
    public int f24709j;
    public final Context jx;
    public JSONObject lv;

    /* renamed from: o, reason: collision with root package name */
    public SurfaceHolder f24713o;
    public boolean pu;

    /* renamed from: r, reason: collision with root package name */
    public boolean f24715r;

    /* renamed from: w, reason: collision with root package name */
    public int f24719w;
    public long xs;

    /* renamed from: l, reason: collision with root package name */
    public final List<WeakReference<eb.hp>> f24711l = Collections.synchronizedList(new ArrayList());

    /* renamed from: s, reason: collision with root package name */
    public AtomicBoolean f24716s = new AtomicBoolean(false);

    /* renamed from: q, reason: collision with root package name */
    public AtomicBoolean f24714q = new AtomicBoolean(false);

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f24708e = false;
    public volatile boolean gu = false;
    public volatile boolean jl = false;
    public volatile boolean zy = false;

    /* renamed from: k, reason: collision with root package name */
    public volatile boolean f24710k = false;

    /* renamed from: v, reason: collision with root package name */
    public volatile boolean f24718v = false;

    /* renamed from: u, reason: collision with root package name */
    public volatile boolean f24717u = true;
    public long vv = 0;
    public long ec = 0;
    public final int sz = 0;

    /* renamed from: n, reason: collision with root package name */
    public int f24712n = 0;
    public long ns = 0;

    /* renamed from: b, reason: collision with root package name */
    public long f24706b = 0;
    public volatile boolean di = false;
    public volatile int wv = 200;
    public long ud = 0;
    public final ArrayList<Runnable> nu = new ArrayList<>();
    public final Runnable dy = new Runnable() { // from class: com.byazt.qh.hp.1
        @Override // java.lang.Runnable
        public void run() {
            eb.hp hpVar;
            long currentPosition = hp.this.getCurrentPosition();
            hp.this.f24706b += hp.this.wv;
            if (hp.this.getVideoDuration() > 0 && hp.this.ud != currentPosition) {
                l.j();
                hp hpVar2 = hp.this;
                hpVar2.hp(currentPosition, hpVar2.getVideoDuration());
            }
            hp.this.ud = currentPosition;
            if (hp.this.getCurrentPosition() >= hp.this.cx) {
                hp.this.zy = true;
                hp.this.release();
                for (WeakReference weakReference : hp.this.f24711l) {
                    if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                        hpVar.onCompletion(hp.this);
                    }
                }
            }
            if (hp.this.zy) {
                hp hpVar3 = hp.this;
                hpVar3.hp(hpVar3.getVideoDuration(), hp.this.getVideoDuration());
            } else if (hp.this.f24705a != null) {
                hp.this.f24705a.postDelayed(this, hp.this.wv);
            }
        }
    };
    public final ILiveListener ky = new ILiveListener() { // from class: com.byazt.qh.hp.7

        /* renamed from: l, reason: collision with root package name */
        public boolean f24722l = false;

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onAbrSwitch(String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onAudioRenderStall(int i2) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onCacheFileCompletion() {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onCompletion() {
            eb.hp hpVar;
            if (hp.this.f24705a == null) {
                return;
            }
            hp.this.f24705a.removeCallbacks(hp.this.dy);
            for (WeakReference weakReference : hp.this.f24711l) {
                if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                    hpVar.onBufferStart(hp.this, -1, -1, -1);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onError(LiveError liveError) {
            eb.hp hpVar;
            if (liveError != null) {
                if (this.f24722l) {
                    return;
                }
                this.f24722l = true;
                jx jxVar = new jx(liveError.code, 0, liveError.getInfoJSON());
                for (WeakReference weakReference : hp.this.f24711l) {
                    if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                        hpVar.onError(hp.this, jxVar);
                    }
                }
            }
            hp.this.f24717u = true;
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onFirstFrame(boolean z2) {
            eb.hp hpVar;
            eb.hp hpVar2;
            if (hp.this.f24705a == null) {
                return;
            }
            hp.this.di = true;
            hp.this.f24705a.removeCallbacks(hp.this.dy);
            if (hp.this.cx > 0) {
                hp.this.f24705a.postDelayed(hp.this.dy, hp.this.wv);
            }
            hp.this.f24717u = false;
            if (!z2) {
                for (WeakReference weakReference : hp.this.f24711l) {
                    if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                        hpVar.onBufferEnd(hp.this, -1);
                    }
                }
                return;
            }
            hp.this.vv = System.currentTimeMillis() - hp.this.xs;
            for (WeakReference weakReference2 : hp.this.f24711l) {
                if (weakReference2 != null && (hpVar2 = (eb.hp) weakReference2.get()) != null) {
                    hp hpVar3 = hp.this;
                    hpVar2.onRenderStart(hpVar3, hpVar3.vv);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onMonitorLog(JSONObject jSONObject, String str) {
            eb.hp hpVar;
            for (WeakReference weakReference : hp.this.f24711l) {
                if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                    hpVar.onMonitorLog(hp.this, jSONObject, str);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onPrepared() {
            eb.hp hpVar;
            hp.this.f24710k = true;
            for (WeakReference weakReference : hp.this.f24711l) {
                if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                    hpVar.onPrepared(hp.this);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onReportALog(int i2, String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onResolutionDegrade(String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onSeiUpdate(String str) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onStallEnd() {
            eb.hp hpVar;
            if (hp.this.f24705a == null) {
                return;
            }
            if (hp.this.cx > 0) {
                hp.this.f24705a.postDelayed(hp.this.dy, hp.this.wv);
            }
            hp.this.ec += System.currentTimeMillis() - hp.this.ns;
            for (WeakReference weakReference : hp.this.f24711l) {
                if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                    hpVar.onBufferEnd(hp.this, -1);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onStallStart() {
            eb.hp hpVar;
            if (hp.this.f24705a == null) {
                return;
            }
            hp.xs(hp.this);
            hp.this.ns = System.currentTimeMillis();
            hp.this.f24705a.removeCallbacks(hp.this.dy);
            for (WeakReference weakReference : hp.this.f24711l) {
                if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                    hpVar.onBufferStart(hp.this, -1, -1, -1);
                }
            }
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onVideoRenderStall(int i2) {
        }

        @Override // com.bykv.vk.component.ttvideo.ILiveListener
        public void onVideoSizeChanged(int i2, int i3) {
            eb.hp hpVar;
            hp.this.f24709j = i2;
            hp.this.f24719w = i3;
            for (WeakReference weakReference : hp.this.f24711l) {
                if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                    hpVar.onVideoSizeChanged(hp.this, i2, i3);
                }
            }
        }
    };

    @com.byazt.kj.hp(hp = {0, 1, 791, 170})
    /* renamed from: com.byazt.qh.hp$hp, reason: collision with other inner class name */
    public static class C0348hp implements INetworkClient {
        public final jl hp;

        public C0348hp() {
            jl.hp hpVarL = l.jx().l();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            this.hp = hpVarL.hp(10L, timeUnit).l(10L, timeUnit).jx(10L, timeUnit).hp();
        }

        @Override // com.bykv.vk.component.ttvideo.INetworkClient
        public INetworkClient.Result doPost(String str, String str2) {
            return null;
        }

        @Override // com.bykv.vk.component.ttvideo.INetworkClient
        public INetworkClient.Result doRequest(String str, String str2) {
            String str3;
            String strL;
            String str4 = null;
            String string = null;
            JSONObject jSONObject = null;
            try {
                try {
                    u uVarL = this.hp.hp(new k.hp().hp(str).l(f.bU, str2).l()).l();
                    if (uVarL.j()) {
                        strL = uVarL.a().l();
                        try {
                            string = uVarL.eb().toString();
                            jSONObject = new JSONObject(strL);
                        } catch (JSONException e2) {
                            e = e2;
                            String str5 = string;
                            str4 = strL;
                            str3 = str5;
                            return INetworkClient.Result.newBuilder().setBody(str4).setHeader(str3).setException(e).build();
                        }
                    } else {
                        strL = null;
                    }
                    return INetworkClient.Result.newBuilder().setResponse(jSONObject).setBody(strL).build();
                } catch (JSONException e3) {
                    e = e3;
                    str3 = null;
                }
            } catch (IOException e4) {
                return INetworkClient.Result.newBuilder().setException(e4).build();
            } catch (Exception e5) {
                return INetworkClient.Result.newBuilder().setException(e5).build();
            }
        }
    }

    public hp(Context context, boolean z2, long j2, JSONObject jSONObject, Looper looper) {
        this.f24705a = null;
        this.eb = false;
        this.cx = 0L;
        this.jx = context;
        this.lv = jSONObject;
        this.cx = j2 > 0 ? j2 * 1000 : -1L;
        if (looper != null) {
            this.f24705a = new ud(looper, this);
            this.eb = true;
        } else if (this.f24705a == null) {
            this.f24705a = ((r) j.getService("thread_service")).obtainHandler(this, "tt-live-video-player");
        }
        hp(z2);
    }

    public static /* synthetic */ int xs(hp hpVar) {
        int i2 = hpVar.f24712n;
        hpVar.f24712n = i2 + 1;
        return i2;
    }

    @Override // com.byazt.um.eb
    public void addIVideoPlayerCallback(eb.hp hpVar) {
        if (hpVar == null) {
            return;
        }
        for (WeakReference<eb.hp> weakReference : this.f24711l) {
            if (weakReference != null && weakReference.get() == hpVar) {
                return;
            }
        }
        this.f24711l.add(new WeakReference<>(hpVar));
    }

    @Override // com.byazt.um.eb
    public int getBufferCount() {
        return this.f24712n;
    }

    @Override // com.byazt.um.eb
    public String getCodec() {
        return "";
    }

    @Override // com.byazt.um.eb
    public long getCurrentPosition() {
        return this.f24706b;
    }

    @Override // com.byazt.um.eb
    public SurfaceHolder getSurfaceHolder() {
        return this.f24713o;
    }

    @Override // com.byazt.um.eb
    public SurfaceTexture getSurfaceTexture() {
        return this.f24707d;
    }

    @Override // com.byazt.um.eb
    public long getTotalBufferTime() {
        return this.ec;
    }

    @Override // com.byazt.um.eb
    public int getUpdateProgressInterval() {
        return this.wv;
    }

    @Override // com.byazt.um.eb
    public long getVideoDuration() {
        return this.cx;
    }

    @Override // com.byazt.um.eb
    public int getVideoHeight() {
        return this.f24719w;
    }

    @Override // com.byazt.um.eb
    public int getVideoWidth() {
        return this.f24709j;
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        eb.hp hpVar;
        eb.hp hpVar2;
        try {
            switch (message.what) {
                case 100:
                    for (WeakReference<eb.hp> weakReference : this.f24711l) {
                        if (weakReference != null && (hpVar = weakReference.get()) != null) {
                            hpVar.onStart(this);
                        }
                    }
                    play();
                    this.f24718v = true;
                    break;
                case 101:
                    ILivePlayer iLivePlayer = this.hp;
                    if (iLivePlayer != null) {
                        try {
                            iLivePlayer.stop();
                            for (WeakReference<eb.hp> weakReference2 : this.f24711l) {
                                if (weakReference2 != null && (hpVar2 = weakReference2.get()) != null) {
                                    hpVar2.onPause(this);
                                }
                            }
                        } catch (Throwable unused) {
                        }
                        this.f24717u = true;
                        break;
                    }
                    break;
                case 102:
                    ILivePlayer iLivePlayer2 = this.hp;
                    if (iLivePlayer2 != null) {
                        try {
                            iLivePlayer2.reset();
                        } catch (Throwable unused2) {
                        }
                        this.f24717u = true;
                        break;
                    }
                    break;
                case 103:
                    ILivePlayer iLivePlayer3 = this.hp;
                    if (iLivePlayer3 != null) {
                        try {
                            iLivePlayer3.release();
                        } catch (Throwable unused3) {
                        }
                        this.gu = true;
                        this.f24717u = true;
                        break;
                    }
                    break;
                case 105:
                    ILivePlayer iLivePlayer4 = this.hp;
                    if (iLivePlayer4 != null) {
                        try {
                            iLivePlayer4.stop();
                        } catch (Throwable unused4) {
                        }
                        this.f24717u = true;
                        break;
                    }
                    break;
                case 107:
                    if (this.hp != null && this.hq != null) {
                        String url = this.hq.getUrl();
                        hp(url);
                        this.hp.setStreamInfo(url);
                        this.f24708e = true;
                        this.f24712n = 0;
                        break;
                    }
                    break;
                case 110:
                    ILivePlayer iLivePlayer5 = this.hp;
                    if (iLivePlayer5 != null) {
                        SurfaceHolder surfaceHolder = (SurfaceHolder) message.obj;
                        iLivePlayer5.setSurfaceHolder(surfaceHolder);
                        this.hp.setSurface(surfaceHolder.getSurface());
                        this.f24714q.set(true);
                        if (this.f24716s.get()) {
                            hp();
                            break;
                        }
                    }
                    break;
                case 111:
                    ILivePlayer iLivePlayer6 = this.hp;
                    if (iLivePlayer6 != null) {
                        iLivePlayer6.setSurface(new Surface(this.f24707d));
                        this.f24714q.set(true);
                        if (this.f24716s.get()) {
                            hp();
                            break;
                        }
                    }
                    break;
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    @Override // com.byazt.um.eb
    public boolean isCompleted() {
        return this.zy;
    }

    @Override // com.byazt.um.eb
    public boolean isFirstFrameSuccess() {
        return this.di;
    }

    @Override // com.byazt.um.eb
    public boolean isLooping() {
        return false;
    }

    @Override // com.byazt.um.eb
    public boolean isPaused() {
        return this.f24717u;
    }

    @Override // com.byazt.um.eb
    public boolean isPlaying() {
        ILivePlayer iLivePlayer = this.hp;
        if (iLivePlayer == null) {
            return false;
        }
        try {
            return iLivePlayer.isPlaying();
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.byazt.um.eb
    public boolean isPrepared() {
        return this.f24710k;
    }

    @Override // com.byazt.um.eb
    public boolean isReleased() {
        return this.gu;
    }

    @Override // com.byazt.um.eb
    public boolean isStarted() {
        return this.f24718v;
    }

    @Override // com.byazt.um.eb
    public void pause() {
        getCurrentPosition();
        Handler handler = this.f24705a;
        if (handler != null) {
            handler.removeCallbacks(this.dy);
            handler.sendEmptyMessage(101);
        }
    }

    @Override // com.byazt.um.eb
    public void play() {
        Handler handler = this.f24705a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.byazt.qh.hp.5
                @Override // java.lang.Runnable
                public void run() {
                    eb.hp hpVar;
                    if (hp.this.hp == null || hp.this.isPlaying()) {
                        return;
                    }
                    try {
                        hp.this.hp.play();
                        hp hpVar2 = hp.this;
                        hpVar2.setQuietPlay(hpVar2.pu);
                        for (WeakReference weakReference : hp.this.f24711l) {
                            if (weakReference != null && (hpVar = (eb.hp) weakReference.get()) != null) {
                                hpVar.onResume(hp.this);
                            }
                        }
                    } catch (Throwable unused) {
                    }
                    hp.this.f24717u = false;
                }
            });
        }
    }

    @Override // com.byazt.um.eb
    public void release() {
        Handler handler = this.f24705a;
        if (handler != null) {
            handler.removeCallbacks(this.dy);
            handler.sendEmptyMessage(103);
            jx();
        }
    }

    @Override // com.byazt.um.eb
    public void removeIVideoPlayerCallback(eb.hp hpVar) {
        if (hpVar == null) {
            return;
        }
        Iterator<WeakReference<eb.hp>> it = this.f24711l.iterator();
        while (it.hasNext()) {
            WeakReference<eb.hp> next = it.next();
            if (next != null && next.get() == hpVar) {
                it.remove();
            }
        }
    }

    @Override // com.byazt.um.eb
    public void reset() {
        j();
        Handler handler = this.f24705a;
        if (handler != null) {
            handler.removeCallbacks(this.dy);
            handler.sendEmptyMessage(102);
        }
    }

    @Override // com.byazt.um.eb
    public void restart() {
        this.f24712n = 0;
        this.ec = 0L;
        this.ns = 0L;
        start(true, 0L, false);
    }

    @Override // com.byazt.um.eb
    public void seekTo(long j2) {
    }

    @Override // com.byazt.um.eb
    public void setDataSource(zy zyVar) {
        if (zyVar == null) {
            return;
        }
        this.hq = zyVar;
        zyVar.getUrl();
        Handler handler = this.f24705a;
        if (handler != null) {
            handler.sendEmptyMessage(107);
        }
    }

    @Override // com.byazt.um.eb
    public void setDisplay(SurfaceHolder surfaceHolder) {
        this.f24713o = surfaceHolder;
        Handler handler = this.f24705a;
        if (handler != null) {
            handler.obtainMessage(110, surfaceHolder).sendToTarget();
        }
    }

    @Override // com.byazt.um.eb
    public void setLoop(boolean z2) {
    }

    @Override // com.byazt.um.eb
    public void setPlaySpeedRatio(float f2) {
    }

    @Override // com.byazt.um.eb
    public void setQuietPlay(boolean z2) {
        this.pu = z2;
        ILivePlayer iLivePlayer = this.hp;
        if (iLivePlayer != null) {
            try {
                iLivePlayer.setMute(Boolean.valueOf(z2));
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.um.eb
    public void setSeekMode(int i2) {
    }

    @Override // com.byazt.um.eb
    public void setSurface(SurfaceTexture surfaceTexture) {
        this.f24707d = surfaceTexture;
        Handler handler = this.f24705a;
        if (handler != null) {
            handler.obtainMessage(111, surfaceTexture).sendToTarget();
        }
    }

    @Override // com.byazt.um.eb
    public void setSurfaceValid(boolean z2) {
        this.jl = z2;
    }

    @Override // com.byazt.um.eb
    public void setUpdateProgressInterval(int i2) {
        this.wv = i2;
    }

    @Override // com.byazt.um.eb
    public void start(boolean z2, final long j2, final boolean z3) {
        Handler handler;
        if (this.f24714q.get() && this.f24708e && this.hp != null) {
            this.f24706b = j2;
            this.xs = System.currentTimeMillis();
            setQuietPlay(z3);
            Handler handler2 = this.f24705a;
            if (handler2 != null) {
                handler2.sendEmptyMessage(100);
            }
        } else {
            hp(new Runnable() { // from class: com.byazt.qh.hp.3
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.f24706b = j2;
                    hp.this.xs = System.currentTimeMillis();
                    hp.this.setQuietPlay(z3);
                    if (hp.this.f24705a != null) {
                        hp.this.f24705a.sendEmptyMessage(100);
                    }
                }
            });
        }
        this.f24716s.set(true);
        if (!this.f24714q.get() || (handler = this.f24705a) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.byazt.qh.hp.4
            @Override // java.lang.Runnable
            public void run() {
                hp.this.hp();
            }
        });
    }

    @Override // com.byazt.um.eb
    public void stop() {
        getCurrentPosition();
        Handler handler = this.f24705a;
        if (handler != null) {
            handler.removeCallbacks(this.dy);
            handler.sendEmptyMessage(105);
        }
    }

    private void j() {
        this.f24708e = false;
        this.zy = false;
        this.f24710k = false;
        this.f24718v = false;
        this.f24717u = true;
    }

    private void jx() {
        Handler handler = this.f24705a;
        if (handler == null || handler.getLooper() == null) {
            return;
        }
        this.f24705a.post(new Runnable() { // from class: com.byazt.qh.hp.6
            @Override // java.lang.Runnable
            public void run() {
                if (hp.this.f24705a == null || hp.this.f24705a.getLooper() == null) {
                    return;
                }
                try {
                    hp.this.f24707d = null;
                    hp.this.f24713o = null;
                    if (hp.this.eb) {
                        hp.this.f24705a.removeCallbacksAndMessages(null);
                    } else {
                        ((r) j.getService("thread_service")).recycleHandler(hp.this.f24705a);
                    }
                    hp.this.f24705a = null;
                } catch (Throwable unused) {
                }
            }
        });
    }

    private synchronized void l() {
        try {
            if (this.f24715r) {
                return;
            }
            this.f24715r = true;
            ArrayList arrayList = new ArrayList(this.nu);
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                ((Runnable) obj).run();
            }
            this.nu.clear();
            this.f24715r = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(long j2, long j3) {
        long j4;
        long j5;
        eb.hp hpVar;
        for (WeakReference<eb.hp> weakReference : this.f24711l) {
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

    private void hp(final boolean z2) {
        Handler handler = this.f24705a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.byazt.qh.hp.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ILiveSettingBundle iLiveSettingBundle = new ILiveSettingBundle() { // from class: com.byazt.qh.hp.2.1
                            /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
                            /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
                            @Override // com.bykv.vk.component.ttvideo.ILiveSettingBundle
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public <T> T getSettingsValueForKey(java.lang.String r2, T r3) {
                                /*
                                    r1 = this;
                                    r2.getClass()
                                    java.lang.String r0 = "live_enable_close_play_retry"
                                    boolean r0 = r2.equals(r0)
                                    if (r0 != 0) goto L14
                                    java.lang.String r0 = "live_sdk_cancel_sdk_dns_fail_retry"
                                    boolean r2 = r2.equals(r0)
                                    if (r2 != 0) goto L23
                                    return r3
                                L14:
                                    java.lang.Class r2 = r3.getClass()
                                    java.lang.Class<java.lang.Integer> r0 = java.lang.Integer.class
                                    if (r2 != r0) goto L23
                                    java.lang.String r2 = "1"
                                    java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                                    goto L24
                                L23:
                                    r2 = r3
                                L24:
                                    java.lang.Class r3 = r3.getClass()
                                    java.lang.Class<java.lang.Boolean> r0 = java.lang.Boolean.class
                                    if (r3 != r0) goto L2e
                                    java.lang.Boolean r2 = java.lang.Boolean.TRUE
                                L2e:
                                    return r2
                                */
                                throw new UnsupportedOperationException("Method not decompiled: com.byazt.qh.hp.AnonymousClass2.AnonymousClass1.getSettingsValueForKey(java.lang.String, java.lang.Object):java.lang.Object");
                            }
                        };
                        hp hpVar = hp.this;
                        hpVar.hp = VideoLiveManager.newBuilder(hpVar.jx).setProjectKey("pangle_ad_live").setNetworkClient(new C0348hp()).setForceHttpDns(false).setForceTTNetHttpDns(false).setSettingsBundle(iLiveSettingBundle).setPlayerType(1).setListener(hp.this.ky).build();
                        hp.this.hp.setIntOption(69, z2 ? 1 : 0);
                        hp.this.hp.setStringOption(72, com.byazt.rz.l.hp(hp.this.jx, null).getAbsolutePath() + "/pangle_live/");
                    } catch (Exception e2) {
                        com.byazt.qm.l.hp("TTLiveVideoPlayer", e2.getMessage());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void hp() {
        ArrayList<Runnable> arrayList = this.nu;
        if (arrayList != null && !arrayList.isEmpty()) {
            l();
        }
    }

    private synchronized void hp(Runnable runnable) {
        this.nu.add(runnable);
    }

    private void hp(String str) {
        String str2 = LiveConfigKey.LOW;
        try {
            JSONObject jSONObject = this.lv;
            if (jSONObject == null) {
                return;
            }
            int iOptInt = jSONObject.optInt(cl.f49062q);
            String strOptString = jSONObject.optString("appids");
            if (iOptInt == 1 && !TextUtils.isEmpty(strOptString)) {
                JSONObject jSONObject2 = new JSONObject(str);
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject(f.f5776Z);
                JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("data");
                if (jSONObjectOptJSONObject == null || jSONObjectOptJSONObject2 == null || !strOptString.contains(jSONObjectOptJSONObject.optString("app_id"))) {
                    return;
                }
                if (jSONObjectOptJSONObject2.optJSONObject(LiveConfigKey.UHD) != null) {
                    str2 = LiveConfigKey.UHD;
                } else if (jSONObjectOptJSONObject2.optJSONObject(LiveConfigKey.HIGH) != null) {
                    str2 = LiveConfigKey.HIGH;
                } else if (jSONObjectOptJSONObject2.optJSONObject(LiveConfigKey.STANDARD) != null) {
                    str2 = LiveConfigKey.STANDARD;
                } else if (jSONObjectOptJSONObject2.optJSONObject(LiveConfigKey.LOW) == null) {
                    str2 = null;
                }
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                this.hp.setStringOption(43, str2);
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
    }
}
