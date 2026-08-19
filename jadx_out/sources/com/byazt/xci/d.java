package com.byazt.xci;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 670})
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public String f27219a;
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public int f27220j;
    public hp jx;

    /* renamed from: l, reason: collision with root package name */
    public x f27221l;

    /* renamed from: w, reason: collision with root package name */
    public String f27222w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 1485})
    public static class hp extends zy {
        public C0403hp jx;

        /* renamed from: l, reason: collision with root package name */
        public C0403hp f27223l;

        @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 2180})
        /* renamed from: com.byazt.xci.d$hp$hp, reason: collision with other inner class name */
        public static class C0403hp {
            public String hp;

            /* renamed from: l, reason: collision with root package name */
            public int f27224l;

            public C0403hp(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return;
                }
                this.hp = jSONObject.optString("entry");
                this.f27224l = jSONObject.optInt("displayAreaAndroid");
            }

            public boolean hp() {
                return !TextUtils.isEmpty(this.hp);
            }
        }

        public hp(JSONObject jSONObject, int i2) {
            if (jSONObject == null) {
                return;
            }
            this.f27223l = new C0403hp(jSONObject.optJSONObject("vertical"));
            this.jx = new C0403hp(jSONObject.optJSONObject("horizontal"));
            this.hp = i2;
        }

        public boolean a() {
            C0403hp c0403hp = this.jx;
            if (c0403hp != null && c0403hp.hp()) {
                return true;
            }
            C0403hp c0403hp2 = this.f27223l;
            return c0403hp2 != null && c0403hp2.hp();
        }

        public String hp(boolean z2) {
            C0403hp c0403hp;
            if (z2 && (c0403hp = this.f27223l) != null && c0403hp.hp()) {
                return this.f27223l.hp;
            }
            C0403hp c0403hp2 = this.jx;
            if (c0403hp2 != null && c0403hp2.hp()) {
                return this.jx.hp;
            }
            C0403hp c0403hp3 = this.f27223l;
            return (c0403hp3 == null || !c0403hp3.hp()) ? "" : this.f27223l.hp;
        }

        @Override // com.byazt.xci.zy
        public int j() {
            C0403hp c0403hp = this.f27223l;
            if (c0403hp != null) {
                return c0403hp.f27224l;
            }
            C0403hp c0403hp2 = this.jx;
            if (c0403hp2 != null) {
                return c0403hp2.f27224l;
            }
            return 0;
        }

        @Override // com.byazt.xci.zy
        public int jx() {
            return 0;
        }

        @Override // com.byazt.xci.zy
        public String w() {
            return "";
        }
    }

    public d(JSONObject jSONObject) {
        this.hp = false;
        if (jSONObject == null) {
            return;
        }
        this.hp = jSONObject.optBoolean("use_interact_webview", false);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("easy_playable_client");
        if (jSONObjectOptJSONObject != null) {
            this.f27221l = new x(jSONObjectOptJSONObject.optJSONObject("components"), 1);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("easy_playable");
        if (jSONObjectOptJSONObject2 != null) {
            this.jx = new hp(jSONObjectOptJSONObject2.optJSONObject("components"), 2);
        }
        this.f27220j = jSONObject.optInt("style_category");
        this.f27222w = jSONObject.optString("exp_id");
        this.f27219a = jSONObject.optString("group_id");
    }

    public static String a(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.bt().f27219a;
    }

    public static hp eb(mp mpVar) {
        d dVarBt;
        if (mpVar == null || (dVarBt = mpVar.bt()) == null) {
            return null;
        }
        return dVarBt.jx;
    }

    public static boolean hp(mp mpVar) {
        return l(mpVar) || jx(mpVar);
    }

    public static int j(mp mpVar) {
        if (mpVar == null) {
            return 0;
        }
        return mpVar.bt().f27220j;
    }

    public static boolean jx(mp mpVar) {
        d dVarBt;
        hp hpVar;
        return (mpVar == null || (dVarBt = mpVar.bt()) == null || !dVarBt.hp || (hpVar = dVarBt.jx) == null || !hpVar.a()) ? false : true;
    }

    public static boolean l(mp mpVar) {
        d dVarBt;
        x xVar;
        return (mpVar == null || (dVarBt = mpVar.bt()) == null || (xVar = dVarBt.f27221l) == null || !xVar.jl()) ? false : true;
    }

    public static x s(mp mpVar) {
        d dVarBt;
        if (mpVar == null || (dVarBt = mpVar.bt()) == null) {
            return null;
        }
        return dVarBt.f27221l;
    }

    public static String w(mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return mpVar.bt().f27222w;
    }

    public static boolean hp() {
        int i2 = com.byazt.jz.d.f21856j;
        return (i2 >= 6322 && i2 < 6400) || i2 >= 6406;
    }
}
