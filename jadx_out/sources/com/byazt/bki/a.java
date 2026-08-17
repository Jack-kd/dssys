package com.byazt.bki;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 732, 54})
/* loaded from: classes2.dex */
public class a {

    /* renamed from: s, reason: collision with root package name */
    public Map<String, String> f18560s;
    public final String hp = MediationConstant.TAG;

    /* renamed from: l, reason: collision with root package name */
    public String f18559l = "";
    public String jx = "";

    /* renamed from: j, reason: collision with root package name */
    public String f18558j = "";

    /* renamed from: w, reason: collision with root package name */
    public int f18561w = 0;

    /* renamed from: a, reason: collision with root package name */
    public String f18557a = "";
    public String eb = "";

    @Nullable
    public String a() {
        return this.f18557a;
    }

    @Nullable
    public String eb() {
        return this.eb;
    }

    public boolean equals(Object obj) {
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            a aVar = (a) obj;
            boolean z3 = w() == aVar.w() && TextUtils.equals(eb(), aVar.eb()) && TextUtils.equals(l(), aVar.l()) && TextUtils.equals(jx(), aVar.jx()) && TextUtils.equals(j(), aVar.j()) && TextUtils.equals(a(), aVar.a());
            Map<String, String> mapHp = aVar.hp();
            Map<String, String> map = this.f18560s;
            if (map != null && mapHp != null) {
                if (map.size() == mapHp.size()) {
                    for (String str : this.f18560s.keySet()) {
                        if (TextUtils.isEmpty(str) || TextUtils.equals(this.f18560s.get(str), mapHp.get(str))) {
                        }
                    }
                    z2 = true;
                }
                z2 = false;
                break;
            }
            if (map != null || mapHp != null) {
                z2 = false;
                break;
            }
            z2 = true;
            if (z3 && z2) {
                return true;
            }
        }
        return false;
    }

    public void hp(Map<String, String> map) {
        this.f18560s = new HashMap();
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry != null) {
                if (!a(entry.getKey())) {
                    com.byazt.ymw.u.l(MediationConstant.TAG, "流量分组" + entry.getKey() + "字段存在不合法输入");
                } else if (a(entry.getValue())) {
                    this.f18560s.put(entry.getKey(), entry.getValue());
                } else {
                    com.byazt.ymw.u.l(MediationConstant.TAG, "流量分组" + entry.getKey() + "字段的值" + entry.getValue() + "存在不合法输入");
                }
            }
        }
    }

    @Nullable
    public String j() {
        return this.f18558j;
    }

    @Nullable
    public String jx() {
        return this.jx;
    }

    @Nullable
    public String l() {
        return this.f18559l;
    }

    public int w() {
        return this.f18561w;
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("[A-Za-z0-9-_]{1,100}");
    }

    public void j(String str) {
        if (a(str)) {
            this.f18557a = str;
        } else {
            com.byazt.ymw.u.l(MediationConstant.TAG, "流量分组gender字段存在不合法输入");
        }
    }

    public void jx(String str) {
        if (a(str)) {
            this.f18558j = str;
        } else {
            com.byazt.ymw.u.l(MediationConstant.TAG, "流量分组sub_channer字段存在不合法输入");
        }
    }

    public void l(String str) {
        if (a(str)) {
            this.jx = str;
        } else {
            com.byazt.ymw.u.l(MediationConstant.TAG, "流量分组channer字段存在不合法输入");
        }
    }

    public void w(String str) {
        if (a(str)) {
            this.eb = str;
        } else {
            com.byazt.ymw.u.l(MediationConstant.TAG, "流量分组user_value_group字段存在不合法输入");
        }
    }

    @Nullable
    public Map<String, String> hp() {
        return this.f18560s;
    }

    public void hp(String str) {
        if (a(str)) {
            this.f18559l = str;
        } else {
            com.byazt.ymw.u.l(MediationConstant.TAG, "流量分组user_id字段存在不合法输入");
        }
    }

    public void hp(int i2) {
        this.f18561w = i2;
    }
}
