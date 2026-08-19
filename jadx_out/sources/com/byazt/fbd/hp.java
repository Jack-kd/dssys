package com.byazt.fbd;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import com.byazt.cw.SSRenderTextureView;
import com.byazt.dnb.gu;
import com.byazt.dnb.jl;
import com.byazt.jo.xs;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.nc.hp;
import com.byazt.oh.l;
import com.byazt.pg.r;
import com.byazt.qvz.j;
import com.byazt.su.jx;
import com.byazt.tv.UpieVideoView;
import com.byazt.tw.a;
import com.byazt.tw.w;
import com.byazt.um.eb;
import com.byazt.um.w;
import com.byazt.xci.mp;
import com.byazt.ymw.e;
import com.byazt.ymw.ud;
import com.byazt.zn.ky;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1904, 28})
/* loaded from: classes2.dex */
public abstract class hp implements jx, r.hp, hp.InterfaceC0317hp, l {

    /* renamed from: a, reason: collision with root package name */
    public mp f19653a;

    /* renamed from: b, reason: collision with root package name */
    public volatile String f19654b;
    public InterfaceC0222hp cx;
    public com.byazt.tw.l di;
    public List<Runnable> gu;

    /* renamed from: j, reason: collision with root package name */
    public eb f19657j;
    public SurfaceTexture jx;

    /* renamed from: l, reason: collision with root package name */
    public SurfaceHolder f19659l;
    public a ns;

    /* renamed from: q, reason: collision with root package name */
    public WeakReference<Context> f19662q;

    /* renamed from: u, reason: collision with root package name */
    public long f19664u;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.oh.a f19666w;
    public final ud hp = new ud(Looper.getMainLooper(), this);
    public long eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public long f19663s = 0;

    /* renamed from: e, reason: collision with root package name */
    public boolean f19656e = false;
    public boolean jl = true;
    public long zy = 0;

    /* renamed from: k, reason: collision with root package name */
    public boolean f19658k = false;

    /* renamed from: v, reason: collision with root package name */
    public boolean f19665v = false;
    public boolean xs = false;
    public volatile boolean vv = false;
    public boolean ec = false;
    public boolean sz = false;

    /* renamed from: n, reason: collision with root package name */
    public com.byazt.qvz.hp f19660n = new com.byazt.qvz.hp();

