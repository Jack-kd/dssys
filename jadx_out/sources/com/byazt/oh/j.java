package com.byazt.oh;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.ay.v;
import com.byazt.dnb.jl;
import com.byazt.dth.TTViewStub;
import com.byazt.jo.xs;
import com.byazt.jz.d;
import com.byazt.jz.dy;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.kgm.LayoutVideoDetail;
import com.byazt.lf.k;
import com.byazt.na.LottieAnimationView;
import com.byazt.nc.hp;
import com.byazt.nk.TTProgressBar;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.qt.zy;
import com.byazt.su.jx;
import com.byazt.su.l;
import com.byazt.tv.UpieVideoView;
import com.byazt.um.eb;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.xci.yj;
import com.byazt.ymw.e;
import com.byazt.ymw.u;
import com.byazt.ymw.ud;
import com.byazt.ymw.vv;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.android.metrics.LiveMetrics;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_STREAM_INFO, 38})
/* loaded from: classes3.dex */
public class j extends com.byazt.fbd.hp {
    public final boolean dy;
    public int ea;

    /* renamed from: f, reason: collision with root package name */
    public int f24078f;
    public WeakReference<jx.l> ky;
    public String lv;

    /* renamed from: m, reason: collision with root package name */
    public WeakReference<hp> f24079m;
    public WeakReference<jx.j> mp;
    public long nr;
    public jx.hp nu;
    public boolean pu;

    /* renamed from: r, reason: collision with root package name */
    public boolean f24081r;
    public Map<String, Object> vq;
    public int wt;
    public ViewGroup wv;

    /* renamed from: y, reason: collision with root package name */
    public int f24082y;
    public int yr;
    public long zx;
    public long hq = 0;
    public long ud = 0;
    public boolean xh = false;

