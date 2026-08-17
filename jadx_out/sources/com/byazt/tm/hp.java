package com.byazt.tm;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.byazt.ay.v;
import com.byazt.dnb.jl;
import com.byazt.jc.j;
import com.byazt.jdb.hp;
import com.byazt.jz.d;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.kgm.LayoutVideoPlayLayoutForLive;
import com.byazt.oh.a;
import com.byazt.rx.BaseConstants;
import com.byazt.su.jx;
import com.byazt.su.l;
import com.byazt.tv.UpieVideoView;
import com.byazt.um.eb;
import com.byazt.um.w;
import com.byazt.xci.df;
import com.byazt.xci.ec;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.ymw.e;
import com.byazt.ymw.u;
import com.byazt.ymw.vv;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.android.metrics.LiveMetrics;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1426, 28})
/* loaded from: classes3.dex */
public abstract class hp extends com.byazt.fbd.hp {
    public jx.hp as;

    /* renamed from: d, reason: collision with root package name */
    public long f25883d;
    public int ea;

    /* renamed from: f, reason: collision with root package name */
    public WeakReference<jx.l> f25884f;
    public long fi;
    public long hd;
    public com.byazt.go.hp lv;
    public InterfaceC0374hp mp;
    public int nr;
    public int su;
    public int vq;
    public ViewGroup wv;
    public final int yr;
    public final String zx;
    public long hq = 0;
    public boolean ud = false;
    public boolean nu = false;
    public Map<String, Object> dy = null;
    public final AtomicInteger pu = new AtomicInteger(0);
    public final AtomicInteger ky = new AtomicInteger(0);
    public long xh = 0;

    /* renamed from: ms, reason: collision with root package name */
    public long f25886ms = 0;
    public final Runnable kg = new Runnable() { // from class: com.byazt.tm.hp.1
        @Override // java.lang.Runnable
        public void run() {
            if (hp.this.as != null) {
                hp.this.as.hp();
            }
            if (hp.this.mp != null) {
                hp.this.mp.l();
            }
        }
    };

    /* renamed from: m, reason: collision with root package name */
    public boolean f25885m = false;
    public boolean rz = false;
    public boolean nd = true;

    /* renamed from: y, reason: collision with root package name */
    public boolean f25888y = false;
    public boolean rv = false;
    public boolean qu = false;
    public boolean an = false;
    public boolean pc = false;

    /* renamed from: r, reason: collision with root package name */
    public eb.hp f25887r = new eb.hp() { // from class: com.byazt.tm.hp.2
        @Override // com.byazt.um.eb.hp
        public void onBufferEnd(eb ebVar, int i2) {
            hp.this.hp.post(new Runnable() { // from class: com.byazt.tm.hp.2.7
                @Override // java.lang.Runnable
                public void run() {
                    if (hp.this.f19666w != null) {
                        hp.this.w(0);
                        hp.this.f19666w.l();
                        hp.this.hp.removeCallbacks(hp.this.kg);
                        hp.this.rz = false;
                    }
                }
            });
        }

        @Override // com.byazt.um.eb.hp
        public void onBufferStart(eb ebVar, int i2, int i3, int i4) {
            com.byazt.rk.jx.j(hp.this.su());
            hp.this.hp.post(new Runnable() { // from class: com.byazt.tm.hp.2.6
                @Override // java.lang.Runnable
                public void run() {
                    if (hp.this.f19666w != null) {
                        hp.this.w(8);
                        hp.this.f19666w.cx();
                        hp.this.kg();
                        hp.this.rz = true;
                    }
                }
            });
        }

        @Override // com.byazt.um.eb.hp
        public void onBufferingUpdate(eb ebVar, int i2) {
        }

        @Override // com.byazt.um.eb.hp
        public void onCompletion(eb ebVar) throws JSONException {
            com.byazt.rk.jx.a(hp.this.su());
            hp.this.hp.post(new Runnable() { // from class: com.byazt.tm.hp.2.1
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.a(false);
                }
            });
            hp.this.hp(4);
            hp.this.l(4);
        }

        @Override // com.byazt.um.eb.hp
        public void onError(final eb ebVar, final com.byazt.um.jx jxVar) {
            if (jxVar == null) {
                return;
            }
            com.byazt.rk.jx.jx(hp.this.su(), 1);
            jxVar.getCode();
            jxVar.getMsg();
            hp.this.hp.post(new Runnable() { // from class: com.byazt.tm.hp.2.4
                @Override // java.lang.Runnable
                public void run() {
                    eb ebVar2;
                    eb ebVar3;
                    int iHp;
                    int code = jxVar.getCode();
                    if (code == 308 && (ebVar2 = hp.this.f19657j) != null && ebVar2 != (ebVar3 = ebVar) && (ebVar3 instanceof j) && ((iHp = ((j) ebVar3).hp()) == 200 || iHp == 203)) {
                        u.l("BaseVideoController", "ignore errorCode:" + code + " state:" + iHp);
                        return;
                    }
                    hp.this.hp(code, jxVar.getExtraCode(), jxVar.getMsg(), (JSONArray) null);
                    hp.this.hp.removeCallbacks(hp.this.kg);
                    if (hp.this.f19666w != null) {
                        hp.this.w(0);
                        hp.this.f19666w.l();
                    }
                    if (hp.this.as != null) {
                        hp.this.as.l(hp.this.f25886ms, com.byazt.xm.hp.hp(hp.this.eb, hp.this.f25883d));
                    }
                    if (hp.this.mp != null) {
                        hp.this.mp.hp(code, jxVar.getMsg());
                    }
                }
            });
            hp.this.hp(jxVar.getCode(), jxVar.getMsg());
        }

