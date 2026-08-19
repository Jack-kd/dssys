package com.byazt.xn;

import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.byazt.het.l;
import com.byazt.pg.r;
import com.byazt.ql.v;
import com.byazt.xs.jx;
import com.byazt.yh.j;
import com.byazt.ymw.ud;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 2125, 28})
/* loaded from: classes3.dex */
public class hp implements r.hp {

    /* renamed from: a, reason: collision with root package name */
    public jx f27688a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f27689b;
    public boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public int f27690d;
    public boolean di;

    /* renamed from: e, reason: collision with root package name */
    public jx f27691e;
    public jx eb;
    public boolean ec;
    public jx gu;

    /* renamed from: j, reason: collision with root package name */
    public jx f27692j;
    public int jl;
    public jx jx;

    /* renamed from: k, reason: collision with root package name */
    public int f27693k;

    /* renamed from: l, reason: collision with root package name */
    public v f27694l;

    /* renamed from: n, reason: collision with root package name */
    public int f27695n;
    public int ns;

    /* renamed from: o, reason: collision with root package name */
    public int f27696o;

    /* renamed from: q, reason: collision with root package name */
    public jx f27697q;

    /* renamed from: s, reason: collision with root package name */
    public jx f27698s;
    public int sz;

    /* renamed from: u, reason: collision with root package name */
    public int f27699u;

    /* renamed from: v, reason: collision with root package name */
    public int f27700v;

    /* renamed from: w, reason: collision with root package name */
    public jx f27701w;
    public boolean wv;
    public int xs;
    public int zy;
    public final ud hp = new ud(Looper.getMainLooper(), this);
    public int vv = Integer.MIN_VALUE;

    public hp(JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("xCreative");
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("xSetting");
            String strOptString = jSONObject.optString("dynamic_configs", "");
            if (jSONObjectOptJSONObject != null) {
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("video");
                if (jSONObjectOptJSONObject3 != null) {
                    this.zy = jSONObjectOptJSONObject3.optInt("video_duration");
                }
                int iOptInt = jSONObjectOptJSONObject.optInt("reward_full_time_type", 0);
                int iOptInt2 = jSONObjectOptJSONObject.optInt("reward_full_play_time", 0);
                if (iOptInt == 1) {
                    this.f27693k = iOptInt2;
                    this.ec = true;
                }
            }
            if (jSONObjectOptJSONObject2 != null) {
                if (jSONObjectOptJSONObject2.optInt("ad_slot_type", 0) == 8) {
                    this.jl = jSONObjectOptJSONObject2.optInt("iv_skip_time", 0);
                } else {
                    this.jl = jSONObjectOptJSONObject2.optInt("rv_skip_time", 0);
                }
            }
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            try {
                if (new JSONObject(strOptString).optBoolean("is_show_video_duration", false)) {
                    this.ec = false;
                }
            } catch (JSONException unused) {
            }
        }
    }

    private boolean j() {
        return (this.f27692j == null && this.f27688a == null && this.f27701w == null && this.f27698s == null && this.f27691e == null) ? false : true;
    }

    private void jx() throws JSONException {
        int i2;
        int i3;
        int i4;
        jx jxVar;
        if (this.ec) {
            i2 = this.f27693k;
            i3 = this.f27699u;
        } else {
            i2 = this.zy;
            i3 = this.f27700v;
        }
        v vVar = this.f27694l;
        if (vVar != null && (jxVar = this.jx) != null) {
            vVar.hp(jxVar, "videoProgress", Integer.valueOf(i3));
        }
        int i5 = i3 + this.xs;
        int iMax = Math.max(0, i2 - i5);
        boolean z2 = i5 >= this.jl || iMax == 0 || this.vv <= 0;
        jx jxVar2 = this.f27692j;
        if ((jxVar2 instanceof com.byazt.yh.hp) && this.vv != Integer.MIN_VALUE) {
            jxVar2.l(0);
            ((com.byazt.yh.hp) this.f27692j).hp(iMax, i5, this.vv);
        }
        jx jxVar3 = this.f27688a;
        if (jxVar3 instanceof l) {
            ((l) jxVar3).j(z2);
        }
        jx jxVar4 = this.eb;
        if ((jxVar4 instanceof j) && (i4 = this.vv) != Integer.MIN_VALUE) {
            ((j) jxVar4).hp(iMax, i5, i4);
        }
        jx jxVar5 = this.f27701w;
        if (jxVar5 instanceof com.byazt.yh.l) {
            ((com.byazt.yh.l) jxVar5).hp(i2, i5, iMax, z2);
        }
        jx jxVar6 = this.f27698s;
        if (jxVar6 instanceof com.byazt.het.hp) {
            ((com.byazt.het.hp) jxVar6).l(this.sz, this.f27695n);
        }
        jx jxVar7 = this.f27697q;
        if (jxVar7 != null) {
            jxVar7.l(this.cx ? 0 : 8);
        }
        jx jxVar8 = this.gu;
        if (jxVar8 != null) {
            jxVar8.l(this.di ? 0 : 8);
        }
        jx jxVar9 = this.f27691e;
        if (jxVar9 instanceof com.byazt.yh.jx) {
            ((com.byazt.yh.jx) jxVar9).hp(this.ns, this.f27696o, this.f27690d, this.f27689b, this.wv);
        }
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) throws JSONException {
        if (message.what != 100) {
            return;
        }
        this.hp.sendEmptyMessageDelayed(100, 200L);
        jx();
    }

    public void hp(v vVar, jx jxVar) {
        this.f27694l = vVar;
        this.jx = jxVar;
        jx jxVarW = jxVar.w("RVCountdown");
        this.f27692j = jxVarW;
        if (jxVarW == null) {
            this.f27692j = this.jx.w("FVCountdown");
        }
        jx jxVarW2 = this.jx.w("RVSkip");
        this.f27688a = jxVarW2;
        if (jxVarW2 == null) {
            this.f27688a = this.jx.w("FVSkip");
        }
        this.f27701w = this.jx.w("CycleCountDownView");
        this.eb = this.jx.w("RewardClickCountdown");
        this.f27698s = this.jx.w("CycleSkip");
        this.f27691e = this.jx.w("CsjRefreshTip");
        this.f27697q = this.jx.j("CsjRefreshTipContainer");
        this.gu = this.jx.j("CsjRefreshTipCancel");
    }

    public void l() {
        this.hp.removeCallbacksAndMessages(null);
    }

    public void hp() {
        if (j()) {
            this.hp.sendEmptyMessage(100);
        }
    }

    public void hp(int i2, int i3, int i4, int i5) {
        this.f27700v = i2;
        this.f27699u = i3;
        this.xs = i4;
        this.vv = i5;
    }

    public void hp(int i2, int i3) {
        this.sz = i2;
        this.f27695n = i3;
    }

    public void hp(int i2, boolean z2, int i3, int i4, boolean z3, boolean z4, boolean z5) {
        this.ns = i2;
        this.f27696o = i3;
        this.f27690d = i4;
        this.cx = z3;
        this.f27689b = z4;
        this.di = z5;
        this.wv = z2;
    }
}
