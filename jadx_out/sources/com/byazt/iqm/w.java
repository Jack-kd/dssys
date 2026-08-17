package com.byazt.iqm;

import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 687, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w implements j {

    /* renamed from: a, reason: collision with root package name */
    public int f21188a = -1;
    public String eb = "";
    public com.byazt.aqw.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public int f21189j;
    public Map<String, Object> jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.aqw.l f21190l;

    /* renamed from: w, reason: collision with root package name */
    public PluginValueSet f21191w;

    public w(int i2, PluginValueSet pluginValueSet) {
        if (pluginValueSet == null) {
            com.byazt.aw.l.l("AdLinkInfo", "valueset is null");
            return;
        }
        this.f21191w = pluginValueSet;
        this.f21189j = i2;
        com.byazt.aqw.hp hpVar = new com.byazt.aqw.hp(pluginValueSet.sparseArray(), com.byazt.el.hp.l());
        this.hp = hpVar;
        this.f21190l = hpVar.wv();
    }

    @Override // com.byazt.iqm.j
    public void a(int i2) {
        this.f21188a = i2;
    }

    @Override // com.byazt.iqm.j
    public boolean as() {
        com.byazt.aqw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.d();
        }
        return false;
    }

    @Override // com.byazt.iqm.j
    public int b() {
        com.byazt.aqw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.jl();
        }
        return 1;
    }

    @Override // com.byazt.iqm.j
    public int cx() {
        com.byazt.aqw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.eb();
        }
        return 0;
    }

    @Override // com.byazt.iqm.j
    public int d() {
        com.byazt.aqw.l lVar;
        com.byazt.aqw.hp hpVar = this.hp;
        int iDi = hpVar != null ? hpVar.di() : 0;
        return (iDi != 0 || (lVar = this.f21190l) == null) ? iDi : lVar.v();
    }

    @Override // com.byazt.iqm.j
    public boolean di() {
        com.byazt.aqw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.e();
        }
        return false;
    }

    @Override // com.byazt.iqm.j
    public String dy() {
        Map<String, Object> mapA;
        com.byazt.aqw.l lVar = this.f21190l;
        if (lVar == null || (mapA = lVar.a()) == null) {
            return "";
        }
        Object obj = mapA.get("testToolSlotId");
        return obj instanceof String ? (String) obj : "";
    }

    @Override // com.byazt.iqm.j
    public void eb(int i2) {
        this.f21189j = i2;
    }

    @Override // com.byazt.iqm.j
    public int ec() {
        return this.f21189j;
    }

    @Override // com.byazt.iqm.j
    public String hq() {
        com.byazt.aqw.hp hpVar = this.hp;
        return hpVar != null ? hpVar.k() : "";
    }

    @Override // com.byazt.iqm.j
    public void j(String str) {
        this.eb = str;
    }

    @Override // com.byazt.iqm.j
    public float k() {
        com.byazt.aqw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.q();
        }
        return 0.0f;
    }

    @Override // com.byazt.iqm.j
    public Map<String, Object> ky() {
        com.byazt.aqw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.ud();
        }
        return null;
    }

    @Override // com.byazt.iqm.j
    public boolean lv() {
        com.byazt.aqw.l lVar = this.f21190l;
        if (lVar != null) {
            return lVar.eb();
        }
        return false;
    }

    @Override // com.byazt.iqm.j
    public String ms() {
        com.byazt.aqw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.hq();
        }
        return null;
    }

    @Override // com.byazt.iqm.j
    public String n() {
        com.byazt.aqw.l lVar = this.f21190l;
        return lVar != null ? lVar.s() : "";
    }

    @Override // com.byazt.iqm.j
    public int ns() {
        com.byazt.aqw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.a();
        }
        return 0;
    }

    @Override // com.byazt.iqm.j
    public boolean nu() {
        com.byazt.aqw.l lVar = this.f21190l;
        if (lVar != null) {
            return lVar.jx();
        }
        return false;
    }

    @Override // com.byazt.iqm.j
    public String o() {
        com.byazt.aqw.l lVar;
        com.byazt.aqw.hp hpVar = this.hp;
        String strB = hpVar != null ? hpVar.b() : "";
        return (!TextUtils.isEmpty(strB) || (lVar = this.f21190l) == null) ? strB : lVar.k();
    }

    @Override // com.byazt.iqm.j
    public SparseArray<Object> pu() {
        PluginValueSet pluginValueSet = this.f21191w;
        if (pluginValueSet != null) {
            return pluginValueSet.sparseArray();
        }
        return null;
    }

    @Override // com.byazt.iqm.j
    public Map<String, Object> r() {
        Map<String, Object> map = this.jx;
        if (map != null) {
            return map;
        }
        if (this.f21190l != null) {
            this.jx = new ConcurrentHashMap();
            Map<String, Object> mapA = this.f21190l.a();
            if (mapA != null && mapA.size() > 0) {
                for (Map.Entry<String, Object> entry : mapA.entrySet()) {
                    if (entry.getKey() != null && entry.getValue() != null) {
                        this.jx.put(entry.getKey(), entry.getValue());
                    }
                }
            }
        }
        if (this.jx == null) {
            this.jx = new ConcurrentHashMap();
        }
        return this.jx;
    }

    @Override // com.byazt.iqm.j
    public String sz() {
        if (!TextUtils.isEmpty(this.eb)) {
            return this.eb;
        }
        com.byazt.aqw.hp hpVar = this.hp;
        return hpVar != null ? hpVar.j() : "";
    }

    @Override // com.byazt.iqm.j
    public int u() {
        return this.f21188a;
    }

    @Override // com.byazt.iqm.j
    public int ud() {
        com.byazt.aqw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.v();
        }
        return 0;
    }

    @Override // com.byazt.iqm.j
    public boolean v() {
        com.byazt.aqw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.gu();
        }
        return false;
    }

    @Override // com.byazt.iqm.j
    public com.byazt.aqw.hp vv() {
        return this.hp;
    }

    @Override // com.byazt.iqm.j
    public String wv() {
        com.byazt.aqw.hp hpVar = this.hp;
        return hpVar != null ? hpVar.zy() : "";
    }

    @Override // com.byazt.iqm.j
    public boolean xs() {
        com.byazt.aqw.l lVar = this.f21190l;
        if (lVar != null) {
            return lVar.q();
        }
        return false;
    }

    @Override // com.byazt.iqm.j
    public float zy() {
        com.byazt.aqw.hp hpVar = this.hp;
        if (hpVar != null) {
            return hpVar.s();
        }
        return 0.0f;
    }
}
