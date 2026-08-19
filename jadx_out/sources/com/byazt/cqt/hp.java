package com.byazt.cqt;

import android.os.Build;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.lca.j;
import com.byazt.ny.jx;
import com.byazt.ny.l;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2036, 28})
/* loaded from: classes2.dex */
public class hp {
    public static hp hp = new hp();

    /* renamed from: l, reason: collision with root package name */
    public volatile int f18958l = -1;
    public volatile long jx = 0;

    /* renamed from: j, reason: collision with root package name */
    public volatile long f18957j = 0;

    private hp() {
    }

    public static hp hp() {
        return hp;
    }

    public int a() {
        if (!s.u().j()) {
            return 0;
        }
        if (this.f18958l == -1) {
            int iU = j.hp().u();
            if (iU != -1) {
                this.f18958l = iU;
            } else if (sz.l().h() == null) {
                this.f18958l = 1;
            } else {
                this.f18958l = 2;
            }
        }
        return this.f18958l;
    }

    public void j() {
        JSONObject jSONObjectH = sz.l().h();
        if (jSONObjectH == null) {
            this.f18958l = 1;
        }
        if (hp(jSONObjectH)) {
            new jx().hp(jSONObjectH, this.f18958l);
        } else if (l(jSONObjectH)) {
            new l().hp(jSONObjectH, this.f18958l);
        } else {
            this.f18958l = 1;
        }
    }

    public long jx() {
        return this.f18957j;
    }

    public long l() {
        return this.jx;
    }

    public boolean w() {
        return this.f18958l == 0 || this.f18958l == 3;
    }

    public void hp(long j2, long j3) {
        this.jx = j2;
        this.f18957j = j3;
    }

    public boolean l(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONObject != null && (jSONArrayOptJSONArray = jSONObject.optJSONArray("callback")) != null && jSONArrayOptJSONArray.length() != 0) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                if (hp(jSONArrayOptJSONArray.optString(i2))) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean hp(String str) {
        String str2 = Build.MANUFACTURER;
        String str3 = Build.BRAND;
        if (str2 != null && str3 != null) {
            return str2.equalsIgnoreCase(str) || str3.equalsIgnoreCase(str);
        }
        if (str2 != null) {
            return str2.equalsIgnoreCase(str);
        }
        if (str3 != null) {
            return str3.equalsIgnoreCase(str);
        }
        return false;
    }

    public void hp(int i2) {
        if (this.f18958l != i2) {
            j.hp().a(i2);
        }
        this.f18958l = i2;
    }

    public boolean hp(JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray;
        if (jSONObject != null && (jSONArrayOptJSONArray = jSONObject.optJSONArray("register")) != null && jSONArrayOptJSONArray.length() != 0) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                if (hp(jSONArrayOptJSONArray.optString(i2))) {
                    return true;
                }
            }
        }
        return false;
    }
}