    /* renamed from: ms, reason: collision with root package name */
    public boolean f24080ms = false;
    public boolean as = true;
    public volatile boolean kg = false;
    public int rz = 0;
    public boolean nd = false;
    public boolean hd = true;
    public boolean su = false;
    public boolean rv = false;
    public boolean qu = false;
    public boolean an = false;
    public eb.hp pc = new eb.hp() { // from class: com.byazt.oh.j.1
        @Override // com.byazt.um.eb.hp
        public void onBufferEnd(com.byazt.um.eb ebVar, int i2) {
            j.this.hp.post(new Runnable() { // from class: com.byazt.oh.j.1.8
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.f19666w != null) {
                        j.this.f19666w.l();
                    }
                    j.this.hp.removeCallbacks(j.this.f24077d);
                    j.this.nd = false;
                }
            });
        }

        @Override // com.byazt.um.eb.hp
        public void onBufferStart(com.byazt.um.eb ebVar, int i2, int i3, int i4) {
            com.byazt.rk.jx.j(j.this.an());
            j.this.hp.post(new Runnable() { // from class: com.byazt.oh.j.1.7
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.f19666w != null) {
                        j.this.f19666w.cx();
                        j.this.hp.postDelayed(j.this.f24077d, 8000L);
                        j.this.nd = true;
                    }
                }
            });
        }

        @Override // com.byazt.um.eb.hp
        public void onBufferingUpdate(com.byazt.um.eb ebVar, int i2) {
        }

        @Override // com.byazt.um.eb.hp
        public void onCompletion(com.byazt.um.eb ebVar) throws JSONException {
            com.byazt.rk.jx.a(j.this.an());
            j.this.hp.post(new Runnable() { // from class: com.byazt.oh.j.1.1
                @Override // java.lang.Runnable
                public void run() {
                    j.this.m();
                }
            });
            j.this.hp(4);
            j.this.l(4);
        }

        @Override // com.byazt.um.eb.hp
        public void onError(com.byazt.um.eb ebVar, final com.byazt.um.jx jxVar) {
            com.byazt.rk.jx.jx(j.this.an(), 1);
            j.this.hp.post(new Runnable() { // from class: com.byazt.oh.j.1.4
                /* JADX WARN: Removed duplicated region for block: B:27:0x00d7  */
                /* JADX WARN: Removed duplicated region for block: B:30:0x00ec  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void run() {
                    /*
                        Method dump skipped, instructions count: 327
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.byazt.oh.j.AnonymousClass1.AnonymousClass4.run():void");
                }
            });
            j.this.hp(jxVar.getCode(), jxVar.getMsg());
        }

        @Override // com.byazt.um.eb.hp
        public void onMonitorLog(com.byazt.um.eb ebVar, JSONObject jSONObject, String str) throws JSONException {
            if (s.u().f()) {
                jSONObject.optString("start");
                jSONObject.optString("sdk_dns_analysis_end");
                jSONObject.optString("player_dns_analysis_end");
                jSONObject.optString("tcp_connect_end");
                jSONObject.optString("tcp_first_package_end");
                jSONObject.optString("first_video_package_end");
                jSONObject.optString("first_frame_video_decode_end");
                jSONObject.optString("first_frame_render_end");
                jSONObject.optLong("first_frame_render_end");
                jSONObject.optLong("start");
            }
            com.byazt.jdb.j.hp((Context) j.this.f19662q.get(), j.this.f19653a, j.this.lv, "pangle_live_sdk_monitor", jSONObject);
        }

        @Override // com.byazt.um.eb.hp
        public void onPause(com.byazt.um.eb ebVar) {
            j.this.qu = true;
            com.byazt.rk.jx.w(j.this.an());
        }

        @Override // com.byazt.um.eb.hp
        public void onPlayPositionUpdate(com.byazt.um.eb ebVar, final long j2, final long j3) {
            if (j.this.qu && j.this.an) {
                j.this.qu = false;
                j.this.an = false;
                com.byazt.rk.jx.l(j.this.an(), 2);
            }
            if (Math.abs(j2 - j.this.eb) < 50) {
                return;
            }
            j.this.hp.post(new Runnable() { // from class: com.byazt.oh.j.1.9
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.cx != null) {
                        j.this.cx.hp(j2, j3);
                    }
                    j.this.hp(j2, j3);
                    j.this.l(j2, j3);
                }
            });
        }

        @Override // com.byazt.um.eb.hp
        public void onPrepared(com.byazt.um.eb ebVar) {
            if (!j.this.rv) {
                j.this.rv = true;
                com.byazt.rk.jx.jx(j.this.an());
            }
            if (com.byazt.we.hp.hp(j.this.f19653a)) {
                j.this.f19653a.jx(ebVar.getCodec());
            }
            if (!j.this.dy || jl.hp(j.this.f19653a)) {
                j.this.hd();
            }
            j.this.hp.post(new Runnable() { // from class: com.byazt.oh.j.1.3
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.mp != null && j.this.mp.get() != null) {
                        ((jx.j) j.this.mp.get()).onVideoLoad();
                    }
                    if (j.this.f19666w != null && (!j.this.zx() || !sz.l().be())) {
                        j.this.f19666w.l();
                    }
                    j.this.hp.removeCallbacks(j.this.f24077d);
                }
            });
        }

        @Override // com.byazt.um.eb.hp
        public void onRelease(com.byazt.um.eb ebVar) {
            com.byazt.rk.jx.jx(j.this.an(), 2);
            j.this.su();
        }

        @Override // com.byazt.um.eb.hp
        public void onRenderStart(com.byazt.um.eb ebVar, long j2) {
            if (!j.this.su) {
                j.this.su = true;
                com.byazt.rk.jx.l(j.this.an(), 1);
            }
            j.this.hp.post(new Runnable() { // from class: com.byazt.oh.j.1.2
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.f19666w != null) {
                        if (j.this.zx() && sz.l().be()) {
                            j.this.f19666w.d();
                        } else {
                            j.this.f19666w.l();
                        }
                        j.this.hp.removeCallbacks(j.this.f24077d);
                        j.this.nd = false;
                    }
                    if (j.this.f24079m != null && j.this.f24079m.get() != null) {
                        ((hp) j.this.f24079m.get()).I_();
                    }
                    j.this.hp.removeCallbacks(j.this.f24077d);
                }
            });
            j.this.hd();
            j.this.zx = System.currentTimeMillis();
            j.this.qu();
        }

        @Override // com.byazt.um.eb.hp
        public void onResume(com.byazt.um.eb ebVar) {
            j.this.an = true;
        }

        @Override // com.byazt.um.eb.hp
        public void onSeekCompletion(com.byazt.um.eb ebVar, boolean z2) {
            j.this.hp.post(new Runnable() { // from class: com.byazt.oh.j.1.5
                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.f19666w != null) {
                        j.this.f19666w.l();
                    }
                }
            });
        }

        @Override // com.byazt.um.eb.hp
        public void onStart(com.byazt.um.eb ebVar) {
        }

        @Override // com.byazt.um.eb.hp
        public void onVideoSizeChanged(com.byazt.um.eb ebVar, final int i2, final int i3) {
            j.this.hp.post(new Runnable() { // from class: com.byazt.oh.j.1.6
                @Override // java.lang.Runnable
                public void run() {
                    j.this.l(i2, i3);
                }
            });
        }
    };
    public int fi = 0;

    /* renamed from: d, reason: collision with root package name */
    public Runnable f24077d = new Runnable() { // from class: com.byazt.oh.j.6
        @Override // java.lang.Runnable
        public void run() {
            if (j.this.f19666w != null) {
                j.this.f19666w.hp2(j.this.f19653a, j.this.f19662q, false);
                j.this.f19666w.l();
                j.this.jx(true);
                u.l("NativeVideoController", "出错后展示结果页、、、、、、、showAdCard");
            }
        }
    };
    public final com.byazt.yb.jx rk = new com.byazt.yb.jx() { // from class: com.byazt.oh.j.8
        @Override // com.byazt.yb.jx
        public void onNetworkChanged(Context context, Intent intent, boolean z2, int i2) {
            j.this.jx(context, i2);
        }
    };
    public boolean ru = false;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_STREAM_INFO, 263})
    /* renamed from: com.byazt.oh.j$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[v.hp.values().length];
            hp = iArr;
            try {
                iArr[v.hp.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[v.hp.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[v.hp.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface hp {
        void I_();

        void hp(int i2);

        void q();
    }

    public j(Context context, ViewGroup viewGroup, mp mpVar, String str, boolean z2, boolean z3, boolean z4) {
        this.lv = com.byazt.ih.l.AD_TAG_FEED;
        this.f24081r = false;
        this.pu = true;
        this.f24078f = 0;
        this.yr = 0;
        this.wt = 1;
        this.wt = vv.jx(context);
        hp(z2);
        this.lv = str;
        try {
            this.f24078f = viewGroup.getWidth();
            this.yr = viewGroup.getHeight();
        } catch (Throwable unused) {
        }
        this.wv = viewGroup;
        this.f19662q = new WeakReference<>(context);
        this.f19653a = mpVar;
        hp(context);
        this.dy = true;
        this.f24081r = z3;
        this.pu = z4;
    }

    @Override // com.byazt.fbd.hp
    public boolean d() {
        return true;
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.jx.jx(an(), 3);
    }

    @Override // com.byazt.fbd.hp, com.byazt.su.jx
    public boolean j() {
        return false;
    }

    @Override // com.byazt.su.jx
    public boolean jx() {
        return false;
    }

    @Override // com.byazt.fbd.hp, com.byazt.su.jx
    public boolean w() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String an() {
        mp mpVar = this.f19653a;
        if (mpVar == null) {
            return null;
        }
        return mpVar.di();
    }

    private void ea() {
        if (wv()) {
            q(!this.sz);
            if (this.f19662q.get() instanceof Activity) {
                a aVar = this.f19666w;
                if (aVar != null) {
                    aVar.l(this.wv);
                    this.f19666w.jx(false);
                }
                w(1);
                WeakReference<jx.l> weakReference = this.ky;
                jx.l lVar = weakReference != null ? weakReference.get() : null;
                if (lVar != null) {
                    lVar.hp(this.sz);
                }
            }
        }
    }

    private boolean f() {
        return this.fi > 0 && ky.j(this.f19653a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hd() {
        if (!this.f19660n.hp(2) || f()) {
            xs.hp hpVar = new xs.hp();
            if (zx()) {
                this.as = true;
            }
            hpVar.l(this.as);
            hpVar.jx(k());
            this.f19660n.jx(2);
            com.byazt.qvz.j.hp(this.f19666w, hpVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j(int i2, int i3) {
        boolean z2 = i2 == -1010 || i2 == -1007 || i2 == -1004 || i2 == -110 || i2 == 100 || i2 == 200 || i2 == 60008;
        if (i3 == 1 || i3 == 700 || i3 == 800) {
            return true;
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        a aVar;
        this.fi++;
        if (wv() && (aVar = this.f19666w) != null) {
            aVar.l();
            jx.hp hpVar = this.nu;
            if (hpVar != null) {
                hpVar.hp(this.ud, com.byazt.xm.hp.hp(this.eb, this.f19664u));
            }
            this.ud = System.currentTimeMillis() - this.hq;
            this.f19666w.w(true);
            boolean zHp = com.byazt.we.hp.hp(this.f19653a);
            int iKu = this.f19653a.ku();
            boolean z2 = iKu <= 0;
            boolean z3 = !z2 && this.fi >= iKu;
            boolean zJ = ky.j(this.f19653a);
            if (!zJ || z3 || zHp) {
                this.f19666w.hp2(this.f19653a, this.f19662q, true);
            }
            if (!this.f19660n.hp(64) || f() || yr()) {
                this.f19660n.jx(64);
                long j2 = this.f19664u;
                l(j2, j2);
                long j3 = this.f19664u;
                this.eb = j3;
                this.f19663s = j3;
                xs.hp hpVar2 = new xs.hp();
                hpVar2.hp(gu());
                hpVar2.jx(k());
                hpVar2.l(jl());
                hpVar2.a(zy());
                com.byazt.qvz.j.j(this.f19666w, hpVar2);
            }
            if (!this.jl && this.sz) {
                w(this.f19666w, (View) null);
            }
            this.ec = true;
            if (zHp) {
                return;
            }
            if (zJ && (z2 || this.fi < iKu)) {
                di();
                return;
            }
            boolean z4 = k() / 1000 < 10;
            if (jl.hp(this.f19653a) && z4 && this.fi < 2) {
                di();
            }
        }
    }

    private boolean mp() {
        int i2;
        com.byazt.um.eb jVar;
        mp mpVar = this.f19653a;
        if (com.byazt.nwu.hp.l(mpVar)) {
            com.byazt.cw.l lVarCx = cx();
            if (lVarCx == null) {
                if (this.pc != null) {
                    StringBuilder sb = new StringBuilder("创建lottie播放器时，iRenderView为null, mediaLayout is null: ");
                    sb.append(this.f19666w == null);
                    this.pc.onError(null, new com.byazt.tw.jx(60008, AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2, sb.toString()));
                }
                u.l("tag_video_play", "[video] invoke NativeVideoController#playVideo error: iRenderView为null");
                return false;
            }
            int iJl = ky.jl(this.f19653a);
            this.di = hp("ad");
            this.f19657j = new com.byazt.tv.hp(lVarCx, com.byazt.nwu.hp.q(mpVar), new com.byazt.jc.j(String.valueOf(iJl), this.di), df.vv(mpVar), hp("assist"));
            i2 = 1;
        } else if (com.byazt.nwu.hp.jx(mpVar)) {
            com.byazt.cw.l lVarCx2 = cx();
            if (lVarCx2 == null) {
                if (this.pc != null) {
                    StringBuilder sb2 = new StringBuilder("创建Upie播放器时，iRenderView为null, mediaLayout is null: ");
                    sb2.append(this.f19666w == null);
                    this.pc.onError(null, new com.byazt.tw.jx(60008, AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2, sb2.toString()));
                }
                u.l("tag_video_play", "[video] invoke NativeVideoController#playVideo error: iRenderView为null");
                return false;
            }
            int iJl2 = ky.jl(this.f19653a);
            if (d.w() && this.ns.getPlayerType() == 1) {
                jVar = com.byazt.cwe.l.hp().createTTVideoPlayer(sz.getContext(), String.valueOf(iJl2));
            } else {
                this.di = hp("ad");
                jVar = new com.byazt.jc.j(String.valueOf(iJl2), this.di);
            }
            this.f19657j = new com.byazt.tv.l(jVar, com.byazt.nwu.hp.q(mpVar), hp("assist"), lVarCx2);
            i2 = 2;
        } else {
            int iJl3 = ky.jl(this.f19653a);
            if (com.byazt.we.hp.hp(this.f19653a)) {
                this.f19657j = com.byazt.cwe.l.hp().createTTLiveVideoPlayer(sz.getContext(), d(), (long) df.eb(this.f19653a), sz.l().ku(), null);
                i2 = 3;
            } else if (d.w() && this.ns.getPlayerType() == 1) {
                this.f19657j = com.byazt.cwe.l.hp().createTTVideoPlayer(sz.getContext(), String.valueOf(iJl3));
                i2 = 4;
            } else {
                this.di = hp("ad");
                this.f19657j = new com.byazt.jc.j(String.valueOf(iJl3), this.di);
                i2 = 5;
            }
        }
        if (mpVar != null) {
            com.byazt.rk.jx.hp(mpVar, String.valueOf(ky.zy(this.f19653a)), ky.jl(this.f19653a), i2, this.f19653a.di());
        }
        return true;
    }

    private void nd() {
        com.byazt.tw.a aVar;
        com.byazt.um.eb ebVar = this.f19657j;
        if (ebVar != null) {
            if (!ebVar.isPaused() || rz()) {
                if (rz()) {
                    this.eb = s.u().rv();
                    s.u().hp(-1L);
                    this.f19657j.seekTo(this.eb);
                    this.f19657j.play();
                } else {
                    this.ea = 1;
                    this.su = false;
                    this.f19657j.start(false, this.eb, this.xs);
                }
            } else if (this.f19656e || (((aVar = this.ns) != null && aVar.isAudio()) || com.byazt.nwu.hp.l(this.f19653a))) {
                nu();
            } else {
                l(this.f19661o);
            }
        }
        if (this.f19660n.hp(2)) {
            xs.hp hpVar = new xs.hp();
            hpVar.hp(gu());
            hpVar.jx(k());
            hpVar.l(jl());
            l(vv(), hpVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void qu() {
        if (com.byazt.we.hp.hp(this.f19653a) && !TextUtils.isEmpty(this.lv)) {
            boolean zHp = this.f19660n.hp(1024);
            long jLongValue = this.f19660n.l(1).longValue();
            if (zHp) {
                return;
            }
            this.f19660n.jx(1024);
            if (this.lv.equals(com.byazt.ih.l.AD_TAG_FEED)) {
                com.byazt.jdb.j.hp(this.f19653a, com.byazt.ih.l.AD_TAG_FEED, System.currentTimeMillis() - jLongValue, com.byazt.qvz.j.hp(this.f19666w));
            } else if (this.lv.equals("draw_ad")) {
                com.byazt.jdb.j.hp(this.f19653a, "draw_ad", System.currentTimeMillis() - jLongValue, com.byazt.qvz.j.hp(this.f19666w));
            }
        }
    }

    private void rv() {
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.j(0);
            this.f19666w.hp(false, false);
            this.f19666w.jx(false);
            this.f19666w.w();
            this.f19666w.eb();
        }
    }

    private boolean rz() {
        return this.jl && s.u().rv() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void su() {
        a aVar;
        if (!this.kg || (aVar = this.f19666w) == null || aVar.jx() == null) {
            return;
        }
        this.kg = false;
        this.f19666w.jx().post(new Runnable() { // from class: com.byazt.oh.j.7
            @Override // java.lang.Runnable
            public void run() throws JSONException {
                if (j.this.ns == null) {
                    return;
                }
                j.this.ns.setCid(j.this.f19653a.j());
                j.this.ns.setWidth(j.this.f24078f);
                j.this.ns.setHeight(j.this.yr);
                j.this.ns.setPlayTrackUrls(null);
                j.this.ns.setLogExtra(j.this.f19653a.w_());
                j.this.ns.setCurrent(0L);
                j.this.ns.setQuiet(j.this.ec());
                j.this.ns.setCacheParentDir(j.this.ns.getCacheParentDir());
                j jVar = j.this;
                jVar.hp(jVar.ns);
                j.this.jx(false);
            }
        });
    }

    private boolean vq() {
        mp mpVar = this.f19653a;
        return mpVar != null && mpVar.h() == 1 && "draw_ad".equals(this.lv) && this.wv != null;
    }

    private boolean y() {
        yj yjVarUf;
        if (!zx()) {
            return false;
        }
        mp mpVar = this.f19653a;
        return mpVar == null || (yjVarUf = mpVar.uf()) == null || yjVarUf.hp() != 0;
    }

    private boolean yr() {
        return this.fi > 0 && jl.hp(this.f19653a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zx() {
        return TextUtils.equals(this.lv, "splash_ad") || TextUtils.equals(this.lv, "cache_splash_ad");
    }

    @Override // com.byazt.su.jx
    public void a() {
        com.byazt.um.eb ebVar = this.f19657j;
        if (ebVar != null) {
            ebVar.pause();
        }
        if ((!this.f19660n.hp(64) || f()) && this.f19660n.hp(2)) {
            xs.hp hpVar = new xs.hp();
            hpVar.hp(gu());
            hpVar.jx(k());
            hpVar.l(jl());
            hp(this.f19666w, hpVar);
        }
    }

    public void as() {
        if (this.ru || !this.hd) {
            return;
        }
        this.ru = true;
        ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).registerNetworkMonitor(this.rk);
    }

    public boolean b() {
        com.byazt.um.eb ebVar = this.f19657j;
        return ebVar == null || ebVar.isCompleted();
    }

    public com.byazt.cw.l cx() {
        a aVar;
        WeakReference<Context> weakReference = this.f19662q;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        if ((this.f19662q.get().getResources().getConfiguration().orientation == 1 || com.byazt.nwu.hp.hp(this.f19653a)) && (aVar = this.f19666w) != null) {
            return aVar.xs();
        }
        return null;
    }

    public void di() {
        if (vv.jx(sz.getContext()) == 0) {
            return;
        }
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.hp();
        }
        jx(false);
        if (this.f19657j != null) {
            this.f19660n.hp();
            ky();
            this.ea = 2;
            this.su = false;
            this.f19657j.restart();
            hd();
        }
    }

    @Override // com.byazt.su.jx
    public void e() {
        l(k() == 0 ? -2 : -1);
        com.byazt.um.eb ebVar = this.f19657j;
        if (ebVar != null) {
            ebVar.release();
            this.f19657j = null;
        }
        mp mpVar = this.f19653a;
        int iKu = mpVar == null ? 2 : mpVar.ku();
        boolean z2 = iKu > 0 && this.fi == iKu;
        if (!ky.j(this.f19653a) || z2) {
            try {
                this.f19666w.hp2(this.f19653a, this.f19662q, true);
            } catch (Exception e2) {
                u.l("NativeVideoController", e2.getMessage());
            }
        }
        ud udVar = this.hp;
        if (udVar != null) {
            udVar.removeCallbacksAndMessages(null);
        }
        List<Runnable> list = this.gu;
        if (list != null) {
            list.clear();
        }
        kg();
    }

    @Override // com.byazt.su.jx
    public void eb() {
        com.byazt.um.eb ebVar = this.f19657j;
        if (ebVar != null) {
            ebVar.pause();
        }
    }

    @Override // com.byazt.fbd.hp, com.byazt.su.jx
    public long jl() {
        if (xs() == null) {
            return 0L;
        }
        return xs().getTotalBufferTime();
    }

    public void kg() {
        if (this.ru) {
            this.ru = false;
            try {
                ((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).removeNetworkMonitor(this.rk);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.fbd.hp
    public void ky() {
        if (this.f19662q == null) {
            return;
        }
        this.f19654b = com.byazt.qvz.j.hp();
        com.byazt.tw.l lVar = this.di;
        if (lVar != null) {
            lVar.l(this.f19654b);
        }
        this.f19660n.jx(1);
        com.byazt.qvz.j.hp(this.f19653a, this.f19666w, this.ns, this.as, this.f19654b);
    }

    public boolean ms() {
        com.byazt.um.eb ebVar = this.f19657j;
        return ebVar != null && ebVar.isPlaying();
    }

    @Override // com.byazt.su.jx
    public boolean n() {
        return this.as;
    }

    @Override // com.byazt.su.jx
    public boolean ns() {
        return this.nd;
    }

    @Override // com.byazt.su.jx
    public void q() throws JSONException {
        hp(true, 3);
    }

    @Override // com.byazt.su.jx
    public void s() {
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.hp();
        }
        a aVar2 = this.f19666w;
        if (aVar2 != null) {
            aVar2.b();
        }
        nd();
    }

    @Override // com.byazt.su.jx
    public int v() {
        return com.byazt.xm.hp.hp(this.f19663s, this.f19664u);
    }

    @Override // com.byazt.fbd.hp
    public Map<String, Object> xh() {
        return this.vq;
    }

    @Override // com.byazt.su.jx
    public int zy() {
        if (xs() == null) {
            return 0;
        }
        return xs().getBufferCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean eb(int i2) {
        mp mpVar;
        int iJx = vv.jx(sz.getContext());
        if (iJx == 0) {
            a();
            this.f19665v = true;
            a aVar = this.f19666w;
            if (aVar != null) {
                aVar.hp2(this.f19653a, this.f19662q, false);
            }
        }
        if (iJx != 4 && iJx != 0) {
            a aVar2 = this.f19666w;
            if (aVar2 != null) {
                aVar2.hp();
            }
            a();
            this.f19665v = true;
            this.xh = false;
            a aVar3 = this.f19666w;
            if (aVar3 != null && (mpVar = this.f19653a) != null) {
                return aVar3.hp(i2, df.v(mpVar), this.pu);
            }
        } else if (iJx == 4) {
            this.f19665v = false;
            a aVar4 = this.f19666w;
            if (aVar4 != null) {
                aVar4.sz();
            }
        }
        return true;
    }

    private void jx(com.byazt.tw.a aVar) throws JSONException {
        if (aVar == null) {
            l("model is null");
            return;
        }
        if (this.f19657j != null) {
            mp mpVar = this.f19653a;
            if (mpVar != null) {
                aVar.setCodeId(String.valueOf(ky.zy(mpVar)));
            }
            aVar.setScene(0);
            com.byazt.rk.jx.l(an());
            this.f19657j.setDataSource(aVar);
        }
        this.hq = System.currentTimeMillis();
        if (!TextUtils.isEmpty(aVar.getUrl())) {
            a aVar2 = this.f19666w;
            if (aVar2 != null) {
                aVar2.w(8);
                this.f19666w.w(0);
            }
            boolean zJ = ky.j(this.f19653a);
            boolean zJx = ky.jx(this.f19653a);
            a aVar3 = this.f19666w;
            boolean zL = aVar3 != null ? dy.l(aVar3.hp, 50, 9) : true;
            boolean zY = sz.l().y();
            Runnable runnable = new Runnable() { // from class: com.byazt.oh.j.5
                @Override // java.lang.Runnable
                public void run() {
                    j.this.f19660n.hp();
                    j.this.ky();
                    j.this.hq = System.currentTimeMillis();
                    if (j.this.f19666w != null) {
                        j.this.f19666w.j(0);
                    }
                    j.this.ea = 1;
                    j.this.su = false;
                    j.this.rv = false;
                    com.byazt.rk.jx.hp(j.this.an(), j.this.ea);
                    j.this.f19657j.start(true, j.this.eb, j.this.xs);
                }
            };
            if ((zJ || (zJx && !zY)) && !zL) {
                l(runnable);
                s(true);
                WeakReference<hp> weakReference = this.f24079m;
                if (weakReference != null && weakReference.get() != null) {
                    this.f24079m.get().q();
                }
            } else {
                hp(runnable);
            }
        } else {
            l("url is null");
        }
        if (this.jl) {
            as();
        }
    }

    public void w(int i2) {
        if (wv()) {
            boolean z2 = i2 == 0 || i2 == 8;
            Context context = this.f19662q.get();
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                try {
                    activity.setRequestedOrientation(i2);
                } catch (Throwable unused) {
                }
                if (!z2) {
                    activity.getWindow().setFlags(1024, 1024);
                } else {
                    activity.getWindow().clearFlags(1024);
                }
            }
        }
    }

    public void j(int i2) {
        this.f24082y = i2;
    }

    @Override // com.byazt.su.hp
    public void j(com.byazt.su.l lVar, View view) throws JSONException {
        if (this.sz) {
            q(false);
            a aVar = this.f19666w;
            if (aVar != null) {
                aVar.l(this.wv);
            }
            w(1);
            return;
        }
        hp(1);
        hp(true, 3);
    }

    public void l(mp mpVar) {
        this.f19653a = mpVar;
    }

    private View l(final Context context) {
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(2114387714);
        relativeLayout.setBackgroundColor(-16777216);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout2.setId(2114387900);
        relativeLayout2.setBackgroundColor(0);
        relativeLayout2.setGravity(17);
        relativeLayout2.setLayoutParams(layoutParams);
        relativeLayout.addView(relativeLayout2);
        ImageView imageView = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        imageView.setId(2114387651);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setLayoutParams(layoutParams2);
        relativeLayout2.addView(imageView);
        final TTProgressBar tTProgressBar = new TTProgressBar(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()));
        tTProgressBar.setId(2114387631);
        layoutParams3.addRule(13, -1);
        tTProgressBar.setLayoutParams(layoutParams3);
        com.byazt.ymw.v.hp(context, "tt_normalscreen_loading", new com.byazt.oxb.hp<Bitmap>() { // from class: com.byazt.oh.j.4
            @Override // com.byazt.oxb.hp
            public void hp(Bitmap bitmap) {
                tTProgressBar.setIndeterminateDrawable(com.byazt.vi.w.hp(context, new BitmapDrawable(context.getResources(), bitmap), 0, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL, 0.5f, 0.5f));
            }
        }, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        relativeLayout2.addView(tTProgressBar);
        View viewInflate = new com.byazt.kgm.j().inflate(context);
        viewInflate.setId(2114387688);
        viewInflate.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        relativeLayout.addView(viewInflate);
        ImageView imageView2 = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        imageView2.setId(2114387626);
        layoutParams4.addRule(13, -1);
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        com.byazt.ymw.v.hp(context, "tt_new_play_video", imageView2, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
        imageView2.setVisibility(8);
        imageView2.setLayoutParams(layoutParams4);
        relativeLayout.addView(imageView2);
        TTProgressBar tTProgressBar2 = new TTProgressBar(context, null, R.style.Widget.ProgressBar.Horizontal);
        tTProgressBar2.setIndeterminate(false);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 1.5f, resources.getDisplayMetrics()));
        tTProgressBar2.setMax(100);
        tTProgressBar2.setId(2114387653);
        tTProgressBar2.setBackgroundColor(0);
        tTProgressBar2.setIndeterminateDrawable(null);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#A5FFFFFF"));
        float fJx = xh.jx(context, 1.0f);
        gradientDrawable.setCornerRadius(fJx);
        int iJx = xh.jx(context, 2.0f);
        gradientDrawable.setSize(-1, iJx);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(Color.parseColor("#FFFFFFFF"));
        gradientDrawable2.setCornerRadius(fJx);
        gradientDrawable2.setSize(-1, iJx);
        ClipDrawable clipDrawable = new ClipDrawable(gradientDrawable2, 3, 1);
        GradientDrawable gradientDrawable3 = new GradientDrawable();
        gradientDrawable3.setColor(Color.parseColor("#FFF85959"));
        gradientDrawable3.setCornerRadius(fJx);
        gradientDrawable3.setSize(-1, iJx);
        tTProgressBar2.setProgressDrawable(new LayerDrawable(new Drawable[]{gradientDrawable, clipDrawable, new ClipDrawable(gradientDrawable3, 3, 1)}));
        tTProgressBar2.setVisibility(8);
        layoutParams5.addRule(12, -1);
        tTProgressBar2.setLayoutParams(layoutParams5);
        relativeLayout.addView(tTProgressBar2);
        View tTViewStub = new TTViewStub(context, new com.byazt.kgm.a());
        ViewGroup.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -1);
        tTViewStub.setId(2114387744);
        tTViewStub.setLayoutParams(layoutParams6);
        relativeLayout.addView(tTViewStub);
        View tTViewStub2 = new TTViewStub(context, new com.byazt.kgm.l());
        ViewGroup.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -1);
        tTViewStub2.setId(2114387666);
        tTViewStub2.setLayoutParams(layoutParams7);
        relativeLayout.addView(tTViewStub2);
        View tTViewStub3 = new TTViewStub(context, new com.byazt.kgm.eb());
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(13, -1);
        tTViewStub3.setId(2114387828);
        tTViewStub3.setLayoutParams(layoutParams8);
        relativeLayout.addView(tTViewStub3);
        return relativeLayout;
    }

    public void a(boolean z2) {
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.hp();
        }
        a aVar2 = this.f19666w;
        if (aVar2 != null && z2) {
            aVar2.b();
        }
        nd();
    }

    public void hp(com.byazt.dc.hp hpVar) {
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.hp(hpVar);
        }
    }

    @Override // com.byazt.su.hp
    public void w(com.byazt.su.l lVar, View view) {
        hp(lVar, view, false);
    }

    public void hp(final NativeVideoTsView.hp hpVar) {
        a aVar;
        if (!this.jl || (aVar = this.f19666w) == null) {
            return;
        }
        aVar.hp(new NativeVideoTsView.hp() { // from class: com.byazt.oh.j.3
            @Override // com.byazt.oh.NativeVideoTsView.hp
            public void hp(View view, int i2) {
                NativeVideoTsView.hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(view, i2);
                }
            }
        });
    }

    @Override // com.byazt.su.jx
    public void w(boolean z2) {
        this.hd = z2;
    }

    @Override // com.byazt.su.jx
    public void j(boolean z2) {
        this.as = z2;
    }

    public void hp(zy zyVar) {
        a aVar;
        if (!this.jl || (aVar = this.f19666w) == null) {
            return;
        }
        aVar.hp(zyVar);
    }

    private boolean a(int i2) {
        a aVar = this.f19666w;
        return aVar != null && aVar.jx(i2);
    }

    public void hp(int i2, int i3) {
        if (i2 == 0 || i3 == 0) {
            return;
        }
        this.f24078f = i2;
        this.yr = i3;
    }

    @SuppressLint({"InflateParams"})
    private void hp(Context context) {
        EnumSet<l.hp> enumSetNoneOf = EnumSet.noneOf(l.hp.class);
        enumSetNoneOf.add(l.hp.hideCloseBtn);
        enumSetNoneOf.add(l.hp.hideBackBtn);
        try {
            a aVarHp = hp(context, enumSetNoneOf);
            this.f19666w = aVarHp;
            if (aVarHp != null) {
                aVarHp.hp((com.byazt.su.hp) this);
                this.f19666w.hp((hp.InterfaceC0317hp) this);
            }
        } catch (Throwable th) {
            u.l("NativeVideoController", th.getMessage());
        }
    }

    public a hp(Context context, EnumSet<l.hp> enumSet) {
        View layoutVideoDetail;
        if (this.jl) {
            layoutVideoDetail = l(context);
        } else {
            layoutVideoDetail = new LayoutVideoDetail(context);
        }
        View view = layoutVideoDetail;
        if (view == null) {
            return null;
        }
        if (this.jl) {
            return new a(context, view, true, enumSet, this.f19653a, this, lv(), null);
        }
        return new w(context, view, true, enumSet, this.f19653a, this, false);
    }

    private boolean jx(int i2, int i3) {
        return i2 < i3 && vq();
    }

    @Override // com.byazt.su.jx
    public void hp(jx.j jVar) {
        this.mp = new WeakReference<>(jVar);
    }

    @Override // com.byazt.su.hp
    public void jx(com.byazt.su.l lVar, View view) throws JSONException {
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.q();
        }
        hp(1);
        hp(true, 3);
    }

    @Override // com.byazt.su.jx
    public boolean hp(com.byazt.tw.a aVar) throws JSONException {
        aVar.getUrl();
        if (TextUtils.isEmpty(aVar.getUrl())) {
            l("url is null");
            u.l("tag_video_play", "[video] play video stop , because no video info");
            return false;
        }
        this.ns = aVar;
        this.xs = aVar.isQuiet();
        this.eb = aVar.getCurrent();
        if (aVar.getCurrent() > 0) {
            long current = aVar.getCurrent();
            this.eb = current;
            long j2 = this.f19663s;
            if (j2 > current) {
                current = j2;
            }
            this.f19663s = current;
        }
        a aVar2 = this.f19666w;
        if (aVar2 != null) {
            aVar2.hp();
            if (this.fi == 0) {
                this.f19666w.eb();
            }
            this.f19666w.jx(aVar.getWidth(), aVar.getHeight());
            this.f19666w.jx(this.wv);
            this.f19666w.hp(aVar.getWidth(), aVar.getHeight());
        }
        try {
            if (this.f19657j == null) {
                if (!mp()) {
                    l("create video error");
                    return false;
                }
                this.f19657j.addIVideoPlayerCallback(this.pc);
            }
            o();
            this.ud = 0L;
            jx(aVar);
            return true;
        } catch (Throwable th) {
            l(th.getMessage());
            u.l("tag_video_play", "[video] invoke NativeVideoController#playVideo cause exception :" + th.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(Context context, int i2) {
        l(context, i2);
        if (i2 == 4) {
            this.f19665v = false;
        }
    }

    public j(Context context, ViewGroup viewGroup, mp mpVar, String str, boolean z2, boolean z3) {
        this.lv = com.byazt.ih.l.AD_TAG_FEED;
        this.f24081r = false;
        this.pu = true;
        this.f24078f = 0;
        this.yr = 0;
        this.wt = 1;
        this.wt = vv.jx(context);
        try {
            this.f24078f = viewGroup.getWidth();
            this.yr = viewGroup.getHeight();
        } catch (Throwable unused) {
        }
        this.wv = viewGroup;
        this.lv = str;
        this.f19662q = new WeakReference<>(context);
        this.f19653a = mpVar;
        hp(context);
        this.dy = true;
        this.f24081r = z2;
        this.pu = z3;
    }

    @Override // com.byazt.su.jx
    public void hp(jx.l lVar) {
        this.ky = new WeakReference<>(lVar);
    }

    @Override // com.byazt.su.jx
    public void hp(jx.hp hpVar) {
        this.nu = hpVar;
    }

    @Override // com.byazt.su.jx
    public void hp(Map<String, Object> map) {
        com.byazt.um.eb ebVar = this.f19657j;
        if (ebVar != null) {
            ebVar.pause();
        }
        if ((!this.f19660n.hp(64) || f()) && this.f19660n.hp(2)) {
            xs.hp hpVar = new xs.hp();
            hpVar.hp(gu());
            hpVar.jx(k());
            hpVar.l(jl());
            if (map != null) {
                hpVar.hp(map);
            }
            hp(this.f19666w, hpVar);
        }
    }

    @Override // com.byazt.su.jx
    public void hp(long j2) {
        this.eb = j2;
        long j3 = this.f19663s;
        if (j3 > j2) {
            j2 = j3;
        }
        this.f19663s = j2;
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.hp();
        }
        com.byazt.um.eb ebVar = this.f19657j;
        if (ebVar != null) {
            this.ea = 1;
            this.su = false;
            ebVar.start(true, this.eb, this.xs);
        }
    }

    @Override // com.byazt.su.jx
    public void hp(boolean z2, int i2) throws JSONException {
        if (this.jl) {
            hp(1);
        }
        long jK = k();
        if ((!this.f19660n.hp(64) || f()) && this.f19660n.hp(1) && jK > 0) {
            if (z2) {
                xs.hp hpVar = new xs.hp();
                hpVar.hp(gu());
                hpVar.jx(jK);
                hpVar.l(jl());
                hpVar.w(i2);
                hpVar.a(zy());
                this.f19660n.jx(32);
                com.byazt.qvz.j.hp(this.f19666w, hpVar, this.vq, !this.f19660n.hp(2) ? 1 : 0);
            } else {
                xs.hp hpVar2 = new xs.hp();
                hpVar2.hp(gu());
                hpVar2.jx(jK);
                hpVar2.l(jl());
                hp(this.f19666w, hpVar2);
            }
        }
        e();
    }

    @Override // com.byazt.su.jx
    public void l(Map<String, Object> map) {
        this.vq = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0089 A[Catch: all -> 0x00ec, TryCatch #0 {all -> 0x00ec, blocks: (B:2:0x0000, B:4:0x0004, B:6:0x000a, B:8:0x0010, B:10:0x0014, B:16:0x0020, B:17:0x002a, B:38:0x007c, B:41:0x0083, B:43:0x0089, B:45:0x008d, B:47:0x009f, B:54:0x00b8, B:56:0x00be, B:58:0x00c6, B:60:0x00d3, B:61:0x00da, B:48:0x00a5, B:50:0x00a9, B:51:0x00af, B:53:0x00b3, B:30:0x004d, B:31:0x005e, B:33:0x0064, B:63:0x00e2, B:65:0x00e6, B:66:0x00e9), top: B:69:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x008d A[Catch: all -> 0x00ec, TryCatch #0 {all -> 0x00ec, blocks: (B:2:0x0000, B:4:0x0004, B:6:0x000a, B:8:0x0010, B:10:0x0014, B:16:0x0020, B:17:0x002a, B:38:0x007c, B:41:0x0083, B:43:0x0089, B:45:0x008d, B:47:0x009f, B:54:0x00b8, B:56:0x00be, B:58:0x00c6, B:60:0x00d3, B:61:0x00da, B:48:0x00a5, B:50:0x00a9, B:51:0x00af, B:53:0x00b3, B:30:0x004d, B:31:0x005e, B:33:0x0064, B:63:0x00e2, B:65:0x00e6, B:66:0x00e9), top: B:69:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void l(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.oh.j.l(int, int):void");
    }

    private void hp(float f2, float f3, float f4, float f5) {
        boolean zE;
        if (sz.l().k()) {
            WeakReference<hp> weakReference = this.f24079m;
            View view = null;
            hp hpVar = weakReference != null ? weakReference.get() : null;
            if (hpVar instanceof NativeVideoTsView) {
                NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) hpVar;
                zE = nativeVideoTsView.e();
                Object parent = nativeVideoTsView.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                }
            } else {
                zE = true;
            }
            View view2 = view;
            if (zE) {
                k.hp().hp(this.f19653a, f2, f3, f4, f5, view2);
            }
        }
    }

    private void hp(int i2, int i3, int i4, int i5) {
        Matrix matrix;
        if (i4 == 0 || i5 == 0) {
            return;
        }
        float f2 = i4;
        float f3 = i2;
        float f4 = f2 / f3;
        float f5 = i5;
        float f6 = i3;
        float f7 = f5 / f6;
        try {
            Object objCx = cx();
            if (objCx instanceof TextureView) {
                matrix = ((TextureView) objCx).getMatrix();
            } else if (objCx instanceof UpieVideoView) {
                matrix = ((UpieVideoView) objCx).getMatrix();
            } else {
                matrix = objCx instanceof SurfaceView ? ((SurfaceView) objCx).getMatrix() : null;
            }
            float fMax = Math.max(f4, f7);
            if (matrix == null) {
                matrix = new Matrix();
            } else {
                matrix.reset();
            }
            matrix.preTranslate((i4 - i2) / 2, (i5 - i3) / 2);
            matrix.preScale(f3 / f2, f6 / f5);
            matrix.postScale(fMax, fMax, i4 / 2, i5 / 2);
            if (objCx instanceof TextureView) {
                ((TextureView) objCx).setTransform(matrix);
                ((TextureView) objCx).postInvalidate();
                return;
            }
            if (objCx instanceof UpieVideoView) {
                LottieAnimationView lottieAnimationViewHp = hp((View) objCx);
                if (lottieAnimationViewHp != null) {
                    lottieAnimationViewHp.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    return;
                }
                return;
            }
            if (objCx instanceof SurfaceView) {
                if (Build.VERSION.SDK_INT >= 29) {
                    ((SurfaceView) objCx).setAnimationMatrix(matrix);
                }
                ((SurfaceView) objCx).postInvalidate();
            }
        } catch (Exception unused) {
        }
    }

    private boolean l(int i2, int i3, int i4, int i5) {
        return (i4 > i5 && !jx(i2, i3)) || i4 <= 0;
    }

    @Override // com.byazt.su.hp
    public void l(com.byazt.su.l lVar, int i2) {
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(long j2, long j3) {
        this.eb = j2;
        this.f19664u = j3;
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.hp(j2, j3);
            this.f19666w.l(com.byazt.xm.hp.hp(j2, j3));
        }
        try {
            jx.hp hpVar = this.nu;
            if (hpVar != null) {
                hpVar.hp(j2, j3);
            }
        } catch (Throwable th) {
            u.hp("NativeVideoController", "onProgressUpdate error: ", th);
        }
    }

    private LottieAnimationView hp(View view) {
        LottieAnimationView lottieAnimationViewHp;
        if (view instanceof LottieAnimationView) {
            return (LottieAnimationView) view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof LottieAnimationView) {
                return (LottieAnimationView) childAt;
            }
            if ((childAt instanceof ViewGroup) && (lottieAnimationViewHp = hp(childAt)) != null) {
                return lottieAnimationViewHp;
            }
        }
        return null;
    }

    @Override // com.byazt.su.hp
    public void l(com.byazt.su.l lVar, View view) {
        l(lVar, view, false, false);
    }

    public void l(com.byazt.su.l lVar, View view, boolean z2, boolean z3) {
        if (wv()) {
            q(!this.sz);
            if (this.f19662q.get() instanceof Activity) {
                if (this.sz) {
                    w(z2 ? 8 : 0);
                    a aVar = this.f19666w;
                    if (aVar != null) {
                        aVar.hp(this.wv);
                        this.f19666w.jx(false);
                    }
                } else {
                    w(1);
                    a aVar2 = this.f19666w;
                    if (aVar2 != null) {
                        aVar2.l(this.wv);
                        this.f19666w.jx(false);
                    }
                }
                WeakReference<jx.l> weakReference = this.ky;
                jx.l lVar2 = weakReference != null ? weakReference.get() : null;
                if (lVar2 != null) {
                    lVar2.hp(this.sz);
                }
            }
        }
    }

    @Override // com.byazt.su.hp
    public void hp(com.byazt.su.l lVar, View view) {
        if (this.f19657j == null || !wv()) {
            return;
        }
        if (this.f19657j.isPlaying()) {
            a();
            a aVar = this.f19666w;
            if (aVar != null) {
                aVar.l(true, false);
                this.f19666w.a();
                return;
            }
            return;
        }
        if (!this.f19657j.isPaused()) {
            a aVar2 = this.f19666w;
            if (aVar2 != null) {
                aVar2.jx(this.wv);
            }
            hp(this.eb);
            a aVar3 = this.f19666w;
            if (aVar3 != null) {
                aVar3.l(false, false);
                return;
            }
            return;
        }
        a(false);
        a aVar4 = this.f19666w;
        if (aVar4 != null) {
            aVar4.l(false, false);
        }
    }

    private void l(Context context, int i2) {
        if (!wv() || context == null || this.wt == i2) {
            return;
        }
        this.wt = i2;
        if (i2 != 4 && i2 != 0) {
            this.xh = false;
        }
        if (!this.xh && !sz() && this.f24081r) {
            e.l().post(new Runnable() { // from class: com.byazt.oh.j.9
                @Override // java.lang.Runnable
                public void run() {
                    j.this.eb(2);
                }
            });
        }
        WeakReference<hp> weakReference = this.f24079m;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f24079m.get().hp(this.wt);
    }

    @Override // com.byazt.su.hp
    public void hp(com.byazt.su.l lVar, int i2) {
        if (this.f19657j == null) {
            return;
        }
        hp(this.nr, a(i2));
    }

    @Override // com.byazt.su.hp
    public void hp(com.byazt.su.l lVar, int i2, boolean z2) {
        if (wv()) {
            long j2 = (long) (((i2 * r0) * 1.0f) / 100.0f);
            if (this.f19664u > 0) {
                this.nr = (int) j2;
            } else {
                this.nr = 0L;
            }
            a aVar = this.f19666w;
            if (aVar != null) {
                aVar.hp(this.nr);
            }
        }
    }

    @Override // com.byazt.su.jx
    public void l(com.byazt.tw.a aVar) {
        this.ns = aVar;
    }

    @Override // com.byazt.su.jx
    public void l() {
        if (this.f19657j != null) {
            jx(false);
            this.ea = 2;
            this.su = false;
            this.f19657j.restart();
        }
    }

    @Override // com.byazt.su.hp
    public void hp(com.byazt.su.l lVar, View view, boolean z2, boolean z3) {
        if (this.jl) {
            a();
        }
        if (this.f19666w == null) {
            return;
        }
        if (z2 && !this.jl && !b()) {
            this.f19666w.l(!ms(), false);
            this.f19666w.hp(z3, true, false);
        }
        com.byazt.um.eb ebVar = this.f19657j;
        if (ebVar != null && ebVar.isPlaying()) {
            this.f19666w.a();
            this.f19666w.w();
        } else {
            this.f19666w.a();
        }
    }

    public void hp(com.byazt.su.l lVar, View view, boolean z2) {
        ea();
    }

    @Override // com.byazt.su.hp
    public void hp() {
        if (vv.jx(sz.getContext()) == 0) {
            return;
        }
        this.kg = true;
        if (this.f19657j == null) {
            e();
            su();
        } else {
            e();
        }
    }

    private void hp(long j2, boolean z2) {
        if (this.f19657j == null) {
            return;
        }
        if (z2) {
            rv();
        }
        this.f19657j.seekTo(j2);
    }

    @Override // com.byazt.oh.l
    public void hp(v.hp hpVar, String str) throws JSONException {
        int i2 = AnonymousClass2.hp[hpVar.ordinal()];
        if (i2 == 1) {
            a();
            return;
        }
        if (i2 == 2) {
            hp(true, 3);
        } else {
            if (i2 != 3) {
                return;
            }
            s();
            this.f19665v = false;
            this.xh = true;
        }
    }

    public void hp(Context context, int i2) {
        l(context, i2);
        if (i2 == 4) {
            this.f19665v = false;
            e.l().post(new Runnable() { // from class: com.byazt.oh.j.10
                @Override // java.lang.Runnable
                public void run() {
                    j.this.s();
                }
            });
        }
    }

    public void hp(hp hpVar) {
        this.f24079m = new WeakReference<>(hpVar);
    }

    @Override // com.byazt.su.jx
    public void hp(int i2) throws JSONException {
        if (com.byazt.we.hp.hp(this.f19653a)) {
            if (this.zx <= 0) {
                this.zx = System.currentTimeMillis();
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - this.zx;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("close_reason", Integer.valueOf(i2));
                jSONObject.putOpt("buffer_count", Integer.valueOf(zy()));
                jSONObject.putOpt("buffer_time", Long.valueOf(jl()));
            } catch (Exception unused) {
            }
            if (!this.f19660n.hp(512)) {
                this.f19660n.jx(512);
                if (this.lv.equals(com.byazt.ih.l.AD_TAG_FEED)) {
                    com.byazt.jdb.j.hp(this.f19653a, com.byazt.ih.l.AD_TAG_FEED, jCurrentTimeMillis, jSONObject, com.byazt.qvz.j.hp(this.f19666w));
                } else if (this.lv.equals("draw_ad")) {
                    com.byazt.jdb.j.hp(this.f19653a, "draw_ad", jCurrentTimeMillis, jSONObject, com.byazt.qvz.j.hp(this.f19666w));
                }
            }
            if (com.byazt.we.hp.hp(this.f19653a)) {
                if (com.byazt.yx.l.hp().hp(this.f19653a)) {
                    com.byazt.yx.l.hp().hp(LiveMetrics.EVENT_LIVESDK_LIVE_WINDOW_DURATION_V2, this.f19653a, jCurrentTimeMillis);
                } else {
                    com.byazt.we.hp.hp(LiveMetrics.EVENT_LIVESDK_LIVE_WINDOW_DURATION_V2, this.f19653a, jCurrentTimeMillis);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, String str) {
        if (com.byazt.we.hp.hp(this.f19653a)) {
            if (this.lv.equals(com.byazt.ih.l.AD_TAG_FEED)) {
                com.byazt.jdb.j.hp(this.f19653a, com.byazt.ih.l.AD_TAG_FEED, i2, str, com.byazt.qvz.j.hp(this.f19666w));
            } else if (this.lv.equals("draw_ad")) {
                com.byazt.jdb.j.hp(this.f19653a, "draw_ad", i2, str, com.byazt.qvz.j.hp(this.f19666w));
            }
        }
    }
}
