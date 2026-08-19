package com.byazt.zs;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.gg.a;
import com.byazt.gg.q;
import com.byazt.hm.Swiper;
import com.byazt.ql.a;
import com.byazt.ql.v;
import com.byazt.xa.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MASK_STREAM_OPEN_TIME, 34})
/* loaded from: classes3.dex */
public class l extends com.byazt.xs.hp<Swiper> implements com.byazt.hm.hp {
    public float ad;
    public boolean be;
    public boolean cs;
    public String db;
    public int fu;

    /* renamed from: g, reason: collision with root package name */
    public int f28595g;
    public int gb;
    public String gh;
    public boolean gv;
    public float gy;

    /* renamed from: h, reason: collision with root package name */
    public float f28596h;

    /* renamed from: i, reason: collision with root package name */
    public float f28597i;
    public float jb;
    public int jw;
    public int ld;
    public String ly;
    public float nc;
    public int nl;
    public float pf;
    public boolean pg;
    public float qa;
    public float ti;
    public JSONArray tn;
    public float tr;
    public boolean vt;
    public boolean vx;
    public boolean xv;

    /* renamed from: z, reason: collision with root package name */
    public float f28598z;

    public l(Context context) {
        super(context);
        this.gb = 0;
        this.xv = true;
        this.pg = true;
        this.f28596h = 500.0f;
        this.ad = -1.0f;
        this.f28598z = 2000.0f;
        this.db = "slide";
        this.gh = "dot";
        this.f28597i = 8.0f;
        this.qa = 8.0f;
        this.nc = 50.0f;
        this.jb = 90.0f;
        this.vx = false;
        this.fu = Color.parseColor("#666666");
        this.ld = Color.parseColor("#ffffff");
        this.ly = "row";
        this.gy = 1.0f;
        this.tr = 0.0f;
        this.pf = 0.0f;
        this.ti = 0.0f;
        this.jw = 0;
        this.f28595g = 0;
        this.vt = true;
        this.cs = false;
        this.gv = true;
        float fHp = s.hp(this.f27777l, 8.0f);
        this.f28597i = fHp;
        this.qa = fHp;
    }

    private void a(int i2) {
        if (this.ov == null) {
            return;
        }
        if (this.nl == 0 && i2 == qu() - 1) {
            this.ov.hp("SwiperView://reloop", 1);
        }
        if (this.nl == qu() - 1 && i2 == 0) {
            this.ov.hp("SwiperView://reloop", 0);
        }
    }

    private void eb(int i2) {
        q qVar = this.ov;
        if (qVar == null) {
            return;
        }
        qVar.hp("SwiperView://slide", Integer.valueOf(this.nl), Integer.valueOf(i2), Integer.valueOf(!this.be ? 1 : 0));
    }

    private int qu() {
        if (this.jw == 1) {
            List<com.byazt.xs.jx<View>> list = ((com.byazt.xs.hp) this).hp;
            if (list != null) {
                return list.size();
            }
            return 0;
        }
        JSONArray jSONArray = this.tn;
        if (jSONArray != null) {
            return jSONArray.length();
        }
        return 0;
    }

    private void rv() throws JSONException {
        for (int i2 = 0; i2 < ((com.byazt.xs.hp) this).hp.size(); i2++) {
            com.byazt.xs.jx<View> jxVar = ((com.byazt.xs.hp) this).hp.get(i2);
            if (jxVar != null) {
                v vVar = new v(this.f27777l);
                hp(vVar);
                vVar.hp(this.ux);
                ((Swiper) this.f27788w).hp((Swiper) vVar.hp(jxVar.wv(), this.f27775j, (JSONObject) null));
            }
        }
    }

