package com.byazt.yrp;

import android.content.Context;
import com.byazt.xci.ux;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.n;
import com.umeng.analytics.pro.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_MASK_STREAM_OPENED_TIME, 38})
@com.byazt.cv.l
/* loaded from: classes3.dex */
public class j implements e, hp {

    /* renamed from: a, reason: collision with root package name */
    @com.byazt.cv.hp(hp = n.f36450m)
    public String f28234a;

    /* renamed from: e, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "landing_page_source")
    public int f28235e;

    @com.byazt.cv.hp(hp = g.f49337X)
    public Context eb;

    @com.byazt.cv.hp(hp = "path", l = "DSL")
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "wc_miniapp_info")
    public JSONObject f28236j;

    @com.byazt.cv.hp(hp = "type", l = "DSL")
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "name", l = "DSL")
    public String f28237l;

    /* renamed from: q, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "event_tag")
    public String f28238q;

    /* renamed from: s, reason: collision with root package name */
    @com.byazt.cv.hp(hp = "convert_from_landing_page")
    public boolean f28239s;

    /* renamed from: w, reason: collision with root package name */
    @com.byazt.cv.hp(hp = PointCategory.TARGET_URL)
    public String f28240w;

    @Override // com.byazt.yrp.e
    public ux A_() {
        return ux.hp(this.f28236j);
    }

    public int e() {
        return this.jx;
    }

    public String eb() {
        return this.hp;
    }

    public Context getContext() {
        return this.eb;
    }

    @Override // com.byazt.yrp.hp
    public Map<String, String> hp() {
        return new HashMap();
    }

    public int j() {
        return this.f28235e;
    }

    public String jx() {
        return this.f28238q;
    }

    public boolean l() {
        return this.f28239s;
    }

    public String q() {
        return this.f28237l;
    }

    @Override // com.byazt.yrp.e, com.byazt.yrp.s
    public String s() {
        return this.f28240w;
    }

    @Override // com.byazt.yrp.e, com.byazt.yrp.q, com.byazt.yrp.s
    public String w_() {
        return this.f28234a;
    }
}
