package com.byazt.xci;

import android.graphics.Color;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1288})
/* loaded from: classes3.dex */
public class wt {

    /* renamed from: a, reason: collision with root package name */
    public int f27578a;
    public int eb;
    public l gu;
    public int hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27581j;
    public l jl;

    /* renamed from: k, reason: collision with root package name */
    public hp f27582k;

    /* renamed from: l, reason: collision with root package name */
    public String f27583l;

    /* renamed from: s, reason: collision with root package name */
    public int f27586s;

    /* renamed from: v, reason: collision with root package name */
    public int f27588v;

    /* renamed from: w, reason: collision with root package name */
    public int f27589w;
    public int zy;
    public boolean jx = false;

    /* renamed from: q, reason: collision with root package name */
    public String f27585q = "#008DEA";

    /* renamed from: e, reason: collision with root package name */
    public String f27580e = "点击查看";

    /* renamed from: u, reason: collision with root package name */
    public float f27587u = 0.0f;
    public int xs = 0;
    public int vv = 0;
    public int ec = 55;
    public int sz = 0;

    /* renamed from: n, reason: collision with root package name */
    public float f27584n = 0.0f;
    public int ns = 100;
    public int cx = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f27579b = 0;
    public int di = 0;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL})
    public class hp {
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public int f27590j;
        public int jx;

        /* renamed from: l, reason: collision with root package name */
        public int f27591l;

        public hp(JSONObject jSONObject, int i2) {
            this.hp = 30;
            this.f27591l = 30;
            this.jx = 150;
            this.f27590j = 40;
            if (jSONObject == null) {
                if (i2 == 2) {
                    this.jx = 40;
                    this.f27590j = 20;
                    return;
                }
                return;
            }
            int iOptInt = jSONObject.optInt("left_margin", 30);
            this.hp = iOptInt;
            if (iOptInt < 0 || iOptInt > wt.this.d()) {
                this.hp = 30;
            }
            int iOptInt2 = jSONObject.optInt("right_margin", 30);
            this.f27591l = iOptInt2;
            if (iOptInt2 < 0 || iOptInt2 > wt.this.d()) {
                this.f27591l = 30;
            }
            if (i2 == 2) {
                int iOptInt3 = jSONObject.optInt("top_margin", 40);
                this.jx = iOptInt3;
                if (iOptInt3 < 0 || iOptInt3 > wt.this.o()) {
                    this.jx = 40;
                }
                int iOptInt4 = jSONObject.optInt("bottom_margin", 20);
                this.f27590j = iOptInt4;
                if (iOptInt4 < 0 || iOptInt4 > wt.this.o()) {
                    this.f27590j = 20;
                    return;
                }
                return;
            }
            int iOptInt5 = jSONObject.optInt("top_margin", 150);
            this.jx = iOptInt5;
            if (iOptInt5 < 0 || iOptInt5 > wt.this.o()) {
                this.jx = 150;
            }
            int iOptInt6 = jSONObject.optInt("bottom_margin", 40);
            this.f27590j = iOptInt6;
            if (iOptInt6 < 0 || iOptInt6 > wt.this.o()) {
                this.f27590j = 40;
            }
        }

        public int hp() {
            return this.hp;
        }

        public int j() {
            return this.f27590j;
        }

        public int jx() {
            return this.jx;
        }

        public int l() {
            return this.f27591l;
        }

        public JSONObject w() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("left_margin", 30);
                jSONObject.put("right_margin", 30);
                jSONObject.put("top_margin", 150);
                jSONObject.put("bottom_margin", 40);
            } catch (Exception unused) {
            }
            return jSONObject;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1244})
    public class l {
        public int hp;

        public l(JSONObject jSONObject, int i2) {
            this.hp = 14;
            if (jSONObject == null) {
                return;
            }
            this.hp = jSONObject.optInt("font_size", i2);
        }

        public JSONObject hp() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("font_size", this.hp);
            } catch (Exception unused) {
            }
            return jSONObject;
        }

        public int l() {
            return this.hp;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int d() {
        return com.byazt.zn.xh.j(com.byazt.jz.sz.getContext(), com.byazt.zn.xh.j(com.byazt.jz.sz.getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int o() {
        return com.byazt.zn.xh.j(com.byazt.jz.sz.getContext(), com.byazt.zn.xh.w(com.byazt.jz.sz.getContext()));
    }

    public int a() {
        return this.eb;
    }

    public int b() {
        return this.di;
    }

    public int cx() {
        return this.f27579b;
    }

    public float di() {
        return this.f27584n;
    }

    public String e() {
        return this.f27585q;
    }

    public int eb() {
        return this.f27586s;
    }

    public int ec() {
        return this.ec;
    }

    public String gu() {
        return this.f27580e;
    }

    public int j() {
        return this.f27589w;
    }

    public l jl() {
        return this.gu;
    }

    public boolean jx() {
        return this.jx;
    }

    public hp k() {
        return this.f27582k;
    }

    public int n() {
        return this.ns;
    }

    public int ns() {
        return this.cx;
    }

    public int q() {
        if (this.f27581j == 4 && !com.byazt.jz.s.u().hp(com.byazt.jz.sz.getContext())) {
            this.f27581j = 0;
        } else if (this.f27581j == 7 && !com.byazt.jz.s.u().l(com.byazt.jz.sz.getContext())) {
            this.f27581j = 0;
        }
        return this.f27581j;
    }

    public int s() {
        return this.f27588v;
    }

    public int sz() {
        return this.sz;
    }

    public float u() {
        return this.f27587u;
    }

    public int v() {
        return this.zy;
    }

    public int vv() {
        return this.vv;
    }

    public int w() {
        return this.f27578a;
    }

    public int xs() {
        return this.xs;
    }

    public l zy() {
        return this.jl;
    }

    public void a(int i2) {
        this.f27588v = i2;
    }

    public void e(int i2) {
        this.vv = i2;
    }

    public void eb(int i2) {
        this.f27581j = i2;
    }

    public void gu(int i2) {
        this.ec = i2;
    }

    public int hp() {
        return this.hp;
    }

    public void j(int i2) {
        this.eb = i2;
    }

    public void jl(int i2) {
        this.sz = i2;
    }

    public void jx(int i2) {
        this.f27578a = i2;
    }

    public void k(int i2) {
        this.cx = i2;
    }

    public String l() {
        if (this.f27581j == 4 && !com.byazt.jz.s.u().hp(com.byazt.jz.sz.getContext())) {
            this.f27583l = "点击跳转至详情页或第三方应用";
        } else if (this.f27581j == 7 && !com.byazt.jz.s.u().l(com.byazt.jz.sz.getContext())) {
            this.f27583l = "点击跳转至详情页或第三方应用";
        }
        return this.f27583l;
    }

    public void s(int i2) {
        if (i2 <= 0 || i2 >= o()) {
            this.zy = 5;
        } else {
            this.zy = i2;
        }
    }

    public void u(int i2) {
        this.di = i2;
    }

    public void v(int i2) {
        this.f27579b = i2;
    }

    public void w(int i2) {
        this.f27586s = i2;
    }

    public void zy(int i2) {
        this.ns = i2;
    }

    public void hp(int i2) {
        this.hp = i2;
    }

    public void jx(String str) {
        if (TextUtils.isEmpty(str)) {
            int i2 = this.f27581j;
            if (i2 == 7) {
                this.f27580e = "扭动手机";
                return;
            } else if (i2 == 5) {
                this.f27580e = "向上滑动";
                return;
            } else {
                if (i2 == 4) {
                    this.f27580e = "摇一摇";
                    return;
                }
                return;
            }
        }
        this.f27580e = str;
    }

    public void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            this.jx = true;
            int i2 = this.f27581j;
            if (i2 == 3) {
                this.f27583l = "跳转至详情页或第三方应用";
                return;
            }
            if (i2 == 4) {
                this.f27583l = "前往详情页或第三方应用";
                return;
            } else if (i2 != 5 && i2 != 7) {
                this.f27583l = "点击跳转至详情页或第三方应用";
                return;
            } else {
                this.f27583l = "前往详情页或第三方应用";
                return;
            }
        }
        this.f27583l = str;
    }

    public void q(int i2) {
        this.xs = i2;
    }

    public void l(int i2) {
        this.f27589w = i2;
    }

    public void l(String str) {
        try {
            Color.parseColor(str);
            this.f27585q = str;
        } catch (Throwable unused) {
            this.f27585q = "#008DEA";
        }
    }

    public void l(JSONObject jSONObject) {
        this.jl = new l(jSONObject, 20);
    }

    public void hp(JSONObject jSONObject) {
        this.gu = new l(jSONObject, 14);
    }

    public void l(float f2) {
        this.f27584n = f2;
    }

    public void hp(JSONObject jSONObject, int i2) {
        this.f27582k = new hp(jSONObject, i2);
    }

    public void hp(float f2) {
        this.f27587u = f2;
    }
}
