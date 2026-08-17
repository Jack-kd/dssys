package com.byazt.kz;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.byazt.nke.dy;
import com.byazt.nke.ec;
import com.byazt.nke.nu;
import com.byazt.nke.pu;
import com.byazt.nke.ud;
import com.byazt.nke.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, 54})
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.nke.w f22257a;
    public vv eb;

    /* renamed from: l, reason: collision with root package name */
    public final ec f22259l;

    /* renamed from: q, reason: collision with root package name */
    public ud f22260q;

    /* renamed from: s, reason: collision with root package name */
    public ExecutorService f22261s;
    public Map<String, List<jx>> hp = new ConcurrentHashMap();
    public Map<String, nu> jx = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public Map<String, dy> f22258j = new HashMap();

    /* renamed from: w, reason: collision with root package name */
    public Map<String, com.byazt.nke.j> f22262w = new HashMap();

    public a(Context context, ec ecVar) {
        this.f22259l = (ec) s.hp(ecVar);
        if (context != null) {
            com.byazt.jn.hp.hp(context, ecVar.q());
        }
    }

    private com.byazt.nke.j a(com.byazt.nke.l lVar) {
        com.byazt.nke.j jVarEb = this.f22259l.eb();
        return jVarEb != null ? jVarEb : new com.byazt.aab.l(lVar.getCacheDir(), lVar.getFileCacheSize(), a());
    }

    private vv e() {
        vv vvVarHp = this.f22259l.hp();
        return vvVarHp != null ? vvVarHp : com.byazt.px.l.hp();
    }

    private ExecutorService gu() {
        ExecutorService executorServiceL = this.f22259l.l();
        return executorServiceL != null ? executorServiceL : com.byazt.px.jx.hp();
    }

    private nu j(com.byazt.nke.l lVar) {
        nu nuVarW = this.f22259l.w();
        return nuVarW != null ? com.byazt.gv.hp.hp(nuVarW) : com.byazt.gv.hp.hp(lVar.getMemoryCacheSize());
    }

    private ud jl() {
        ud udVarS = this.f22259l.s();
        return udVarS == null ? new eb() : udVarS;
    }

    private com.byazt.nke.w q() {
        com.byazt.nke.w wVarJ = this.f22259l.j();
        return wVarJ == null ? com.byazt.tf.l.hp() : wVarJ;
    }

    private dy w(com.byazt.nke.l lVar) {
        dy dyVarA = this.f22259l.a();
        return dyVarA != null ? dyVarA : com.byazt.gv.w.hp(lVar.getRawMemoryCacheSize());
    }

    public Map<String, List<jx>> eb() {
        return this.hp;
    }

    public Collection<nu> hp() {
        return this.jx.values();
    }

    public Collection<com.byazt.nke.j> jx() {
        return this.f22262w.values();
    }

    public Collection<dy> l() {
        return this.f22258j.values();
    }

    public ud s() {
        if (this.f22260q == null) {
            this.f22260q = jl();
        }
        return this.f22260q;
    }

    public nu hp(com.byazt.nke.l lVar) {
        if (lVar == null) {
            lVar = com.byazt.jn.hp.hp();
        }
        String string = lVar.getCacheDir().toString();
        nu nuVar = this.jx.get(string);
        if (nuVar != null) {
            return nuVar;
        }
        nu nuVarJ = j(lVar);
        this.jx.put(string, nuVarJ);
        return nuVarJ;
    }

    public com.byazt.nke.j jx(com.byazt.nke.l lVar) {
        if (lVar == null) {
            lVar = com.byazt.jn.hp.hp();
        }
        String string = lVar.getCacheDir().toString();
        com.byazt.nke.j jVar = this.f22262w.get(string);
        if (jVar != null) {
            return jVar;
        }
        com.byazt.nke.j jVarA = a(lVar);
        this.f22262w.put(string, jVarA);
        return jVarA;
    }

    public dy l(com.byazt.nke.l lVar) {
        if (lVar == null) {
            lVar = com.byazt.jn.hp.hp();
        }
        String string = lVar.getCacheDir().toString();
        dy dyVar = this.f22258j.get(string);
        if (dyVar != null) {
            return dyVar;
        }
        dy dyVarW = w(lVar);
        this.f22258j.put(string, dyVarW);
        return dyVarW;
    }

    public ExecutorService a() {
        ExecutorService executorServiceHp;
        pu puVarJx = this.f22259l.jx();
        if (puVarJx != null && (executorServiceHp = puVarJx.hp()) != null) {
            return executorServiceHp;
        }
        if (this.f22261s == null) {
            this.f22261s = gu();
        }
        return this.f22261s;
    }

    public vv w() {
        if (this.eb == null) {
            this.eb = e();
        }
        return this.eb;
    }

    public com.byazt.nke.w j() {
        if (this.f22257a == null) {
            this.f22257a = q();
        }
        return this.f22257a;
    }

    public com.byazt.nke.j hp(String str) {
        return jx(com.byazt.jn.hp.hp(new File(str)));
    }

    public com.byazt.uxh.hp hp(jx jxVar) {
        ImageView.ScaleType scaleType = jxVar.getScaleType();
        if (scaleType == null) {
            scaleType = com.byazt.uxh.hp.hp;
        }
        ImageView.ScaleType scaleType2 = scaleType;
        Bitmap.Config configJ = jxVar.j();
        if (configJ == null) {
            configJ = com.byazt.uxh.hp.f26472l;
        }
        return new com.byazt.uxh.hp(jxVar.getWidth(), jxVar.getHeight(), scaleType2, configJ, jxVar.hp(), jxVar.l());
    }
}
