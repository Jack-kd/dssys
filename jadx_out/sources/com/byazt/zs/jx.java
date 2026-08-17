package com.byazt.zs;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import com.baidu.mobads.sdk.api.PrerollVideoResponse;
import com.byazt.hm.Swiper;
import com.byazt.ql.v;
import com.byazt.xa.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MASK_STREAM_OPEN_TIME, 30})
@Deprecated
/* loaded from: classes3.dex */
public class jx extends com.byazt.xs.hp<Swiper> {
    public float ad;
    public boolean db;
    public float fu;
    public String gb;
    public int gh;

    /* renamed from: h, reason: collision with root package name */
    public float f28592h;

    /* renamed from: i, reason: collision with root package name */
    public int f28593i;
    public com.byazt.xs.jx jb;
    public float ld;
    public JSONArray nc;
    public boolean pg;
    public float qa;
    public float vx;
    public boolean xv;

    /* renamed from: z, reason: collision with root package name */
    public String f28594z;

    public jx(Context context) {
        super(context);
        this.xv = true;
        this.pg = true;
        this.f28592h = 0.0f;
        this.ad = 2000.0f;
        this.f28594z = PrerollVideoResponse.NORMAL;
        this.db = true;
        this.gh = Color.parseColor("#666666");
        this.f28593i = Color.parseColor("#ffffff");
    }

    @Override // com.byazt.xs.jx
    public void hp(JSONObject jSONObject) {
    }

    @Override // com.byazt.xs.hp, com.byazt.xs.jx
    public void l() throws JSONException, Resources.NotFoundException {
        super.l();
        JSONArray jSONArray = this.nc;
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        ((Swiper) this.f27788w).s((int) this.vx).q((int) this.fu).e((int) this.ld).jx(this.db).a(this.f28593i).eb(this.gh).jx(this.f28594z).j(this.xv).w(this.qa).hp(this.pg).j((int) this.ad).jx(this.db);
        for (int i2 = 0; i2 < this.nc.length(); i2++) {
            v vVar = new v(this.f27777l);
            vVar.hp(this.ux);
            com.byazt.xs.jx<View> jxVarL = vVar.l(this.jb.wv(), null);
            vVar.l(this.nc.optJSONObject(i2));
            ((Swiper) this.f27788w).hp((Swiper) jxVarL);
        }
        if (this.pg) {
            ((Swiper) this.f27788w).jx();
        }
    }

    @Override // com.byazt.xs.jx
    public View hp() {
        Swiper swiper = new Swiper(this.f27777l);
        this.f27788w = swiper;
        swiper.hp((j) this);
        return this.f27788w;
    }

    @Override // com.byazt.xs.hp
    public void hp(com.byazt.xs.jx jxVar) {
        this.jb = jxVar;
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.getClass();
        switch (str) {
            case "delayStart":
                this.f28592h = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "indicatorColor":
                this.gh = com.byazt.xa.hp.hp(str2);
                break;
            case "nextMargin":
                this.ld = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 0.0f));
                break;
            case "effect":
                this.f28594z = str2;
                break;
            case "direction":
                this.gb = str2;
                break;
            case "indicator":
                this.db = com.byazt.xa.jx.hp(str2, true);
                break;
            case "previousMargin":
                this.fu = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 0.0f));
                break;
            case "loop":
                this.xv = com.byazt.xa.jx.hp(str2, true);
                break;
            case "speed":
                this.ad = com.byazt.xa.jx.hp(str2, 500.0f);
                break;
            case "pageCount":
                this.qa = com.byazt.xa.jx.hp(str2, 1.0f);
                break;
            case "pageMargin":
                this.vx = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 0.0f));
                break;
            case "indicatorSelectedColor":
                this.f28593i = com.byazt.xa.hp.hp(str2);
                break;
            case "autoplay":
                this.pg = com.byazt.xa.jx.hp(str2, true);
                break;
            case "dataList":
                this.nc = com.byazt.xa.l.hp(this.f27775j, str2, null);
                break;
        }
    }
}
