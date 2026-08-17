package com.byazt.iqm;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 687, 34})
/* loaded from: classes.dex */
public class l implements j, jx {
    public j hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f21185j;
    public jx jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.tgw.l f21186l;

    /* renamed from: w, reason: collision with root package name */
    public String f21187w;

    public l(int i2, PluginValueSet pluginValueSet, String str) {
        hp(i2, pluginValueSet, null);
        this.f21187w = str;
    }

    private void hp(int i2, PluginValueSet pluginValueSet, jx jxVar) {
        this.hp = new w(i2, pluginValueSet);
        this.jx = new hp();
    }

    @Override // com.byazt.iqm.j
    public void a(int i2) {
        j jVar = this.hp;
        if (jVar != null) {
            jVar.a(i2);
        }
    }

    @Override // com.byazt.iqm.j
    public boolean as() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.as();
        }
        return false;
    }

    @Override // com.byazt.iqm.j
    public int b() {
        j jVar;
        if (5 != ec() && 9 != ec()) {
            return 1;
        }
        com.byazt.tgw.l lVar = this.f21186l;
        int iSz = lVar != null ? lVar.sz() : 0;
        if (iSz == 0 && (jVar = this.hp) != null) {
            iSz = jVar.b();
        }
        if (iSz <= 0) {
            return 1;
        }
        if (iSz >= 3) {
            return 3;
        }
        return iSz;
    }

    @Override // com.byazt.iqm.j
    public int cx() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.cx();
        }
        return 0;
    }

    @Override // com.byazt.iqm.j
    public int d() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.d();
        }
        return 0;
    }

    @Override // com.byazt.iqm.j
    public boolean di() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.di();
        }
        return false;
    }

    @Override // com.byazt.iqm.j
    public String dy() {
        j jVar = this.hp;
        return jVar != null ? jVar.dy() : "";
    }

    @Override // com.byazt.iqm.jx
    public String e() {
        jx jxVar = this.jx;
        if (jxVar != null) {
            return jxVar.e();
        }
        return null;
    }

    public boolean ea() {
        return this.f21185j;
    }

    @Override // com.byazt.iqm.j
    public void eb(int i2) {
        j jVar = this.hp;
        if (jVar != null) {
            jVar.eb(i2);
        }
    }

    @Override // com.byazt.iqm.j
    public int ec() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.ec();
        }
        return 0;
    }

    public int f() {
        com.byazt.tgw.l lVar = this.f21186l;
        if (lVar != null) {
            return lVar.hd();
        }
        return 0;
    }

    public jx gu() {
        return this.jx;
    }

    public String hd() {
        com.byazt.tgw.l lVar = this.f21186l;
        return lVar != null ? lVar.nu() : "";
    }

    @Override // com.byazt.iqm.j
    public String hq() {
        j jVar = this.hp;
        return jVar != null ? jVar.hq() : "";
    }

    @Override // com.byazt.iqm.j
    public void j(String str) {
        j jVar = this.hp;
        if (jVar != null) {
            jVar.j(str);
        }
    }

    public String jl() {
        return this.f21187w;
    }

    @Override // com.byazt.iqm.jx
    public void jx(String str) {
        jx jxVar = this.jx;
        if (jxVar != null) {
            jxVar.jx(str);
        }
    }

    @Override // com.byazt.iqm.j
    public float k() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.k();
        }
        return 0.0f;
    }

    public long kg() {
        com.byazt.tgw.l lVar = this.f21186l;
        if (lVar != null) {
            return lVar.hq();
        }
        return 0L;
    }

    @Override // com.byazt.iqm.j
    public Map<String, Object> ky() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.ky();
        }
        return null;
    }

    @Override // com.byazt.iqm.jx
    public int l() {
        jx jxVar = this.jx;
        if (jxVar != null) {
            return jxVar.l();
        }
        return 0;
    }

    @Override // com.byazt.iqm.j
    public boolean lv() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.lv();
        }
        return false;
    }

    public double m() {
        com.byazt.tgw.l lVar = this.f21186l;
        if (lVar != null) {
            return lVar.n();
        }
        return 0.0d;
    }

    public String mp() {
        com.byazt.tgw.l lVar = this.f21186l;
        return lVar != null ? lVar.r() : "";
    }

    @Override // com.byazt.iqm.j
    public String ms() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.ms();
        }
        return null;
    }

    @Override // com.byazt.iqm.j
    public String n() {
        j jVar = this.hp;
        return jVar != null ? jVar.n() : "";
    }

    public int nd() {
        com.byazt.tgw.l lVar = this.f21186l;
        if (lVar != null) {
            return lVar.ud();
        }
        return 0;
    }

    @Override // com.byazt.iqm.j
    public int ns() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.ns();
        }
        return 0;
    }

    @Override // com.byazt.iqm.j
    public boolean nu() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.nu();
        }
        return false;
    }

    @Override // com.byazt.iqm.j
    public String o() {
        j jVar = this.hp;
        return jVar != null ? jVar.o() : "";
    }

    @Override // com.byazt.iqm.j
    public SparseArray<Object> pu() {
        j jVar = this.hp;
        return jVar != null ? jVar.pu() : com.byazt.xi.hp.hp.sparseArray();
    }

    @Override // com.byazt.iqm.jx
    public JSONObject q() {
        jx jxVar = this.jx;
        if (jxVar != null) {
            return jxVar.q();
        }
        return null;
    }

    @Override // com.byazt.iqm.j
    public Map<String, Object> r() {
        j jVar = this.hp;
        return jVar != null ? jVar.r() : new ConcurrentHashMap();
    }

    public String rz() {
        com.byazt.tgw.l lVar = this.f21186l;
        return lVar != null ? lVar.nd() : "";
    }

    @Override // com.byazt.iqm.jx
    public int s() {
        jx jxVar = this.jx;
        if (jxVar != null) {
            return jxVar.s();
        }
        return 0;
    }

    @Override // com.byazt.iqm.j
    public String sz() {
        j jVar = this.hp;
        return jVar != null ? jVar.sz() : "";
    }

    @Override // com.byazt.iqm.j
    public int u() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.u();
        }
        return -1;
    }

    @Override // com.byazt.iqm.j
    public int ud() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.ud();
        }
        return 0;
    }

    @Override // com.byazt.iqm.j
    public boolean v() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.v();
        }
        return false;
    }

    public boolean vq() {
        int iEc = ec();
        Map<String, Object> mapR = r();
        if (mapR == null) {
            return false;
        }
        Object obj = mapR.get("use_share_cache");
        return (obj instanceof Boolean) && (iEc == 3 || iEc == 1 || iEc == 5 || iEc == 10 || iEc == 7) && ((Boolean) obj).booleanValue();
    }

    @Override // com.byazt.iqm.j
    public com.byazt.aqw.hp vv() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.vv();
        }
        return null;
    }

    @Override // com.byazt.iqm.jx
    public void w(int i2) {
        jx jxVar = this.jx;
        if (jxVar != null) {
            jxVar.w(i2);
        }
    }

    @Override // com.byazt.iqm.j
    public String wv() {
        j jVar = this.hp;
        return jVar != null ? jVar.wv() : "";
    }

    public com.byazt.tgw.l xh() {
        return this.f21186l;
    }

    @Override // com.byazt.iqm.j
    public boolean xs() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.xs();
        }
        return false;
    }

    public int y() {
        com.byazt.tgw.l lVar = this.f21186l;
        if (lVar != null) {
            return lVar.hp();
        }
        return 0;
    }

    public int yr() {
        com.byazt.tgw.l lVar = this.f21186l;
        if (lVar != null) {
            return lVar.zx();
        }
        return 0;
    }

    public String zx() {
        com.byazt.tgw.l lVar = this.f21186l;
        return lVar != null ? lVar.ns() : "";
    }

    @Override // com.byazt.iqm.j
    public float zy() {
        j jVar = this.hp;
        if (jVar != null) {
            return jVar.zy();
        }
        return 0.0f;
    }

    @Override // com.byazt.iqm.jx
    public String a() {
        jx jxVar = this.jx;
        if (jxVar != null) {
            return jxVar.a();
        }
        return "";
    }

    @Override // com.byazt.iqm.jx
    public boolean eb() {
        jx jxVar = this.jx;
        if (jxVar != null) {
            return jxVar.eb();
        }
        return false;
    }

    @Override // com.byazt.iqm.jx
    public void hp(JSONObject jSONObject) {
        jx jxVar = this.jx;
        if (jxVar != null) {
            jxVar.hp(jSONObject);
        }
    }

    @Override // com.byazt.iqm.jx
    public int j() {
        jx jxVar = this.jx;
        if (jxVar != null) {
            return jxVar.j();
        }
        return 0;
    }

    @Override // com.byazt.iqm.jx
    public int jx() {
        jx jxVar = this.jx;
        if (jxVar != null) {
            return jxVar.jx();
        }
        return 0;
    }

    @Override // com.byazt.iqm.jx
    public void l(int i2) {
        jx jxVar = this.jx;
        if (jxVar != null) {
            jxVar.l(i2);
        }
    }

    @Override // com.byazt.iqm.jx
    public int w() {
        jx jxVar = this.jx;
        if (jxVar != null) {
            return jxVar.w();
        }
        return 0;
    }

    public l(l lVar) {
        if (lVar != null) {
            hp(lVar.ec(), com.byazt.xi.hp.hp(lVar.pu()).l(), lVar.gu());
            this.f21187w = lVar.jl();
        }
    }

    public void hp(com.byazt.tgw.l lVar) {
        this.f21186l = lVar;
    }

    @Override // com.byazt.iqm.jx
    public void j(int i2) {
        jx jxVar = this.jx;
        if (jxVar != null) {
            jxVar.j(i2);
        }
    }

    @Override // com.byazt.iqm.jx
    public void jx(int i2) {
        jx jxVar = this.jx;
        if (jxVar != null) {
            jxVar.jx(i2);
        }
    }

    @Override // com.byazt.iqm.jx
    public void l(String str) {
        jx jxVar = this.jx;
        if (jxVar != null) {
            jxVar.l(str);
        }
    }

    @Override // com.byazt.iqm.jx
    public String hp() {
        jx jxVar = this.jx;
        if (jxVar != null) {
            return jxVar.hp();
        }
        return "";
    }

    @Override // com.byazt.iqm.jx
    public void hp(String str) {
        jx jxVar = this.jx;
        if (jxVar != null) {
            jxVar.hp(str);
        }
    }

    @Override // com.byazt.iqm.jx
    public void hp(int i2) {
        jx jxVar = this.jx;
        if (jxVar != null) {
            jxVar.hp(i2);
        }
    }

    public void hp(PluginValueSet pluginValueSet) {
        if (this.hp == null || pluginValueSet == null) {
            return;
        }
        this.hp = new w(ec(), pluginValueSet);
    }

    public void hp(boolean z2) {
        this.f21185j = z2;
    }
}