    private void su() {
        List<com.byazt.xs.jx<View>> list = ((com.byazt.xs.hp) this).hp;
        if (list == null || list.isEmpty()) {
            return;
        }
        com.byazt.xs.jx<View> jxVar = ((com.byazt.xs.hp) this).hp.get(0);
        if (this.tn == null) {
            return;
        }
        for (int i2 = 0; i2 < this.tn.length(); i2++) {
            v vVar = new v(this.f27777l);
            hp(vVar);
            vVar.hp(this.ux);
            try {
                JSONObject jSONObjectOptJSONObject = this.tn.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    if (jSONObjectOptJSONObject.has("$chunk")) {
                        this.f27775j.put("$item", jSONObjectOptJSONObject.optJSONArray("$chunk"));
                    } else {
                        this.f27775j.put("$item", jSONObjectOptJSONObject);
                    }
                    ((Swiper) this.f27788w).hp((Swiper) vVar.hp(jxVar.wv(), this.f27775j, (JSONObject) null));
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.xs.jx
    public View hp() {
        Swiper swiper = new Swiper(this.f27777l);
        this.f27788w = swiper;
        swiper.hp((j) this);
        return this.f27788w;
    }

    @Override // com.byazt.xs.hp, com.byazt.xs.jx
    public void l() throws JSONException, Resources.NotFoundException {
        super.l();
        ((Swiper) this.f27788w).jx((int) this.f28596h).w(this.cs).hp(this.gh).hp(this.f28597i).l(this.qa).jx(this.nc).j(this.jb).l(this.ly).hp(this.gb).l().j(this.xv).hp(this.pg).l((int) this.f28596h).j((int) this.f28598z).w((int) this.ad).l(this.vt).jx(this.vx).eb(this.fu).a(this.ld).q((int) this.pf).e((int) this.ti).s((int) this.tr).w(this.gy).jx(this.db).k(this.f28595g);
        ((Swiper) this.f27788w).setOnPageChangeListener(this);
        if (this.jw == 1) {
            rv();
        } else {
            su();
        }
        ((Swiper) this.f27788w).jx();
    }

    @Override // com.byazt.xs.hp
    public void hp(com.byazt.xs.jx jxVar) {
        if (jxVar == null) {
            return;
        }
        ((com.byazt.xs.hp) this).hp.add(jxVar);
    }

    @Override // com.byazt.xs.hp
    public void hp(com.byazt.xs.jx jxVar, ViewGroup.LayoutParams layoutParams) {
        if (jxVar == null) {
            return;
        }
        ((com.byazt.xs.hp) this).hp.add(jxVar);
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.getClass();
        switch (str) {
            case "startDelay":
                this.ad = com.byazt.xa.jx.hp(str2, -1.0f);
                break;
            case "startIndex":
                this.f28595g = com.byazt.xa.jx.hp(str2, 0);
                break;
            case "indicatorColor":
                this.fu = com.byazt.xa.hp.hp(str2, this.fu);
                break;
            case "indicatorStyle":
                this.gh = str2;
                break;
            case "indicatorWidth":
                this.f28597i = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 8.0f));
                break;
            case "indicatorHeight":
                this.qa = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 8.0f));
                break;
            case "nextMargin":
                this.ti = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 0.0f));
                break;
            case "driveMode":
                this.jw = com.byazt.xa.jx.hp(str2, 0);
                break;
            case "effect":
                this.db = str2;
                break;
            case "direction":
                if (TextUtils.equals(str2, "vertical")) {
                    this.gb = 1;
                    break;
                } else {
                    this.gb = 0;
                    break;
                }
            case "disableOnInteraction":
                this.cs = com.byazt.xa.jx.hp(str2, false);
                break;
            case "indicator":
                this.vx = com.byazt.xa.jx.hp(str2, false);
                break;
            case "indicatorX":
                this.nc = com.byazt.xa.jx.hp(str2, 50.0f);
                break;
            case "indicatorY":
                this.jb = com.byazt.xa.jx.hp(str2, 90.0f);
                break;
            case "previousMargin":
                this.pf = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 0.0f));
                break;
            case "loop":
                this.xv = com.byazt.xa.jx.hp(str2, true);
                break;
            case "delay":
                this.f28598z = com.byazt.xa.jx.hp(str2, 2000.0f);
                break;
            case "speed":
                this.f28596h = com.byazt.xa.jx.hp(str2, 500.0f);
                break;
            case "indicatorDirection":
                this.ly = str2;
                break;
            case "allowTouchMove":
                this.vt = com.byazt.xa.jx.hp(str2, true);
                break;
            case "pageCount":
                this.gy = com.byazt.xa.jx.hp(str2, 1.0f);
                break;
            case "pageMargin":
                this.tr = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 0.0f));
                break;
            case "indicatorSelectedColor":
                this.ld = com.byazt.xa.hp.hp(str2, this.ld);
                break;
            case "autoplay":
                this.pg = com.byazt.xa.jx.hp(str2, true);
                break;
            case "dataList":
                this.tn = com.byazt.xa.l.hp(this.f27775j, str2, null);
                break;
        }
    }

    @Override // com.byazt.hm.hp
    public void hp(boolean z2, int i2, float f2, int i3) {
        hp(z2, i2, f2);
    }

    @Override // com.byazt.hm.hp
    public void hp(boolean z2, int i2, int i3, boolean z3, boolean z4) {
        if (this.nl != i2) {
            a(i2);
            eb(i2);
            this.nl = i2;
        }
    }

    @Override // com.byazt.hm.hp
    public void hp(boolean z2, int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return;
            }
            this.be = true;
        } else {
            if (!z2) {
                this.gv = true;
            }
            this.be = false;
        }
    }

    private void hp(boolean z2, int i2, float f2) {
        if (this.ov != null && !z2 && i2 == qu() - 1 && f2 == 0.0f && this.gv) {
            this.ov.hp("SwiperView://finish", new Object[0]);
            this.gv = false;
        }
    }

    private void hp(v vVar) {
        if (this.cs) {
            vVar.hp(new a() { // from class: com.byazt.zs.l.1
                @Override // com.byazt.ql.a
                public void hp(com.byazt.xs.jx jxVar, String str, List<a.hp> list) {
                    if ((TextUtils.equals(str, "tap") || TextUtils.equals(str, "slide") || TextUtils.equals(str, "touchStart") || TextUtils.equals(str, "touchEnd")) && l.this.f27788w != null) {
                        ((Swiper) l.this.f27788w).w();
                    }
                }
            });
        }
    }
}
