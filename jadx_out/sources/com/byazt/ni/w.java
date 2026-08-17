package com.byazt.ni;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.byazt.fn.IDownloadFileUriProvider;
import com.byazt.fn.IDownloadListener;
import com.byazt.fn.b;
import com.byazt.fn.k;
import com.byazt.fn.nu;
import com.byazt.fn.vv;
import com.byazt.fn.zy;
import com.byazt.oy.EnqueueType;
import com.byazt.yi.AdBaseConstants;
import com.byazt.yk.ec;
import com.byazt.yk.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public String f23620a;

    /* renamed from: b, reason: collision with root package name */
    public String f23621b;
    public boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public boolean f23622d;
    public String di;
    public int ea;
    public String eb;
    public s ec;

    /* renamed from: f, reason: collision with root package name */
    public IDownloadFileUriProvider f23624f;
    public boolean hd;
    public Activity hp;
    public int hq;

    /* renamed from: j, reason: collision with root package name */
    public List<String> f23625j;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public IDownloadListener f23626k;
    public b kg;

    /* renamed from: l, reason: collision with root package name */
    public Context f23627l;
    public boolean lv;

    /* renamed from: m, reason: collision with root package name */
    public com.byazt.f.a f23628m;
    public k mp;

    /* renamed from: ms, reason: collision with root package name */
    public int f23629ms;

    /* renamed from: n, reason: collision with root package name */
    public com.byazt.li.hp f23630n;
    public nu nd;
    public String nr;
    public boolean ns;
    public String nu;

    /* renamed from: o, reason: collision with root package name */
    public long f23631o;
    public String pc;
    public boolean pu;
    public boolean qu;

    /* renamed from: r, reason: collision with root package name */
    public boolean f23633r;
    public int[] rk;
    public int rv;
    public boolean rz;

    /* renamed from: s, reason: collision with root package name */
    public List<com.byazt.fu.jx> f23634s;
    public long su;
    public ec sz;
    public boolean ud;

    /* renamed from: v, reason: collision with root package name */
    public String f23636v;
    public com.byazt.yk.eb vv;

    /* renamed from: w, reason: collision with root package name */
    public String f23637w;
    public boolean xs;

    /* renamed from: y, reason: collision with root package name */
    public String f23638y;
    public vv yr;
    public JSONObject zx;
    public IDownloadListener zy;

    /* renamed from: q, reason: collision with root package name */
    public boolean f23632q = true;

    /* renamed from: e, reason: collision with root package name */
    public boolean f23623e = false;
    public boolean gu = true;
    public boolean jl = false;

    /* renamed from: u, reason: collision with root package name */
    public String f23635u = AdBaseConstants.MIME_APK;
    public int wv = 5;
    public boolean dy = true;
    public EnqueueType ky = EnqueueType.ENQUEUE_NONE;
    public int xh = 150;
    public boolean as = true;
    public List<zy> vq = new ArrayList();
    public boolean an = true;
    public boolean fi = true;

    public w(@NonNull Context context, @NonNull String str) {
        this.f23627l = context.getApplicationContext();
        this.jx = str;
    }

    public boolean a() {
        return this.f23623e;
    }

    public List<String> an() {
        return this.f23625j;
    }

    public b as() {
        return this.kg;
    }

    public int b() {
        return this.hq;
    }

    public int cx() {
        return this.wv;
    }

    public boolean d() {
        return this.dy;
    }

    public boolean di() {
        return this.ud;
    }

    public boolean dy() {
        return this.f23633r;
    }

    public IDownloadListener e() {
        return this.f23626k;
    }

    public int[] ea() {
        return this.rk;
    }

    public boolean eb() {
        return this.gu;
    }

    public int ec() {
        return this.rv;
    }

    public nu f() {
        return this.nd;
    }

    public JSONObject fi() {
        return this.zx;
    }

    public Activity getActivity() {
        return this.hp;
    }

    public Context getContext() {
        return this.f23627l;
    }

    public String gu() {
        return this.f23636v;
    }

    public int hd() {
        return this.ea;
    }

    public String hp() {
        return this.jx;
    }

    public ec hq() {
        return this.sz;
    }

    public List<com.byazt.fu.jx> j() {
        return this.f23634s;
    }

    public String jl() {
        return this.f23635u;
    }

    public String jx() {
        return this.eb;
    }

    public com.byazt.li.hp k() {
        return this.f23630n;
    }

    public k kg() {
        return this.mp;
    }

    public EnqueueType ky() {
        return this.ky;
    }

    public String l() {
        return this.f23637w;
    }

    public boolean lv() {
        return this.pu;
    }

    public IDownloadFileUriProvider m() {
        return this.f23624f;
    }

    public com.byazt.f.a mp() {
        return this.f23628m;
    }

    public String ms() {
        return this.f23620a;
    }

    public String n() {
        return this.di;
    }

    public boolean nd() {
        return this.hd;
    }

    public long ns() {
        return this.f23631o;
    }

    public int nu() {
        return this.f23629ms;
    }

    public String o() {
        return this.nu;
    }

    public vv pc() {
        return this.yr;
    }

    public boolean pu() {
        return this.rz;
    }

    public IDownloadListener q() {
        return this.zy;
    }

    public String qu() {
        return this.f23638y;
    }

    public boolean r() {
        return this.as;
    }

    public boolean rv() {
        return this.an;
    }

    public String rz() {
        return this.pc;
    }

    public boolean s() {
        return this.jl;
    }

    public boolean su() {
        return this.qu;
    }

    public String sz() {
        return this.f23621b;
    }

    public com.byazt.yk.eb u() {
        return this.vv;
    }

    public int ud() {
        return this.xh;
    }

    public s v() {
        return this.ec;
    }

    public String vq() {
        return this.nr;
    }

    public boolean vv() {
        return this.cx;
    }

    public boolean w() {
        return this.f23632q;
    }

    public boolean wv() {
        return this.lv;
    }

    public boolean xh() {
        return this.f23622d;
    }

    public boolean xs() {
        return this.ns;
    }

    public boolean y() {
        return this.fi;
    }

    public List<zy> yr() {
        return this.vq;
    }

    public long zx() {
        return this.su;
    }

    public boolean zy() {
        return this.xs;
    }

    public w a(String str) {
        this.f23635u = str;
        return this;
    }

    public w e(boolean z2) {
        this.lv = z2;
        return this;
    }

    public w eb(String str) {
        this.f23621b = str;
        return this;
    }

    public w gu(boolean z2) {
        this.f23633r = z2;
        return this;
    }

    public void hp(int i2) {
        this.rv = i2;
    }

    public w j(String str) {
        this.pc = str;
        return this;
    }

    public w jl(boolean z2) {
        this.pu = z2;
        return this;
    }

    public w jx(@NonNull String str) {
        this.eb = str;
        return this;
    }

    public w k(boolean z2) {
        this.f23622d = z2;
        return this;
    }

    public w l(String str) {
        this.f23620a = str;
        return this;
    }

    public w q(String str) {
        this.nu = str;
        return this;
    }

    public w s(String str) {
        this.di = str;
        return this;
    }

    public w u(boolean z2) {
        this.an = z2;
        return this;
    }

    public w v(boolean z2) {
        this.qu = z2;
        return this;
    }

    public w w(String str) {
        this.f23636v = str;
        return this;
    }

    public w zy(boolean z2) {
        this.as = z2;
        return this;
    }

    public w a(boolean z2) {
        this.cx = z2;
        return this;
    }

    public w e(String str) {
        this.nr = str;
        return this;
    }

    public w eb(boolean z2) {
        this.ud = z2;
        return this;
    }

    public w gu(String str) {
        this.f23638y = str;
        return this;
    }

    public w hp(String str) {
        this.f23637w = str;
        return this;
    }

    public w j(boolean z2) {
        this.xs = z2;
        return this;
    }

    public w jx(boolean z2) {
        this.jl = z2;
        return this;
    }

    public w l(boolean z2) {
        this.f23623e = z2;
        return this;
    }

    public w q(boolean z2) {
        this.dy = z2;
        return this;
    }

    public w s(boolean z2) {
        this.rz = z2;
        return this;
    }

    public w w(boolean z2) {
        this.ns = z2;
        return this;
    }

    public w a(int i2) {
        this.ea = i2;
        return this;
    }

    public w hp(List<com.byazt.fu.jx> list) {
        this.f23634s = list;
        return this;
    }

    public w j(int i2) {
        this.xh = i2;
        return this;
    }

    public w jx(int i2) {
        this.hq = i2;
        return this;
    }

    public w l(int i2) {
        this.wv = i2;
        return this;
    }

    public w w(int i2) {
        this.f23629ms = i2;
        return this;
    }

    public w hp(boolean z2) {
        this.f23632q = z2;
        return this;
    }

    public w l(List<String> list) {
        this.f23625j = list;
        return this;
    }

    public w hp(IDownloadListener iDownloadListener) {
        this.zy = iDownloadListener;
        return this;
    }

    public w hp(long j2) {
        this.f23631o = j2;
        return this;
    }

    public w hp(EnqueueType enqueueType) {
        this.ky = enqueueType;
        return this;
    }

    public w hp(IDownloadFileUriProvider iDownloadFileUriProvider) {
        this.f23624f = iDownloadFileUriProvider;
        return this;
    }

    public w hp(vv vvVar) {
        this.yr = vvVar;
        return this;
    }

    public w hp(JSONObject jSONObject) {
        this.zx = jSONObject;
        return this;
    }

    public w hp(zy zyVar) {
        synchronized (this.vq) {
            if (zyVar != null) {
                try {
                    if (!this.vq.contains(zyVar)) {
                        this.vq.add(zyVar);
                        return this;
                    }
                } finally {
                }
            }
            return this;
        }
    }
}
