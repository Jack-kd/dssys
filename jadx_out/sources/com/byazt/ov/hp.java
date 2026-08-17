package com.byazt.ov;

import android.text.TextUtils;
import com.byazt.gg.a;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 707, 28})
/* loaded from: classes3.dex */
public abstract class hp {
    public static final HashSet<String> hp = new HashSet<>(Arrays.asList("convert", "dislike", "openAppPermission", "openAppPolicy", "openPrivacy", "openAppFunction", "close", "skip", "videoControl", "pauseVideo", "resumeVideo", "muteVideo", "preventEvent"));

    /* renamed from: a, reason: collision with root package name */
    public Map<String, Object> f24188a;
    public String eb;

    /* renamed from: j, reason: collision with root package name */
    public String f24189j;
    public com.byazt.xs.jx jx;

    /* renamed from: l, reason: collision with root package name */
    public a.hp f24190l;

    /* renamed from: s, reason: collision with root package name */
    public String f24191s;

    /* renamed from: w, reason: collision with root package name */
    public String f24192w;

    @com.byazt.kj.hp(hp = {0, 1, 707, 170})
    /* renamed from: com.byazt.ov.hp$hp, reason: collision with other inner class name */
    public static class C0332hp {
        public static hp hp(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
            if (hpVar == null) {
                return null;
            }
            com.byazt.gg.l lVarHp = com.byazt.gg.j.hp(hpVar.l());
            if (lVarHp == null && (TextUtils.isEmpty(hpVar.hp()) || !TextUtils.equals(hpVar.hp(), "global"))) {
                lVarHp = com.byazt.gg.j.hp(hpVar.w());
            }
            if (lVarHp == null) {
                return new jx(jxVar, str, hpVar);
            }
            hp hpVarHp = lVarHp.hp(jxVar, str, hpVar);
            return hpVarHp == null ? new jx(jxVar, str, hpVar) : hpVarHp;
        }
    }

    public hp(com.byazt.xs.jx jxVar, String str, a.hp hpVar) {
        this.jx = jxVar;
        this.f24190l = hpVar;
        this.eb = str;
        w();
    }

    private void w() {
        a.hp hpVar = this.f24190l;
        if (hpVar == null) {
            return;
        }
        this.f24189j = hpVar.hp();
        this.f24192w = this.f24190l.l();
        Map<String, Object> mapJx = this.f24190l.jx();
        this.f24188a = mapJx;
        if (mapJx == null || mapJx.isEmpty() || !this.f24188a.containsKey("emitCustomEvent") || !(this.f24188a.get("emitCustomEvent") instanceof String)) {
            return;
        }
        this.f24191s = (String) this.f24188a.get("emitCustomEvent");
    }

    public abstract void hp();

    public boolean j() {
        return !TextUtils.isEmpty(this.f24191s);
    }

    public void jx() {
        if (j()) {
            a.hp hpVar = new a.hp();
            hpVar.hp("custom");
            hpVar.l("emit");
            HashMap map = new HashMap();
            map.put("name", this.f24191s);
            hpVar.hp(map);
            new l(this.jx, this.f24192w, hpVar).hp();
        }
    }

    public void l() {
        jx();
    }
}