    /* renamed from: o, reason: collision with root package name */
    public Runnable f19661o = new Runnable() { // from class: com.byazt.fbd.hp.1
        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = hp.this.f19656e;
            hp.this.nu();
        }
    };

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f19655d = new AtomicBoolean(false);

    /* renamed from: com.byazt.fbd.hp$hp, reason: collision with other inner class name */
    public interface InterfaceC0222hp {
        void hp(long j2, long j3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        ArrayList arrayList = new ArrayList(this.gu);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((Runnable) obj).run();
        }
        this.gu.clear();
    }

    private boolean cx() {
        com.byazt.oh.a aVar = this.f19666w;
        if (aVar == null) {
            return false;
        }
        com.byazt.cw.l lVarXs = aVar.xs();
        return (lVarXs instanceof SSRenderTextureView) || (lVarXs instanceof UpieVideoView);
    }

    public boolean d() {
        return true;
    }

    @Override // com.byazt.su.jx
    /* renamed from: dy, reason: merged with bridge method [inline-methods] */
    public com.byazt.oh.a vv() {
        return this.f19666w;
    }

    public void e(boolean z2) {
        xs.hp hpVar = new xs.hp();
        hpVar.l(true);
        hpVar.jx(z2);
        a aVarL = j.l(this.f19666w);
        if (aVarL != null) {
            aVarL.putExtra("EXTRA_PLAY_START", xh());
        }
        jx(this.f19666w, hpVar);
    }

    @Override // com.byazt.su.jx
    public boolean ec() {
        return this.xs;
    }

    @Override // com.byazt.nc.hp.InterfaceC0317hp
    public boolean getHasUseCustomizeVideo() {
        return false;
    }

    @Override // com.byazt.nc.hp.InterfaceC0317hp
    public com.byazt.nc.hp getVideoModel() {
        com.byazt.nc.hp hpVar = new com.byazt.nc.hp();
        hpVar.eb = this.eb;
        hpVar.hp = sz();
        hpVar.f23533s = ec();
        hpVar.f23531j = n();
        return hpVar;
    }

    @Override // com.byazt.su.jx
    public long gu() {
        return this.eb;
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
    }

    public boolean hq() throws JSONException {
        if ((!this.f19666w.zy() || !this.f19656e) && !jl.hp(this.f19653a) && !com.byazt.nwu.hp.l(this.f19653a)) {
            l("not exec pending");
            return false;
        }
        s(false);
        ud();
        return true;
    }

    @Override // com.byazt.su.jx
    public boolean j() {
        return false;
    }

    @Override // com.byazt.su.jx
    public long jl() {
        if (xs() == null) {
            return 0L;
        }
        return xs().getTotalBufferTime();
    }

    @Override // com.byazt.su.jx
    public void jx(long j2) {
        this.zy = j2;
    }

    @Override // com.byazt.su.jx
    public long k() {
        eb ebVar = this.f19657j;
        if (ebVar == null) {
            return 0L;
        }
        return ebVar.getVideoDuration();
    }

    public void ky() {
        if (this.ns == null) {
            return;
        }
        this.f19654b = j.hp();
        com.byazt.tw.l lVar = this.di;
        if (lVar != null) {
            lVar.l(this.f19654b);
        }
        this.f19660n.jx(1);
        this.ns.putExtra("EXTRA_PLAY_START", xh());
        j.hp(this.f19653a, (com.byazt.wn.hp) this.f19666w, this.ns, true, this.f19654b);
    }

    @Override // com.byazt.su.jx
    public void l(long j2) {
        this.eb = j2;
        long j3 = this.f19663s;
        if (j3 > j2) {
            j2 = j3;
        }
        this.f19663s = j2;
    }

    public boolean lv() {
        return this.jl;
    }

    public void nu() {
        this.hp.postAtFrontOfQueue(new Runnable() { // from class: com.byazt.fbd.hp.3
            @Override // java.lang.Runnable
            public void run() {
                hp hpVar = hp.this;
                if (hpVar.f19657j != null) {
                    boolean z2 = hpVar.f19656e;
                    hp.this.f19657j.play();
                }
            }
        });
    }

    public void o() {
        if (this.f19657j == null) {
            return;
        }
        if (cx()) {
            SurfaceTexture surfaceTexture = this.jx;
            if (surfaceTexture == null || surfaceTexture == this.f19657j.getSurfaceTexture()) {
                return;
            }
            this.f19657j.setSurface(this.jx);
            return;
        }
        SurfaceHolder surfaceHolder = this.f19659l;
        if (surfaceHolder == null || surfaceHolder == this.f19657j.getSurfaceHolder()) {
            return;
        }
        this.f19657j.setDisplay(this.f19659l);
    }

    public void pu() {
        xs.hp hpVar = new xs.hp();
        hpVar.hp(gu());
        hpVar.jx(k());
        hpVar.l(jl());
        a aVarL = j.l(this.f19666w);
        if (aVarL != null) {
            aVarL.putExtra("EXTRA_PLAY_ACTION", xh());
        }
        l(vv(), hpVar);
    }

    public void q(boolean z2) {
        this.sz = z2;
    }

    public void r() {
        xs.hp hpVar = new xs.hp();
        hpVar.hp(gu());
        hpVar.jx(k());
        hpVar.l(jl());
        hpVar.a(zy());
        a aVarL = j.l(this.f19666w);
        if (aVarL != null) {
            aVarL.putExtra("EXTRA_PLAY_ACTION", xh());
        }
        j.j(this.f19666w, hpVar);
    }

    public void s(boolean z2) {
        this.vv = z2;
    }

    @Override // com.byazt.su.jx
    public boolean sz() {
        return this.ec;
    }

    @Override // com.byazt.su.jx
    public boolean u() {
        return this.f19665v;
    }

    public void ud() {
        List<Runnable> list = this.gu;
        if (list == null || list.isEmpty() || this.vv) {
            return;
        }
        e.l().post(new Runnable() { // from class: com.byazt.fbd.hp.2
            @Override // java.lang.Runnable
            public void run() {
                hp.this.b();
            }
        });
    }

    @Override // com.byazt.su.jx
    public boolean w() {
        return false;
    }

    public boolean wv() {
        WeakReference<Context> weakReference = this.f19662q;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    public Map<String, Object> xh() {
        return null;
    }

    @Override // com.byazt.su.jx
    public eb xs() {
        return this.f19657j;
    }

    public com.byazt.tw.l hp(String str) throws JSONException {
        mp mpVar;
        if (!sz.l().ns() || (mpVar = this.f19653a) == null) {
            return null;
        }
        long cachedSize = gu.hp(mpVar.qe()).getCachedSize(this.ns);
        int iHp = j.hp(this.f19653a, this.ns, cachedSize);
        w currentVideoInfo = this.ns.getCurrentVideoInfo();
        double video_duration = currentVideoInfo != null ? currentVideoInfo.getVideo_duration() : -1.0d;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("video_source", str);
        } catch (JSONException unused) {
        }
        return new w.hp().hp("video_life").hp(ky.jl(this.f19653a)).j(ky.hp(this.f19653a, "")).jx(this.f19653a.ns()).l(this.f19653a.j()).l(this.f19653a.qe()).jx(iHp).hp(cachedSize).hp(video_duration).j(this.f19653a.ja()).hp(jSONObject).hp();
    }

    @Override // com.byazt.su.jx
    public void j(long j2) {
        this.f19664u = j2;
    }

    @Override // com.byazt.su.jx
    public void jx(boolean z2) {
        this.ec = z2;
    }

    public void jx(Map<String, Object> map) {
        xs.hp hpVar = new xs.hp();
        hpVar.hp(gu());
        hpVar.jx(k());
        hpVar.l(jl());
        a aVarL = j.l(this.f19666w);
        if (aVarL != null) {
            aVarL.putExtra("EXTRA_PLAY_ACTION", xh());
        }
        if (map != null) {
            hpVar.hp(map);
        }
        hp(this.f19666w, hpVar);
    }

    public void l(Runnable runnable) {
        if (this.gu == null) {
            this.gu = new ArrayList();
        }
        this.gu.add(runnable);
    }

    @Override // com.byazt.su.hp
    public void l(com.byazt.su.l lVar, SurfaceTexture surfaceTexture) {
        this.f19656e = false;
        eb ebVar = this.f19657j;
        if (ebVar != null) {
            ebVar.setSurfaceValid(false);
        }
        this.jx = null;
        ud();
    }

    public void jx(com.byazt.wn.hp hpVar, xs.hp hpVar2) {
        this.f19660n.jx(2);
        j.hp(hpVar, hpVar2);
    }

    @Override // com.byazt.su.jx
    public void l(boolean z2) {
        this.xs = z2;
        eb ebVar = this.f19657j;
        if (ebVar != null) {
            ebVar.setQuietPlay(z2);
        }
    }

    public void jx(int i2) {
        eb ebVar = this.f19657j;
        if (ebVar != null) {
            ebVar.setUpdateProgressInterval(i2);
        }
    }

    public void l(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("error", str);
        } catch (JSONException unused) {
        }
        k.hp().hp("video", jSONObject, (Throwable) null);
    }

    public void l(int i2) throws JSONException {
        if (this.f19660n.j(1)) {
            if (!this.jl) {
                i2 *= 10;
            }
            hp(-900001, i2, "only play start", (JSONArray) null);
        }
        JSONArray jSONArray = new JSONArray();
        if (this.f19660n.hp(1)) {
            return;
        }
        String strL = ky.l(this.f19653a);
        JSONObject jSONObjectHp = hp(4, strL);
        if (jSONObjectHp != null) {
            jSONArray.put(jSONObjectHp);
        }
        JSONObject jSONObjectHp2 = hp(2, strL);
        if (jSONObjectHp2 != null) {
            jSONArray.put(jSONObjectHp2);
        }
        JSONObject jSONObjectHp3 = hp(8, strL);
        if (jSONObjectHp3 != null) {
            jSONArray.put(jSONObjectHp3);
        }
        JSONObject jSONObjectHp4 = hp(32, strL);
        if (jSONObjectHp4 != null) {
            jSONArray.put(jSONObjectHp4);
        }
        JSONObject jSONObjectHp5 = hp(64, strL);
        if (jSONObjectHp5 != null) {
            jSONArray.put(jSONObjectHp5);
        }
        JSONObject jSONObjectHp6 = hp(128, strL);
        if (jSONObjectHp6 != null) {
            jSONArray.put(jSONObjectHp6);
        }
        hp(-900002, -701, "lack play start", jSONArray);
    }

    public static com.byazt.tw.l hp(mp mpVar) throws JSONException {
        if (!sz.l().ns() || mpVar == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("video_source", "assist");
        } catch (JSONException unused) {
        }
        return new w.hp().hp("video_life").hp(ky.jl(mpVar)).j(ky.hp(mpVar, "")).jx(mpVar.ns()).l(mpVar.j()).l(mpVar.qe()).jx(-1).hp(-1L).hp(-1.0d).j(mpVar.ja()).hp(jSONObject).hp();
    }

    public void l(com.byazt.wn.hp hpVar, xs.hp hpVar2) {
        this.f19660n.jx(8);
        j.l(vv(), hpVar2);
    }

    public void hp(Runnable runnable) {
        if (runnable == null || this.f19653a == null) {
            return;
        }
        if ((!this.f19666w.zy() || !this.f19656e) && !jl.hp(this.f19653a) && !com.byazt.nwu.hp.l(this.f19653a)) {
            l(runnable);
        } else {
            runnable.run();
        }
    }

    @Override // com.byazt.su.hp
    public void hp(com.byazt.su.l lVar, SurfaceTexture surfaceTexture) {
        this.f19656e = true;
        this.jx = surfaceTexture;
        eb ebVar = this.f19657j;
        if (ebVar != null) {
            ebVar.setSurface(surfaceTexture);
            this.f19657j.setSurfaceValid(this.f19656e);
        }
        ud();
    }

    @Override // com.byazt.su.jx
    public void hp(boolean z2) {
        this.jl = z2;
        com.byazt.oh.a aVar = this.f19666w;
        if (aVar != null) {
            aVar.j(z2);
        }
    }

    public void hp(int i2, int i3, String str, JSONArray jSONArray) {
        if (this.f19662q == null) {
            return;
        }
        xs.hp hpVar = new xs.hp();
        hpVar.l(jl());
        hpVar.jx(k());
        hpVar.hp(gu());
        hpVar.hp(i2);
        hpVar.l(i3);
        hpVar.hp(jSONArray);
        if (this.f19660n.hp(256)) {
            return;
        }
        this.f19660n.jx(256);
        j.hp(vv(), hpVar, str, !this.f19660n.hp(2) ? 1 : 0, this.f19660n.hp(128));
    }

    private JSONObject hp(int i2, String str) throws JSONException {
        String str2;
        try {
            if (this.f19660n.hp(128)) {
                str2 = "endcard_skip";
            } else if (this.f19660n.hp(8)) {
                str2 = "feed_continue";
            } else if (this.f19660n.hp(4)) {
                str2 = "feed_pause";
            } else if (this.f19660n.hp(2)) {
                str2 = "feed_play";
            } else if (this.f19660n.hp(64)) {
                str2 = "feed_over";
            } else {
                str2 = this.f19660n.hp(32) ? "feed_break" : null;
            }
            if (!TextUtils.isEmpty(str2)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("tag", str);
                jSONObject.putOpt("label", str2);
                jSONObject.putOpt("time", this.f19660n.l(i2));
                return jSONObject;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public void hp(com.byazt.wn.hp hpVar, xs.hp hpVar2) {
        this.f19660n.jx(4);
        j.hp(this.f19666w, hpVar2, !this.f19660n.hp(2) ? 1 : 0);
    }

    public void hp(InterfaceC0222hp interfaceC0222hp) {
        this.cx = interfaceC0222hp;
    }

    public void hp(long j2, long j3) {
        if (!this.f19655d.get() && sz.l().tq() && (j2 * 1.0d) / j3 > 0.3d) {
            this.f19655d.set(true);
            com.byazt.mb.jx.jx().hp("videoPercent30", this.f19653a);
        }
    }
}
