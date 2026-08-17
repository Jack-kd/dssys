package com.byazt.nw;

import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public float f23850a;

    /* renamed from: e, reason: collision with root package name */
    public List<s> f23851e;
    public float eb;
    public s gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public float f23852j;
    public List<List<s>> jl;
    public float jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f23853k;

    /* renamed from: l, reason: collision with root package name */
    public float f23854l;

    /* renamed from: q, reason: collision with root package name */
    public w f23855q;

    /* renamed from: s, reason: collision with root package name */
    public float f23856s;

    /* renamed from: w, reason: collision with root package name */
    public float f23859w;
    public String zy;

    /* renamed from: v, reason: collision with root package name */
    public Map<String, String> f23858v = new HashMap();

    /* renamed from: u, reason: collision with root package name */
    public Map<Integer, String> f23857u = new HashMap();

    public float a() {
        return this.f23854l;
    }

    public boolean b() {
        return this.f23855q.w().qh() < 0 || this.f23855q.w().t() < 0 || this.f23855q.w().tw() < 0 || this.f23855q.w().jd() < 0;
    }

    public String cx() {
        return this.f23855q.w().cx();
    }

    public w e() {
        return this.f23855q;
    }

    public float eb() {
        return this.jx;
    }

    public boolean ec() {
        return this.f23853k;
    }

    public List<s> gu() {
        return this.f23851e;
    }

    public String hp() {
        return this.zy;
    }

    public float j() {
        return this.f23852j;
    }

    public s jl() {
        return this.gu;
    }

    public String jx() {
        return this.hp;
    }

    public int k() {
        a aVarW = this.f23855q.w();
        return aVarW.f() + aVarW.yr();
    }

    public Map<Integer, String> l() {
        return this.f23857u;
    }

    public void n() {
        List<List<s>> list = this.jl;
        if (list == null || list.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (List<s> list2 : this.jl) {
            if (list2 != null && list2.size() > 0) {
                arrayList.add(list2);
            }
        }
        this.jl = arrayList;
    }

    public boolean ns() {
        return TextUtils.equals(this.f23855q.w().wv(), "flex");
    }

    public float q() {
        return this.eb;
    }

    public float s() {
        return this.f23850a;
    }

    public Map<String, String> sz() {
        return this.f23858v;
    }

    public String toString() {
        return "DynamicLayoutUnit{id='" + this.hp + "', x=" + this.f23854l + ", y=" + this.jx + ", width=" + this.f23850a + ", height=" + this.eb + ", remainWidth=" + this.f23856s + ", rootBrick=" + this.f23855q + ", childrenBrickUnits=" + this.f23851e + '}';
    }

    public float u() {
        a aVarW = this.f23855q.w();
        return k() + aVarW.xs() + aVarW.k() + (aVarW.jl() * 2.0f);
    }

    public float v() {
        a aVarW = this.f23855q.w();
        return zy() + aVarW.v() + aVarW.u() + (aVarW.jl() * 2.0f);
    }

    public boolean vv() {
        List<s> list = this.f23851e;
        return list == null || list.size() <= 0;
    }

    public float w() {
        return this.f23859w;
    }

    public List<List<s>> xs() {
        return this.jl;
    }

    public int zy() {
        a aVarW = this.f23855q.w();
        return aVarW.rz() + aVarW.nd();
    }

    public void a(float f2) {
        this.eb = f2;
    }

    public void eb(float f2) {
        this.f23856s = f2;
    }

    public void hp(String str) {
        this.zy = str;
    }

    public void j(float f2) {
        this.jx = f2;
    }

    public void jx(float f2) {
        this.f23854l = f2;
    }

    public void l(String str) {
        this.hp = str;
    }

    public void w(float f2) {
        this.f23850a = f2;
    }

    public void hp(JSONArray jSONArray) {
        if (jSONArray != null) {
            try {
                if (jSONArray.length() == 0) {
                    return;
                }
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                    this.f23857u.put(Integer.valueOf(jSONObjectOptJSONObject.optInt("id")), jSONObjectOptJSONObject.optString(f.a.f3244d));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void jx(String str) {
        this.f23855q.w().a(str);
    }

    public void l(float f2) {
        this.f23859w = f2;
    }

    public void l(List<List<s>> list) {
        this.jl = list;
    }

    public void hp(float f2) {
        this.f23852j = f2;
    }

    public void hp(w wVar) {
        this.f23855q = wVar;
    }

    public void hp(List<s> list) {
        this.f23851e = list;
    }

    public void hp(s sVar) {
        this.gu = sVar;
    }

    public void hp(boolean z2) {
        this.f23853k = z2;
    }

    public void hp(String str, String str2) {
        this.f23858v.put(str, str2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:9:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String hp(int r10) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.nw.s.hp(int):java.lang.String");
    }
}
