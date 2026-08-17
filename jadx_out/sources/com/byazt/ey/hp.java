package com.byazt.ey;

import android.content.Context;
import android.view.View;
import com.byazt.jz.s;
import com.byazt.pg.jl;
import com.byazt.xci.e;
import com.byazt.xci.hq;
import com.byazt.xci.mp;
import com.byazt.xci.q;
import com.byazt.ym.j;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 39, 28})
/* loaded from: classes2.dex */
public class hp extends l {

    /* renamed from: a, reason: collision with root package name */
    public Map<String, Object> f19553a;
    public String eb;
    public String gu;
    public com.byazt.tm.l jl;

    /* renamed from: s, reason: collision with root package name */
    public boolean f19556s;

    /* renamed from: w, reason: collision with root package name */
    public q f19557w;

    /* renamed from: q, reason: collision with root package name */
    public int f19555q = -1;

    /* renamed from: e, reason: collision with root package name */
    public int f19554e = -1;
    public boolean zy = false;

    public hp() {
    }

    private void a() {
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        long j2 = jxVarHp.get("click_to_live_duration", 0L);
        if (j2 == 0) {
            Map<String, Object> map = this.f19553a;
            if (map != null) {
                map.remove("click_livead_duration");
                return;
            }
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - j2;
        HashMap map2 = new HashMap();
        map2.put("click_livead_duration", Long.valueOf(jCurrentTimeMillis));
        hp(map2);
        jxVarHp.get("click_to_live_duration", 0L);
    }

    public void hp(boolean z2) {
        this.zy = z2;
    }

    public q j() {
        int i2 = this.f19555q;
        if (i2 != -1) {
            this.f19555q = -1;
        } else {
            i2 = -1;
        }
        jl jlVar = (jl) j.getService("device_info_new");
        float fA = xh.a(this.f24373l);
        int displayDpi = jlVar.getDisplayDpi();
        float fEb = xh.eb(this.f24373l);
        View viewE = this.jx.e();
        View viewQ = this.jx.q();
        return new q.hp().a(this.jx.xs()).w(this.jx.vv()).j(this.jx.ec()).jx(this.jx.sz()).l(this.jx.v()).hp(this.jx.u()).l(xh.hp(viewE)).hp(xh.hp(viewQ)).jx(xh.jx(viewE)).j(xh.jx(viewQ)).j(this.jx.w()).w(this.jx.a()).a(this.jx.eb()).hp(this.jx.zy()).jx(s.u().l() ? 1 : 2).hp(this.gu).hp(fA).l(displayDpi).l(fEb).eb(i2).s(this.f19554e).q(this.jx.ns()).w(this.jx.n()).hp(this.jx.j()).l(this.jx.l()).hp(this.jx.jx()).hp(com.byazt.fy.s.l(this.hp)).hp();
    }

    public String jx() {
        return this.gu;
    }

    public void l(boolean z2) {
        this.f19556s = z2;
    }

    public Map<String, Object> w() {
        return this.f19553a;
    }

    public void hp(String str) {
        this.eb = str;
    }

    public void l() {
        this.f19554e = 1;
    }

    public void hp() {
        this.f19555q = 1;
    }

    public void l(String str) {
        this.gu = str;
    }

    public void hp(q qVar) {
        this.f19557w = qVar;
    }

    public hp(mp mpVar, Context context) {
        this.hp = mpVar;
        this.f24373l = context;
        this.f19553a = new HashMap();
    }

    @Override // com.byazt.ey.l, com.byazt.pf.hp
    public int hp(Map<String, Object> map, com.byazt.pf.jx jxVar) {
        if (this.zy) {
            return 0;
        }
        com.byazt.tm.l lVar = this.jl;
        if (lVar != null && lVar.gu() == 1) {
            return 0;
        }
        if (this.jx == null) {
            this.jx = new e();
        }
        if ("splash_ad".equals(this.eb) || "cache_splash_ad".equals(this.eb) || "splash_ad_landingpage".equals(this.eb)) {
            this.f19555q = this.f19555q == 1 ? 1 : 0;
        }
        Object obj = map.get("convert_res");
        boolean zBooleanValue = obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false;
        if (this.f19557w == null) {
            this.f19557w = j();
        }
        Object obj2 = map.get("is_reward_live");
        if (obj2 instanceof Boolean ? ((Boolean) obj2).booleanValue() : false) {
            a();
        }
        if (map.containsKey("reward_browse_banner_from")) {
            this.f19553a.put("refer", "banner");
        }
        if (hq.hp(this.hp) && !com.byazt.am.j.hp(String.valueOf(ky.zy(this.hp))) && this.hp.wg() != null) {
            this.f19553a.put("refresh_num", Integer.valueOf(this.hp.wg().jx()));
        }
        Object obj3 = map.get("click_saas_action");
        if (obj3 != null && (obj3 instanceof Integer)) {
            this.f19553a.put("click_saas_action", obj3);
        }
        Object obj4 = map.get("click_saas_area");
        if (obj3 != null && (obj3 instanceof Integer)) {
            this.f19553a.put("click_saas_area", obj4);
        }
        hp(true);
        com.byazt.jdb.j.hp("click", this.hp, this.f19557w, this.eb, zBooleanValue, this.f19553a, this.jx.s() ? 1 : 2, this.f19556s, this.jx.hp());
        return 0;
    }

    public void hp(Map<String, Object> map) {
        Map<String, Object> map2 = this.f19553a;
        if (map2 == null) {
            this.f19553a = map;
        } else {
            map2.putAll(map);
        }
    }

    public void hp(com.byazt.tm.l lVar) {
        this.jl = lVar;
    }
}
