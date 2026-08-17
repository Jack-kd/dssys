package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1671})
/* loaded from: classes3.dex */
public class x extends zy {

    /* renamed from: a, reason: collision with root package name */
    public String f27594a;

    /* renamed from: e, reason: collision with root package name */
    public int f27595e;
    public int eb;
    public int gu;

    /* renamed from: j, reason: collision with root package name */
    public String f27596j;
    public int jl;
    public int jx;

    /* renamed from: k, reason: collision with root package name */
    public int f27597k;

    /* renamed from: l, reason: collision with root package name */
    public int f27598l;

    /* renamed from: q, reason: collision with root package name */
    public int f27599q;

    /* renamed from: s, reason: collision with root package name */
    public int f27600s;

    /* renamed from: v, reason: collision with root package name */
    public Map<String, x> f27601v;

    /* renamed from: w, reason: collision with root package name */
    public String f27602w;
    public int zy;

    public x(JSONObject jSONObject, int i2) {
        if (jSONObject == null) {
            return;
        }
        this.f27598l = jSONObject.optInt("render_sequence");
        this.jx = jSONObject.optInt("displayAreaAndroid");
        this.f27596j = jSONObject.optString("ugen_md5");
        this.f27602w = jSONObject.optString("ugen_id");
        this.f27594a = jSONObject.optString("ugen_url");
        this.gu = jSONObject.optInt("if_stay_top", 0);
        this.eb = jSONObject.optInt("need_backup_convert_area", 0);
        this.f27600s = jSONObject.optInt("min_height", 0);
        this.f27599q = jSONObject.optInt("min_width", 0);
        this.f27595e = jSONObject.optInt("min_ratio", 0);
        this.jl = jSONObject.optInt("mode");
        this.zy = jSONObject.optInt("render_control", 0);
        this.f27597k = jSONObject.optInt("creative_type", 0);
        this.hp = i2;
        hp(jSONObject.optJSONObject("config"));
    }

    private void hp(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.f27601v = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
            if (jSONObjectOptJSONObject != null) {
                this.f27601v.put(next, new x(jSONObjectOptJSONObject, 5));
            }
        }
    }

    public int a() {
        return this.gu;
    }

    public String e() {
        return this.f27594a;
    }

    public int eb() {
        return this.jl;
    }

    public boolean gu() {
        return this.eb == 1;
    }

    @Override // com.byazt.xci.zy
    public int j() {
        return this.jx;
    }

    public boolean jl() {
        return !TextUtils.isEmpty(this.f27594a);
    }

    @Override // com.byazt.xci.zy
    public int jx() {
        return this.f27598l;
    }

    public String q() {
        return this.f27596j;
    }

    public int s() {
        return this.zy;
    }

    @Override // com.byazt.xci.zy
    public String w() {
        return this.f27602w;
    }

    public boolean hp(int i2, int i3) {
        int iJ = com.byazt.zn.xh.j(com.byazt.jz.sz.getContext(), i2);
        int iJ2 = com.byazt.zn.xh.j(com.byazt.jz.sz.getContext(), i3);
        int i4 = this.f27599q;
        if (i4 != 0 && iJ < i4) {
            return false;
        }
        int i5 = this.f27600s;
        if (i5 == 0 || iJ2 >= i5) {
            return iJ == 0 || iJ2 == 0 || ((float) iJ2) / ((float) iJ) >= ((float) this.f27595e);
        }
        return false;
    }
}