        @Override // com.byazt.um.eb.hp
        public void onMonitorLog(eb ebVar, JSONObject jSONObject, String str) throws JSONException {
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
            com.byazt.jdb.j.hp((Context) hp.this.f19662q.get(), hp.this.f19653a, hp.this.zx, "pangle_live_sdk_monitor", jSONObject);
        }

        @Override // com.byazt.um.eb.hp
        public void onPause(eb ebVar) {
            hp.this.an = true;
            com.byazt.rk.jx.w(hp.this.su());
        }

        @Override // com.byazt.um.eb.hp
        public void onPlayPositionUpdate(final eb ebVar, final long j2, final long j3) {
            if (hp.this.an && hp.this.pc) {
                hp.this.an = false;
                hp.this.pc = false;
                com.byazt.rk.jx.l(hp.this.su(), 2);
            }
            if (Math.abs(j2 - hp.this.eb) < 50) {
                return;
            }
            hp.this.hp.post(new Runnable() { // from class: com.byazt.tm.hp.2.8
                @Override // java.lang.Runnable
                public void run() {
                    if (hp.this.cx != null) {
                        hp.this.cx.hp(j2, j3);
                    }
                    hp.this.l(j2, j3);
                    hp.this.hp(j2, j3);
                    if (hp.this.f19653a.hc() <= 0 || j3 <= hp.this.f19653a.hc() * 1000 || j2 < hp.this.f19653a.hc() * 1000 || hp.this.f19658k) {
                        return;
                    }
                    hp.this.f19658k = true;
                    ebVar.stop();
                    hp.this.a(false);
                }
            });
        }

