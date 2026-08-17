package com.byazt.lyn;

import android.text.TextUtils;
import com.anythink.core.common.f.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 94})
/* loaded from: classes3.dex */
public class eb extends j {

    /* renamed from: a, reason: collision with root package name */
    public List<w> f22824a;

    /* renamed from: e, reason: collision with root package name */
    public hp f22825e;
    public String eb;

    /* renamed from: q, reason: collision with root package name */
    public final String f22826q;

    /* renamed from: s, reason: collision with root package name */
    public final String f22827s;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_START_TIME, 131})
    public static class hp {
        public String hp;
        public String jx;

        /* renamed from: l, reason: collision with root package name */
        public String f22828l;

        public hp(String str, String str2, String str3) {
            this.hp = str;
            this.f22828l = str2;
            this.jx = str3;
        }
    }

    public eb(String str, String str2, String str3, String str4, int i2, String str5) {
        super(str, str2, str3, str4, i2);
        this.f22827s = "count";
        this.f22826q = "effective_time";
        this.eb = str5;
        if (TextUtils.isEmpty(str2)) {
            this.f22825e = new hp("waterfall_show_freq", "waterfall_show_span", "waterfall_show_rule_id");
        } else {
            this.f22825e = new hp("freq", "span", a.C0051a.f3218o);
        }
    }

    public String e() throws JSONException {
        try {
            JSONArray jSONArray = new JSONArray();
            for (w wVar : gu()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(this.f22825e.hp, wVar.hp());
                jSONObject.put(this.f22825e.f22828l, wVar.l());
                jSONObject.put(this.f22825e.jx, wVar.jx());
                jSONObject.put("count", wVar.w());
                jSONObject.put("effective_time", wVar.j());
                jSONArray.put(jSONObject);
            }
            this.eb = jSONArray.toString();
        } catch (JSONException unused) {
        }
        return this.eb;
    }

    public synchronized List<w> gu() {
        eb ebVarE;
        List<w> list = this.f22824a;
        if (list != null && list.size() != 0) {
            return this.f22824a;
        }
        this.f22824a = new ArrayList();
        if (this.eb == null && (ebVarE = zy.hp().e(this.hp)) != null) {
            this.eb = ebVarE.eb;
        }
        if (TextUtils.isEmpty(this.eb)) {
            return this.f22824a;
        }
        try {
            JSONArray jSONArray = new JSONArray(this.eb);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                w wVar = new w();
                String string = jSONObject.getString(this.f22825e.jx);
                if (!TextUtils.isEmpty(string)) {
                    wVar.hp(jSONObject.optInt(this.f22825e.hp));
                    wVar.hp(jSONObject.optLong(this.f22825e.f22828l));
                    wVar.hp(string);
                    if (jSONObject.has("count")) {
                        wVar.l(jSONObject.optInt("count"));
                    }
                    if (jSONObject.has("effective_time")) {
                        wVar.l(jSONObject.optLong("effective_time"));
                    }
                    this.f22824a.add(wVar);
                }
            }
        } catch (JSONException unused) {
        }
        if (this.f22824a.size() > 0) {
            Collections.sort(this.f22824a, new Comparator<w>() { // from class: com.byazt.lyn.eb.1
                @Override // java.util.Comparator
                /* renamed from: hp, reason: merged with bridge method [inline-methods] */
                public int compare(w wVar2, w wVar3) {
                    long jL = wVar2.l() - wVar3.l();
                    if (jL == 0) {
                        return 0;
                    }
                    return jL > 0 ? 1 : -1;
                }
            });
        }
        return this.f22824a;
    }

    public void hp(String str, int i2) {
        for (w wVar : gu()) {
            if (TextUtils.equals(wVar.jx(), str)) {
                wVar.l(i2);
                return;
            }
        }
    }

    public String q() throws JSONException {
        try {
            JSONArray jSONArray = new JSONArray(this.eb);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                jSONObject.put("count", 0);
                jSONObject.put("effective_time", a.hp(jSONObject.getLong(this.f22825e.f22828l)));
            }
            this.eb = jSONArray.toString();
        } catch (JSONException unused) {
        }
        return this.eb;
    }

    @Override // com.byazt.lyn.j
    public String toString() {
        return "BaseIntervalBean{waterfallId='" + this.hp + "', showRulesVersion='" + this.jx + "', timingMode=" + this.f22836w + "}IntervalFreqctlBean{freqctlRules=" + this.f22824a + ", freqctlRulesJson='" + this.eb + "'}";
    }

    public void hp(String str, long j2) {
        for (w wVar : gu()) {
            if (TextUtils.equals(wVar.jx(), str)) {
                wVar.l(j2);
                return;
            }
        }
    }
}