        @Override // com.byazt.um.eb.hp
        public void onPrepared(eb ebVar) {
            if (!hp.this.qu) {
                hp.this.qu = true;
                com.byazt.rk.jx.jx(hp.this.su());
            }
            if (com.byazt.we.hp.hp(hp.this.f19653a)) {
                hp.this.f19653a.jx(ebVar.getCodec());
            }
            hp.this.hp.post(new Runnable() { // from class: com.byazt.tm.hp.2.3
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.hp.removeCallbacks(hp.this.kg);
                    if (hp.this.f19666w != null) {
                        hp.this.w(0);
                        hp.this.f19666w.l();
                    }
                }
            });
        }

        @Override // com.byazt.um.eb.hp
        public void onRelease(eb ebVar) {
            com.byazt.rk.jx.jx(hp.this.su(), 2);
        }

        @Override // com.byazt.um.eb.hp
        public void onRenderStart(eb ebVar, long j2) {
            if (!hp.this.rv) {
                hp.this.rv = true;
                com.byazt.rk.jx.l(hp.this.su(), 1);
            }
            hp.this.hp.post(new Runnable() { // from class: com.byazt.tm.hp.2.2
                @Override // java.lang.Runnable
                public void run() {
                    if (hp.this.f19666w != null) {
                        hp.this.w(0);
                        hp.this.f19666w.l();
                        hp.this.hp.removeCallbacks(hp.this.kg);
                        hp.this.rz = false;
                    }
                }
            });
            hp.this.hp(j2, false);
            hp.this.hd = System.currentTimeMillis();
            hp.this.rz();
            if (hp.this.mp != null) {
                hp.this.mp.jx();
            }
        }

        @Override // com.byazt.um.eb.hp
        public void onResume(eb ebVar) {
            hp.this.pc = true;
        }

        @Override // com.byazt.um.eb.hp
        public void onSeekCompletion(eb ebVar, boolean z2) {
            hp.this.hp.post(new Runnable() { // from class: com.byazt.tm.hp.2.5
                @Override // java.lang.Runnable
                public void run() {
                    hp.this.hp.removeCallbacks(hp.this.kg);
                    if (hp.this.f19666w != null) {
                        hp.this.w(0);
                        hp.this.f19666w.l();
                    }
                }
            });
        }

        @Override // com.byazt.um.eb.hp
        public void onStart(eb ebVar) {
        }

        @Override // com.byazt.um.eb.hp
        public void onVideoSizeChanged(eb ebVar, int i2, int i3) {
            hp.this.vq = i2;
            hp.this.ea = i3;
            hp.this.nd();
        }
    };
    public final com.byazt.yb.jx rk = new com.byazt.yb.jx() { // from class: com.byazt.tm.hp.3
        @Override // com.byazt.yb.jx
        public void onNetworkChanged(Context context, Intent intent, boolean z2, int i2) {
            hp.this.hp(context, i2);
        }
    };
    public boolean wt = false;

    @com.byazt.kj.hp(hp = {0, 1, 1426, 759})
    /* renamed from: com.byazt.tm.hp$8, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass8 {
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

    /* renamed from: com.byazt.tm.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0374hp {
        void hp();

        void hp(int i2, String str);

        void hp(long j2, long j3);

        void jx();

        void l();
    }

    public hp(Context context, ViewGroup viewGroup, mp mpVar, com.byazt.go.hp hpVar) {
        this.nr = 1;
        this.nr = vv.jx(context);
        this.wv = viewGroup;
        this.f19662q = new WeakReference<>(context);
        this.f19653a = mpVar;
        this.lv = hpVar;
        hp(context);
        this.yr = ky.zy(this.f19653a);
        this.zx = ky.l(this.f19653a);
    }

    public abstract int cx();

    @Override // com.byazt.fbd.hp
    public boolean d() {
        return true;
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rk.jx.jx(su(), 3);
    }

    @Override // com.byazt.su.jx
    public void hp(jx.j jVar) {
    }

    @Override // com.byazt.su.jx
    public void j(boolean z2) {
    }

    @Override // com.byazt.su.jx
    public boolean n() {
        return false;
    }

    public boolean p_() {
        mp mpVar = this.f19653a;
        return mpVar == null || mpVar.qo() == 100.0f;
    }

    @Override // com.byazt.su.hp
    public void w(com.byazt.su.l lVar, View view) {
    }

    private boolean b() {
        int i2;
        eb jVar;
        mp mpVar = this.f19653a;
        if (com.byazt.nwu.hp.l(mpVar)) {
            com.byazt.cw.l lVarVq = vq();
            if (lVarVq == null) {
                if (this.f25887r != null) {
                    StringBuilder sb = new StringBuilder("创建lottie播放器时，iRenderView为null, mediaLayout is null: ");
                    sb.append(this.f19666w == null);
                    this.f25887r.onError(null, new com.byazt.tw.jx(60008, AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2, sb.toString()));
                }
                u.l("BaseVideoController", "[video] invoke NativeVideoController#playVideo error: iRenderView为null");
                return false;
            }
            int iJl = ky.jl(this.f19653a);
            this.di = hp("ad");
            this.f19657j = new com.byazt.tv.hp(lVarVq, com.byazt.nwu.hp.q(mpVar), new j(String.valueOf(iJl), this.di), df.vv(mpVar), hp("assist"));
            i2 = 1;
        } else if (com.byazt.nwu.hp.jx(mpVar)) {
            com.byazt.cw.l lVarVq2 = vq();
            if (lVarVq2 == null) {
                if (this.f25887r != null) {
                    StringBuilder sb2 = new StringBuilder("创建Upie播放器时，iRenderView为null, mediaLayout is null: ");
                    sb2.append(this.f19666w == null);
                    this.f25887r.onError(null, new com.byazt.tw.jx(60008, AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2, sb2.toString()));
                }
                u.l("BaseVideoController", "[video] invoke NativeVideoController#playVideo error: iRenderView为null");
                return false;
            }
            int iJl2 = ky.jl(this.f19653a);
            if (d.w() && this.ns.getPlayerType() == 1) {
                jVar = com.byazt.cwe.l.hp().createTTVideoPlayer(sz.getContext(), String.valueOf(iJl2));
            } else {
                this.di = hp("ad");
                jVar = new j(String.valueOf(iJl2), this.di);
            }
            this.f19657j = new com.byazt.tv.l(jVar, com.byazt.nwu.hp.q(mpVar), hp("assist"), lVarVq2);
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
                this.f19657j = new j(String.valueOf(iJl3), this.di);
                i2 = 5;
            }
        }
        if (mpVar != null) {
            com.byazt.rk.jx.hp(mpVar, String.valueOf(ky.zy(this.f19653a)), ky.jl(this.f19653a), i2, this.f19653a.di());
        }
        return true;
    }

    private void ea() {
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.j(0);
            this.f19666w.hp(false, false);
            this.f19666w.jx(false);
            this.f19666w.w();
            w(8);
            this.f19666w.eb();
        }
    }

    private void hd() {
        if (!this.f19660n.hp(64) || jx() || j()) {
            this.f19660n.jx(64);
            long j2 = this.f25883d;
            l(j2, j2);
            long j3 = this.f25883d;
            this.eb = j3;
            this.f19663s = j3;
            r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String su() {
        mp mpVar = this.f19653a;
        if (mpVar == null) {
            return null;
        }
        return mpVar.di();
    }

    private com.byazt.cw.l vq() {
        a aVar;
        WeakReference<Context> weakReference = this.f19662q;
        if (weakReference == null || weakReference.get() == null || (aVar = this.f19666w) == null) {
            return null;
        }
        return aVar.xs();
    }

    private boolean y() throws Throwable {
        mp mpVar;
        WeakReference<Context> weakReference = this.f19662q;
        return weakReference == null || weakReference.get() == null || vq() == null || this.f19657j == null || (mpVar = this.f19653a) == null || hd.a(mpVar) != null || hd.eb(this.f19653a) != null || this.f19653a.z() == 1;
    }

    private void zx() {
        InterfaceC0374hp interfaceC0374hp = this.mp;
        if (interfaceC0374hp != null) {
            interfaceC0374hp.hp();
        }
    }

    public int as() {
        return jl.hp(this.f19653a) ? this.ky.get() : this.pu.get();
    }

    @Override // com.byazt.su.jx
    public void e() {
        l(-1);
        q();
    }

    @Override // com.byazt.su.jx
    public void eb() {
        eb ebVar = this.f19657j;
        if (ebVar != null) {
            ebVar.pause();
        }
    }

    public boolean f() {
        return this.f19657j.isCompleted();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void kg() {
        /*
            r5 = this;
            int r0 = r5.cx()
            r1 = 2
            if (r0 == r1) goto L20
            r1 = 1
            if (r0 == r1) goto L20
            r1 = 5
            if (r0 != r1) goto Le
            goto L20
        Le:
            r2 = 3
            if (r0 != r2) goto L2a
            com.byazt.jkd.gu r0 = com.byazt.jz.sz.l()
            int r1 = r5.yr
            java.lang.String r1 = java.lang.String.valueOf(r1)
            int r1 = r0.s(r1)
            goto L2a
        L20:
            com.byazt.jkd.gu r0 = com.byazt.jz.sz.l()
            int r0 = r0.yt()
            int r1 = r0 * 1000
        L2a:
            com.byazt.ymw.ud r0 = r5.hp
            java.lang.Runnable r2 = r5.kg
            r0.removeCallbacks(r2)
            com.byazt.ymw.ud r0 = r5.hp
            java.lang.Runnable r2 = r5.kg
            long r3 = (long) r1
            r0.postDelayed(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.tm.hp.kg():void");
    }

    public boolean m() {
        return this.f25888y;
    }

    public void mp() {
        if (!this.f19660n.hp(64) || jx() || j()) {
            if (this.f19660n.hp(2) || jl.hp(this.f19653a)) {
                pu();
            }
        }
    }

    public void ms() {
        mp mpVar = this.f19653a;
        if (mpVar != null) {
            new hp.C0281hp().l("auto_replay").hp(ky.l(mpVar)).w(this.f19653a.j()).j(this.f19653a.w_()).hp(new com.byazt.dhy.hp() { // from class: com.byazt.tm.hp.4
                @Override // com.byazt.dhy.hp
                public void onSend(JSONObject jSONObject) throws JSONException {
                    w currentVideoInfo;
                    JSONObject jSONObject2 = new JSONObject();
                    if (jl.hp(hp.this.f19653a)) {
                        jSONObject2.put("is_audio", 1);
                    }
                    if (hp.this.ns != null && (currentVideoInfo = hp.this.ns.getCurrentVideoInfo()) != null && currentVideoInfo.getStart() > 0.0d) {
                        jSONObject2.put("start", currentVideoInfo.getStart());
                    }
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, jSONObject2.toString());
                }
            });
        }
    }

    public void nd() {
        this.hp.post(new Runnable() { // from class: com.byazt.tm.hp.7
            @Override // java.lang.Runnable
            public void run() {
                if (ec.j(hp.this.f19653a) || !hp.this.p_()) {
                    hp hpVar = hp.this;
                    hpVar.hp(hpVar.vq, hp.this.ea);
                    return;
                }
                if (com.byazt.we.hp.hp(hp.this.f19653a) && hp.this.f19653a.wf() == 2 && hp.this.p_()) {
                    return;
                }
                if (!hp.this.p_()) {
                    hp hpVar2 = hp.this;
                    hpVar2.hp(hpVar2.vq, hp.this.ea);
                    return;
                }
                if (hp.this.f19653a != null && hp.this.f19653a.h() == 0) {
                    hp hpVar3 = hp.this;
                    hpVar3.j(hpVar3.vq, hp.this.ea);
                } else if (hp.this.f19653a == null || hp.this.f19653a.h() != 2) {
                    hp hpVar4 = hp.this;
                    hpVar4.jx(hpVar4.vq, hp.this.ea);
                } else {
                    hp hpVar5 = hp.this;
                    hpVar5.l(hpVar5.vq, hp.this.ea);
                }
            }
        });
    }

    @Override // com.byazt.su.jx
    public boolean ns() {
        return this.rz;
    }

    @Override // com.byazt.su.jx
    public void q() {
        eb ebVar = this.f19657j;
        if (ebVar != null) {
            ebVar.release();
            this.f19657j = null;
        }
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.q();
        }
        this.hp.removeCallbacks(this.kg);
        this.hp.removeCallbacksAndMessages(null);
        this.as = null;
        this.mp = null;
    }

    public void rz() {
        if (com.byazt.we.hp.hp(this.f19653a)) {
            int iCx = cx();
            boolean zHp = this.f19660n.hp(1024);
            long jLongValue = this.f19660n.l(1).longValue();
            if (zHp) {
                return;
            }
            this.f19660n.jx(1024);
            if (iCx == 1) {
                com.byazt.jdb.j.hp(this.f19653a, "rewarded_video", System.currentTimeMillis() - jLongValue, com.byazt.qvz.j.hp(this.f19666w));
            } else if (iCx == 2) {
                com.byazt.jdb.j.hp(this.f19653a, "fullscreen_interstitial_ad", System.currentTimeMillis() - jLongValue, com.byazt.qvz.j.hp(this.f19666w));
            }
        }
    }

    @Override // com.byazt.su.jx
    public void s() {
        com.byazt.tw.a aVar;
        a aVar2 = this.f19666w;
        if (aVar2 != null) {
            aVar2.hp();
            this.f19666w.sz();
            this.f19666w.b();
        }
        eb ebVar = this.f19657j;
        if (ebVar != null) {
            if (!ebVar.isPaused()) {
                this.su = 1;
                this.rv = false;
                this.f19657j.start(false, this.eb, this.xs);
            } else if (this.f19656e || (((aVar = this.ns) != null && aVar.isAudio()) || com.byazt.nwu.hp.l(this.f19653a))) {
                nu();
            } else {
                l(this.f19661o);
            }
        }
        if (!this.f19660n.hp(64) || jx() || j()) {
            if (this.f19660n.hp(2) || jl.hp(this.f19653a)) {
                pu();
            }
        }
    }

    @Override // com.byazt.su.jx
    public int v() {
        return com.byazt.xm.hp.hp(this.f19663s, this.f25883d);
    }

    @Override // com.byazt.fbd.hp
    public Map<String, Object> xh() {
        HashMap map = new HashMap();
        Map<String, Object> map2 = this.dy;
        if (map2 != null) {
            for (Map.Entry<String, Object> entry : map2.entrySet()) {
                map.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry<String, Object> entry2 : ky.hp(this.hq, this.f19653a, xs()).entrySet()) {
            map.put(entry2.getKey(), entry2.getValue());
        }
        return map;
    }

    public boolean yr() {
        eb ebVar = this.f19657j;
        return ebVar != null && ebVar.isPlaying();
    }

    @Override // com.byazt.su.jx
    public int zy() {
        eb ebVar = this.f19657j;
        if (ebVar == null) {
            return 0;
        }
        return ebVar.getBufferCount();
    }

    public void a(boolean z2) {
        if (wv() && this.f19666w != null) {
            this.hp.removeCallbacks(this.kg);
            w(0);
            this.f19666w.l();
            this.f25886ms = System.currentTimeMillis() - this.xh;
            this.f19666w.w(true);
            if (ky.q(this.f19653a)) {
                this.f19666w.hp2(this.f19653a, this.f19662q, true);
            } else {
                this.f19666w.o();
            }
            hd();
            jx.hp hpVar = this.as;
            if (hpVar != null) {
                hpVar.hp(this.f25886ms, com.byazt.xm.hp.hp(this.eb, this.f25883d));
            }
            zx();
            this.ec = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean eb(int i2) {
        mp mpVar;
        int iJx = vv.jx(sz.getContext());
        if (iJx != 4 && iJx != 0) {
            a();
            this.f19665v = true;
            this.f25885m = false;
            a aVar = this.f19666w;
            if (aVar != null && (mpVar = this.f19653a) != null) {
                return aVar.hp(i2, df.v(mpVar), true);
            }
        } else if (iJx == 4) {
            this.f19665v = false;
            a aVar2 = this.f19666w;
            if (aVar2 != null) {
                aVar2.sz();
            }
        }
        return true;
    }

    @Override // com.byazt.fbd.hp, com.byazt.su.jx
    public boolean w() {
        if (jl.hp(this.f19653a)) {
            return ((double) this.ky.get()) < ((double) df.xs(this.f19653a).eb());
        }
        return super.j();
    }

    @Override // com.byazt.su.jx
    public boolean jx() {
        return this.pu.get() > 0;
    }

    private void jx(com.byazt.tw.a aVar) throws Exception {
        if (aVar == null) {
            l("model is null");
            return;
        }
        this.ns = aVar;
        if (this.f19657j != null) {
            mp mpVar = this.f19653a;
            if (mpVar != null) {
                aVar.setCodeId(String.valueOf(ky.zy(mpVar)));
            }
            aVar.setScene(1);
            com.byazt.rk.jx.l(su());
            this.f19657j.setDataSource(aVar);
        }
        this.xh = System.currentTimeMillis();
        if (!TextUtils.isEmpty(aVar.getUrl())) {
            this.f19666w.w(8);
            this.f19666w.w(0);
            hp(new Runnable() { // from class: com.byazt.tm.hp.5
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    if (hp.this.f19657j == null) {
                        hp.this.l("play video error proxy empty");
                        return;
                    }
                    if (hp.this.f19660n.j(1)) {
                        hp.this.l("multi play_start");
                        return;
                    }
                    hp.this.f19660n.hp();
                    hp.this.ky();
                    hp.this.xh = System.currentTimeMillis();
                    hp.this.f19666w.j(0);
                    hp.this.su = 1;
                    hp.this.rv = false;
                    hp.this.qu = false;
                    com.byazt.rk.jx.hp(hp.this.su(), hp.this.su);
                    hp.this.f19657j.start(true, hp.this.eb, hp.this.xs);
                }
            });
            return;
        }
        l("url is null");
    }

    @Override // com.byazt.fbd.hp, com.byazt.su.jx
    public boolean j() {
        if (jl.hp(this.f19653a)) {
            return ((double) this.ky.get()) <= ((double) df.xs(this.f19653a).eb());
        }
        return super.j();
    }

    @Override // com.byazt.su.jx
    public void l() {
        if (this.f19657j != null) {
            if (!w()) {
                this.pu.getAndAdd(1);
                ms();
            }
            this.ky.getAndAdd(1);
            this.f19660n.hp();
            ky();
            hp(0L, true);
            jx(false);
            this.su = 2;
            this.rv = false;
            this.f19657j.restart();
        }
    }

    @Override // com.byazt.su.jx
    public void w(boolean z2) {
        this.nd = z2;
    }

    public void w(int i2) {
        Object obj;
        if (this.f19662q == null || !com.byazt.we.hp.hp(this.f19653a) || this.f19662q.get() == null || (obj = (Context) this.f19662q.get()) == null || !(obj instanceof com.byazt.ij.l)) {
            return;
        }
        ((com.byazt.ij.l) obj).hp(i2 == 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(int i2, int i3) {
        mp mpVar;
        try {
            WeakReference<Context> weakReference = this.f19662q;
            if (weakReference != null && weakReference.get() != null && vq() != null && this.f19657j != null && (mpVar = this.f19653a) != null) {
                boolean z2 = mpVar.wf() == 1;
                int[] iArrL = xh.l(sz.getContext());
                hp(iArrL[0], iArrL[1], i2, i3, z2);
            }
        } catch (Throwable unused) {
        }
    }

    @SuppressLint({"InflateParams"})
    private void hp(Context context) {
        EnumSet enumSetNoneOf = EnumSet.noneOf(l.hp.class);
        enumSetNoneOf.add(l.hp.hideCloseBtn);
        enumSetNoneOf.add(l.hp.hideBackBtn);
        a aVar = new a(context.getApplicationContext(), new LayoutVideoPlayLayoutForLive(context), true, enumSetNoneOf, this.f19653a, this, this.lv);
        this.f19666w = aVar;
        aVar.hp((com.byazt.su.hp) this);
    }

    public void j(int i2) {
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

    public void hp(long j2, boolean z2) {
        if (this.f19660n.hp(2)) {
            return;
        }
        this.hq = j2;
        e(z2);
        this.nu = true;
    }

    @Override // com.byazt.su.jx
    public void a() {
        eb ebVar = this.f19657j;
        if (ebVar != null) {
            ebVar.pause();
        }
        if (!this.f19660n.hp(64) || jx() || j()) {
            if (this.f19660n.hp(2) || jl.hp(this.f19653a)) {
                jx((Map<String, Object>) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void jx(int r12, int r13) {
        /*
            Method dump skipped, instructions count: 189
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.tm.hp.jx(int, int):void");
    }

    @Override // com.byazt.su.jx
    public void l(Map<String, Object> map) {
        this.dy = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2, int i3) {
        Throwable th;
        hp hpVar;
        try {
            WeakReference<Context> weakReference = this.f19662q;
            if (weakReference == null || weakReference.get() == null || vq() == null || this.f19657j == null || this.f19653a == null) {
                return;
            }
            int[] iArrL = xh.l(sz.getContext());
            boolean z2 = this.f19653a.wf() == 1;
            float f2 = iArrL[0];
            float f3 = iArrL[1];
            float f4 = i2;
            float f5 = i3;
            try {
                if (z2) {
                    if (f4 > f5) {
                        try {
                            hp(f2, f3, f4, f5, true);
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            u.hp("changeVideoSize", "changeVideoSizeByWidth error", th);
                        }
                    }
                    f3 = (f5 * f2) / f4;
                    hpVar = this;
                } else if (f4 < f5) {
                    hp(f2, f3, f4, f5, false);
                    return;
                } else {
                    hpVar = this;
                    f2 = (f4 * f3) / f5;
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) f2, (int) f3);
                layoutParams.addRule(13);
                if (hpVar.wv != null) {
                    Object objVq = vq();
                    if (objVq instanceof TextureView) {
                        ((TextureView) objVq).setLayoutParams(layoutParams);
                    } else if (objVq instanceof UpieVideoView) {
                        ((UpieVideoView) objVq).setLayoutParams(layoutParams);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                u.hp("changeVideoSize", "changeVideoSizeByWidth error", th);
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // com.byazt.su.jx
    public boolean hp(com.byazt.tw.a aVar) throws JSONException {
        if (aVar == null) {
            l("model is null");
            return false;
        }
        eb ebVar = this.f19657j;
        if (ebVar != null && ebVar.isPaused()) {
            this.f19657j.play();
            return true;
        }
        this.ns = aVar;
        aVar.getUrl();
        if (TextUtils.isEmpty(aVar.getUrl())) {
            u.l("BaseVideoController", "No video info");
            l("url is null");
            return false;
        }
        this.ud = (aVar.getUrl().startsWith("http") || com.byazt.we.hp.hp(this.f19653a)) ? false : true;
        this.xs = aVar.isQuiet();
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
            w(8);
            this.f19666w.eb();
            this.f19666w.jx(aVar.getWidth(), aVar.getHeight());
            this.f19666w.jx(this.wv);
        }
        try {
            if (this.f19657j == null) {
                if (!b()) {
                    l("create video error");
                    return false;
                }
                this.f19657j.addIVideoPlayerCallback(this.f25887r);
            }
            o();
            this.f25886ms = 0L;
            jx(aVar);
            return true;
        } catch (Throwable th) {
            l(th.getMessage());
            u.l("BaseVideoController", "create video error:" + th.getMessage());
            return false;
        }
    }

    private boolean a(int i2) {
        return this.f19666w.jx(i2);
    }

    @Override // com.byazt.su.hp
    public void j(com.byazt.su.l lVar, View view) throws JSONException {
        if (this.sz) {
            q(false);
            a aVar = this.f19666w;
            if (aVar != null) {
                aVar.l(this.wv);
            }
            j(1);
            return;
        }
        hp(1);
        hp(true, 3);
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
        this.f25883d = j3;
        this.f19666w.hp(j2, j3);
        int iHp = com.byazt.xm.hp.hp(j2, j3);
        if (!jx() && !j()) {
            this.f19666w.l(iHp);
        } else {
            this.f19666w.l(100);
        }
        try {
            jx.hp hpVar = this.as;
            if (hpVar != null) {
                hpVar.hp(j2, j3);
            }
            InterfaceC0374hp interfaceC0374hp = this.mp;
            if (interfaceC0374hp != null) {
                interfaceC0374hp.hp(j2, j3);
            }
        } catch (Throwable th) {
            u.hp("BaseVideoController", "onProgressUpdate error: ", th);
        }
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
    public void hp(jx.l lVar) {
        this.f25884f = new WeakReference<>(lVar);
    }

    @Override // com.byazt.su.jx
    public void hp(jx.hp hpVar) {
        this.as = hpVar;
    }

    @Override // com.byazt.su.jx
    public void hp(Map<String, Object> map) {
        eb ebVar = this.f19657j;
        if (ebVar != null) {
            ebVar.pause();
        }
        if (!this.f19660n.hp(64) || jx() || j()) {
            if (this.f19660n.hp(2) || jl.hp(this.f19653a)) {
                jx(map);
            }
        }
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
                    j(z2 ? 8 : 0);
                    a aVar = this.f19666w;
                    if (aVar != null) {
                        aVar.hp(this.wv);
                        this.f19666w.jx(false);
                    }
                } else {
                    j(1);
                    a aVar2 = this.f19666w;
                    if (aVar2 != null) {
                        aVar2.l(this.wv);
                        this.f19666w.jx(false);
                    }
                }
                WeakReference<jx.l> weakReference = this.f25884f;
                jx.l lVar2 = weakReference != null ? weakReference.get() : null;
                if (lVar2 != null) {
                    lVar2.hp(this.sz);
                }
            }
        }
    }

    @Override // com.byazt.su.jx
    public void hp(long j2) {
        this.eb = Math.max(j2, xs().getCurrentPosition());
        this.f19663s = Math.max(this.f19663s, gu());
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.hp();
        }
        eb ebVar = this.f19657j;
        if (ebVar != null) {
            this.su = 1;
            this.rv = false;
            ebVar.start(false, this.eb, this.xs);
            this.f19657j.seekTo(this.eb);
        }
    }

    @Override // com.byazt.su.jx
    public void hp(boolean z2, int i2) throws JSONException {
        l(i2);
        q();
    }

    private void l(long j2, boolean z2) {
        if (this.f19657j == null) {
            return;
        }
        if (z2) {
            ea();
        }
        this.f19657j.seekTo(j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(int i2, int i3) {
        ViewGroup viewGroup;
        try {
            if (vq() != null && this.f19657j != null && (viewGroup = this.wv) != null) {
                float f2 = i2;
                float f3 = i3;
                float width = viewGroup.getWidth();
                float f4 = f2 / (width * 1.0f);
                float height = this.wv.getHeight();
                if (f4 <= f3 / (height * 1.0f)) {
                    width = f2 * (height / (f3 * 1.0f));
                } else {
                    height = f3 * (width / (f2 * 1.0f));
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) width, (int) height);
                layoutParams.addRule(13);
                Object objVq = vq();
                if (objVq instanceof TextureView) {
                    ((TextureView) objVq).setLayoutParams(layoutParams);
                } else if (objVq instanceof UpieVideoView) {
                    ((UpieVideoView) objVq).setLayoutParams(layoutParams);
                }
            }
        } catch (Throwable th) {
            u.hp("changeVideoSize", "changeVideoSizeSupportInteraction error", th);
        }
    }

    @Override // com.byazt.su.jx
    public void l(com.byazt.tw.a aVar) {
        this.ns = aVar;
    }

    private void hp(float f2, float f3, float f4, float f5, boolean z2) {
        RelativeLayout.LayoutParams layoutParams;
        if (f4 <= 0.0f || f5 <= 0.0f) {
            try {
                f4 = df.j(this.f19653a);
                f5 = df.jx(this.f19653a);
            } catch (Throwable unused) {
                return;
            }
        }
        if (f5 > 0.0f && f4 > 0.0f) {
            if (z2) {
                if (f4 < f5) {
                    return;
                }
                layoutParams = new RelativeLayout.LayoutParams((int) f2, (int) ((f5 * f2) / f4));
            } else if (f4 > f5) {
                return;
            } else {
                layoutParams = new RelativeLayout.LayoutParams((int) ((f4 * f3) / f5), (int) f3);
            }
            layoutParams.addRule(13);
            Object objVq = vq();
            if (objVq instanceof TextureView) {
                ((TextureView) objVq).setLayoutParams(layoutParams);
            } else if (objVq instanceof UpieVideoView) {
                ((UpieVideoView) objVq).setLayoutParams(layoutParams);
            }
            this.f25888y = true;
        }
    }

    @Override // com.byazt.su.hp
    public void hp(com.byazt.su.l lVar, View view) {
        if (this.f19657j == null || !wv()) {
            return;
        }
        if (this.f19657j.isPlaying()) {
            a();
            this.f19666w.l(true, false);
            this.f19666w.a();
            return;
        }
        if (!this.f19657j.isPaused()) {
            a aVar = this.f19666w;
            if (aVar != null) {
                aVar.jx(this.wv);
            }
            hp(this.eb);
            a aVar2 = this.f19666w;
            if (aVar2 != null) {
                aVar2.l(false, false);
                return;
            }
            return;
        }
        s();
        a aVar3 = this.f19666w;
        if (aVar3 != null) {
            aVar3.l(false, false);
        }
    }

    @Override // com.byazt.su.hp
    public void hp(com.byazt.su.l lVar, int i2) {
        if (this.f19657j == null) {
            return;
        }
        l(this.fi, a(i2));
    }

    @Override // com.byazt.su.hp
    public void hp(com.byazt.su.l lVar, int i2, boolean z2) {
        if (wv()) {
            long j2 = (long) (((i2 * r0) * 1.0f) / 100.0f);
            if (this.f25883d > 0) {
                this.fi = (int) j2;
            } else {
                this.fi = 0L;
            }
            a aVar = this.f19666w;
            if (aVar != null) {
                aVar.hp(this.fi);
            }
        }
    }

    @Override // com.byazt.su.hp
    public void hp(com.byazt.su.l lVar, View view, boolean z2, boolean z3) {
        if (this.jl) {
            a();
        }
        if (z2 && !this.jl && !f()) {
            this.f19666w.l(!yr(), false);
            this.f19666w.hp(z3, true, false);
        }
        eb ebVar = this.f19657j;
        if (ebVar != null && ebVar.isPlaying()) {
            this.f19666w.a();
            this.f19666w.w();
        } else {
            this.f19666w.a();
        }
    }

    @Override // com.byazt.su.hp
    public void hp() {
        a aVar = this.f19666w;
        if (aVar != null) {
            aVar.w();
            this.f19666w.hp();
        }
        a aVar2 = this.f19666w;
        if (aVar2 != null) {
            aVar2.b();
        }
        hp(-1L);
    }

    @Override // com.byazt.oh.l
    public void hp(v.hp hpVar, String str) throws JSONException {
        int i2 = AnonymousClass8.hp[hpVar.ordinal()];
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
            this.f25885m = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Context context, int i2) {
        if (wv() && this.nr != i2) {
            if (!this.f25885m) {
                e.l().post(new Runnable() { // from class: com.byazt.tm.hp.6
                    @Override // java.lang.Runnable
                    public void run() {
                        hp.this.eb(2);
                    }
                });
            }
            this.nr = i2;
        }
    }

    @Override // com.byazt.su.jx
    public void hp(int i2) throws JSONException {
        if (com.byazt.we.hp.hp(this.f19653a)) {
            int iCx = cx();
            long jCurrentTimeMillis = System.currentTimeMillis() - this.hd;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("close_reason", Integer.valueOf(i2));
                jSONObject.putOpt("buffer_count", Integer.valueOf(zy()));
                jSONObject.putOpt("buffer_time", Long.valueOf(jl()));
            } catch (Exception unused) {
            }
            if (!this.f19660n.hp(512)) {
                this.f19660n.jx(512);
                if (iCx == 1) {
                    com.byazt.jdb.j.hp(this.f19653a, "rewarded_video", jCurrentTimeMillis, jSONObject, com.byazt.qvz.j.hp(this.f19666w));
                } else if (iCx == 2) {
                    com.byazt.jdb.j.hp(this.f19653a, "fullscreen_interstitial_ad", jCurrentTimeMillis, jSONObject, com.byazt.qvz.j.hp(this.f19666w));
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
            int iCx = cx();
            if (iCx == 1) {
                com.byazt.jdb.j.hp(this.f19653a, "rewarded_video", i2, str, com.byazt.qvz.j.hp(this.f19666w));
            } else if (iCx == 2) {
                com.byazt.jdb.j.hp(this.f19653a, "fullscreen_interstitial_ad", i2, str, com.byazt.qvz.j.hp(this.f19666w));
            }
        }
    }

    public void hp(InterfaceC0374hp interfaceC0374hp) {
        this.mp = interfaceC0374hp;
    }
}
