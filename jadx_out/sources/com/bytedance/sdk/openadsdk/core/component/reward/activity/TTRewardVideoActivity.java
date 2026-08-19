package com.bytedance.sdk.openadsdk.core.component.reward.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.byazt.fq.hp;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.ij.a;
import com.byazt.jlb.l;
import com.byazt.jw.jx;
import com.byazt.jz.b;
import com.byazt.jz.cx;
import com.byazt.jz.d;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.pg.jl;
import com.byazt.xci.ea;
import com.byazt.xci.ec;
import com.byazt.xci.lv;
import com.byazt.xci.mp;
import com.byazt.xci.rz;
import com.byazt.xci.zx;
import com.byazt.ym.j;
import com.byazt.ymw.hq;
import com.byazt.ymw.vv;
import com.byazt.yni.w;
import com.byazt.zn.b;
import com.byazt.zn.xh;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import com.bytedance.component.sdk.annotation.HungeonFlag;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.sigmob.windad.WindAds;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TTRewardVideoActivity extends TTBaseVideoActivity {
    private String gd;
    private jx qh;
    private String ru;
    private String tw;
    private String wt;
    private int yj;
    private final int qu = 10111;
    private final int an = 10112;
    private final int pc = 10113;
    private final int fi = 10114;
    private final int nr = 10115;
    private final int rk = 10116;
    private final AtomicBoolean jd = new AtomicBoolean();

    private Object gd() {
        Map<String, Object> mapRp;
        mp mpVar = this.pu;
        if (mpVar == null || (mapRp = mpVar.rp()) == null || !mapRp.containsKey("rs_info")) {
            return null;
        }
        return mapRp.get("rs_info");
    }

    private void jd() {
        this.hq.hp("cancelClickLandingRewardTip", (JSONObject) null);
    }

    private void ru() throws JSONException {
        w wVar;
        if (ea.eb(this.pu) && this.f20276r.sz() >= ea.e(this.pu)) {
            if (!this.f20272ms.eb() || (wVar = this.hq) == null || wVar.q() != 0) {
                xh.hp(this.as, ea.q(this.pu), 0);
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("toast_text", ea.q(this.pu));
                this.hq.hp("showToast", jSONObject);
            } catch (JSONException unused) {
            }
        }
    }

    @DungeonFlag
    private int tw() {
        final int i2 = 0;
        if (ea.j(this.pu)) {
            if (this.f20269k.get()) {
                i2 = 10116;
            } else if (!yj()) {
                i2 = 10111;
            }
        }
        if (sz.l().ct() == 0) {
            return i2;
        }
        boolean zS = b.s();
        int iHp = b.hp(this.pu.ei() + "_" + this.pu.bx());
        if (zS) {
            i2 = 10115;
        } else if (iHp == b.f28486l) {
            i2 = 10114;
        } else if (iHp == b.jx) {
            i2 = 10113;
        }
        k.hp().l(new hp() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.6
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() throws Exception {
                l<l> lVarL = l.l();
                lVarL.hp("armor_reward");
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(MediationConstant.KEY_ERROR_CODE, i2);
                lVarL.l(jSONObject.toString());
                return lVarL;
            }
        }, "armor_reward");
        return i2;
    }

    private boolean yj() {
        if (TextUtils.isEmpty(this.pu.ns())) {
            return false;
        }
        return this.jd.get();
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public boolean b() {
        return super.b() || this.rv.w();
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public void d() {
        if (this.jx.getAndSet(true) || this.rv.hp()) {
            return;
        }
        com.byazt.vv.hp hpVar = this.f20283y;
        if ((hpVar == null || !hpVar.jx()) && !lv.l(o(), this.pu, true)) {
            hp("onAdClose", (Bundle) null);
        }
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public String dy() {
        if (this.rv.hp() && !TextUtils.isEmpty(this.rv.eb()) && !TextUtils.isEmpty(this.rv.a())) {
            return this.rv.a();
        }
        return ud();
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public void f() {
        super.f();
        if (ea.xs(this.pu) || this.dy.ud() || ec.j(this.pu)) {
            return;
        }
        if (this.f20276r.nu()) {
            this.nu.hp(false, null, null, true, true);
            return;
        }
        int iA = this.f20272ms.a(true);
        int iA2 = this.f20272ms.a(lv.l(o(), this.pu, true));
        String str = "已领取奖励";
        if (wt() || this.f20272ms.vv()) {
            com.byazt.td.w wVar = this.nu;
            if (iA2 > 0) {
                str = iA2 + "s";
            }
            wVar.hp(false, str, "跳过", false, true);
        } else {
            com.byazt.td.w wVar2 = this.nu;
            if (iA2 > 0) {
                str = iA2 + "s";
            }
            wVar2.hp(false, str, null, false, false);
        }
        this.f20272ms.l(iA);
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public int hq() {
        if (this.yj != 0 && !TextUtils.isEmpty(this.gd)) {
            return this.yj;
        }
        if (ea.l(this.pu) == 0 || TextUtils.isEmpty(ea.hp(this.pu))) {
            return 0;
        }
        return ea.l(this.pu);
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public String nu() {
        if (this.rv.hp() && !TextUtils.isEmpty(this.rv.eb()) && !TextUtils.isEmpty(this.rv.a())) {
            return this.rv.eb();
        }
        StringBuilder sb = new StringBuilder();
        sb.append(hq());
        return sb.toString();
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public boolean o() {
        return true;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (this.dy.r()) {
            return;
        }
        this.f20272ms.hp(i2, i3, intent);
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity, com.byazt.gi.BaseThemeActivity, android.app.Activity
    public void onDestroy() throws JSONException {
        jx jxVar;
        super.onDestroy();
        this.rv.jx();
        List<jx> listHp = com.byazt.mdk.hp.hp();
        if (listHp == null || listHp.size() == 0 || (jxVar = this.qh) == null) {
            return;
        }
        listHp.remove(jxVar);
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity, android.app.Activity
    public void onStart() throws JSONException {
        super.onStart();
        if (ea.xs(this.pu)) {
            this.f20272ms.jx(a.f21118l);
            a.jx = false;
            a.f21118l = 0;
            a.hp = this.f20272ms.as();
            jx(0);
        }
        if (ea.ec(this.pu) && a.f21117j) {
            jd();
            j(4);
        }
    }

    public void rk() throws JSONException {
        if (lv.l(o(), this.pu, true)) {
            if (this.su.hp() > this.f20272ms.xh()) {
                this.su.hp(false);
            }
            int iMax = Math.max(this.f20272ms.a(true) - this.su.hp(), 0);
            int iA = this.f20272ms.a(false) - this.su.hp();
            if (this.f20272ms.s(false)) {
                iA = Math.max(0, iA - iMax);
            }
            if (this.f20268j.containsKey(0)) {
                iMax = 999;
                iA = 999;
            }
            gu(iA);
            jl(iMax);
            if (this.f20268j.containsKey(0)) {
                jx(0, true);
            }
            fi();
        }
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public void s(int i2) {
        if (!this.f20268j.containsKey(0)) {
            this.f20270l.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    hq.hp(TTRewardVideoActivity.this.as, "当前不满足条件，下次记得看完视频哦～", 1);
                }
            });
        } else if (zx.hp(this.pu)) {
            this.f20270l.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    hq.hp(TTRewardVideoActivity.this.as, "非常抱歉，当前不支持再看一个", 1);
                }
            });
        } else {
            this.rv.jx(i2);
        }
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public void sz() throws JSONException {
        super.sz();
        rk();
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public String ud() {
        return (this.yj == 0 || TextUtils.isEmpty(this.gd)) ? (ea.l(this.pu) == 0 || TextUtils.isEmpty(ea.hp(this.pu))) ? "" : ea.hp(this.pu) : this.gd;
    }

    public boolean wt() {
        return Math.round(((float) (this.f20276r.hq() + (((long) this.f20272ms.rz()) * 1000))) / 1000.0f) >= this.f20272ms.nd();
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public boolean wv() {
        return this.rv.hp() || this.su.j();
    }

    @DungeonFlag
    private JSONObject l(int i2, boolean z2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("oversea_version_type", 0);
            jSONObject.put("reward_name", ud());
            jSONObject.put("reward_amount", hq());
            jSONObject.put("network", vv.jx(sz.getContext()));
            jSONObject.put("sdk_version", d.f21860w);
            jSONObject.put("user_agent", ((jl) j.getService("device_info_new")).getWebViewUA(false));
            jSONObject.put("extra", this.pu.q_());
            jSONObject.put("media_extra", this.wt);
            jSONObject.put("video_duration", this.f20276r.d());
            jSONObject.put("play_start_ts", this.rz);
            jSONObject.put("play_end_ts", System.currentTimeMillis() / 1000);
            jSONObject.put("duration", this.f20276r.sz());
            jSONObject.put("user_id", this.ru);
            jSONObject.put(WindAds.TRANS_ID, UUID.randomUUID().toString().replace("-", ""));
            jSONObject.put("reward_type", i2);
            jSONObject.putOpt("rs_info", gd());
            if (ea.j(this.pu)) {
                jSONObject.put("show_result", z2 ? 1 : 0);
            }
            com.byazt.tn.l.hp(jSONObject);
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public void j() {
        jx jxVar = new jx() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.1
            @Override // com.byazt.jw.jx
            public void hp(String str, String str2) {
                if (TTRewardVideoActivity.this.pu != null) {
                    String strNs = TTRewardVideoActivity.this.pu.ns();
                    if (TextUtils.equals("show", str) && TextUtils.equals(str2, strNs)) {
                        TTRewardVideoActivity.this.jd.set(true);
                    }
                }
            }
        };
        this.qh = jxVar;
        com.byazt.mdk.hp.hp(jxVar);
        super.j();
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    @HungeonFlag
    @DungeonFlag
    public void jx(int i2) throws JSONException {
        if (i2 != 0) {
            j(i2);
            return;
        }
        if (this.f20272ms.xh() > 0) {
            return;
        }
        if ((!ea.d(this.pu) || this.f20263a.get()) && this.f20272ms.lv()) {
            j(i2);
        }
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public String hp() {
        return this.tw;
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public void hp(Intent intent) {
        super.hp(intent);
        if (intent == null) {
            return;
        }
        this.wt = intent.getStringExtra("media_extra");
        this.ru = intent.getStringExtra("user_id");
        this.gd = intent.getStringExtra("reward_name");
        this.tw = intent.getStringExtra("userData");
        this.yj = intent.getIntExtra("reward_amount", 0);
        this.rv.hp(intent.getBooleanExtra("is_play_again", false));
        this.rv.hp(intent.getIntExtra("play_again_count", 0));
        this.rv.l(intent.getBooleanExtra("custom_play_again", false));
        this.rv.l(intent.getIntExtra("source_rit_id", 0));
        this.rv.hp(intent.getStringExtra("reward_again_name"));
        this.rv.l(intent.getStringExtra("reward_again_amount"));
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    @HungeonFlag
    @DungeonFlag
    public void j(final int i2) throws JSONException {
        if (!this.f20279u.getAndSet(true)) {
            this.rv.j();
        }
        if (this.f20268j.containsKey(Integer.valueOf(i2))) {
            return;
        }
        this.f20268j.put(Integer.valueOf(i2), Boolean.TRUE);
        this.xh.jx();
        boolean zDi = ea.di(this.pu);
        final int iHq = hq();
        final String strUd = ud();
        int iTw = tw();
        boolean z2 = iTw == 0;
        if (z2 && zDi) {
            jx(i2, true);
            sz.hp().hp(l(i2, true), new cx.w() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.2
                @Override // com.byazt.jz.cx.w
                public void hp(int i3, String str) throws JSONException {
                    TTRewardVideoActivity.this.jx(TTRewardVideoActivity.this.hp(i2, false, i3, str, iHq, strUd, false));
                }

                @Override // com.byazt.jz.cx.w
                public void hp(b.j jVar) throws JSONException {
                    int iHp = jVar.jx.hp();
                    String strL = jVar.jx.l();
                    TTRewardVideoActivity.this.jx(jVar.f21851l ? TTRewardVideoActivity.this.hp(i2, true, 10111, "reward failed", iHp, strL, true) : TTRewardVideoActivity.this.hp(i2, false, 10112, "server refuse", iHp, strL, true));
                }
            });
        } else {
            jx(hp(i2, z2, iTw, "reward failed", iHq, strUd, false));
            jx(i2, z2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0017  */
    @Override // com.byazt.fyd.TTBaseVideoActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void jx(boolean r4) {
        /*
            r3 = this;
            boolean r0 = r3.cx
            r1 = 1
            r2 = -1
            if (r0 != 0) goto La
            if (r4 == 0) goto L17
            r4 = 0
            goto L18
        La:
            com.byazt.jkd.gu r4 = com.byazt.jz.sz.l()
            int r4 = r4.pj()
            if (r4 != r1) goto L17
            r4 = 2000(0x7d0, float:2.803E-42)
            goto L18
        L17:
            r4 = r2
        L18:
            com.byazt.iw.hp r0 = r3.rv
            boolean r0 = r0.hp()
            if (r0 == 0) goto L21
            goto L22
        L21:
            r2 = r4
        L22:
            if (r2 < 0) goto L51
            java.util.concurrent.atomic.AtomicBoolean r4 = r3.sz
            boolean r4 = r4.get()
            if (r4 != 0) goto L51
            if (r2 != 0) goto L46
            java.util.concurrent.atomic.AtomicBoolean r4 = r3.sz
            boolean r4 = r4.getAndSet(r1)
            if (r4 != 0) goto L51
            com.byazt.ash.eb r4 = com.byazt.ash.eb.hp()
            com.byazt.xci.mp r0 = r3.pu
            int r1 = r3.mp
            java.lang.String r1 = java.lang.String.valueOf(r1)
            r4.hp(r0, r1)
            return
        L46:
            com.byazt.ymw.ud r4 = r3.f20270l
            com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity$5 r0 = new com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity$5
            r0.<init>()
            long r1 = (long) r2
            r4.postDelayed(r0, r1)
        L51:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.component.reward.activity.TTRewardVideoActivity.jx(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(Bundle bundle) throws JSONException {
        int i2 = bundle.getInt("callback_extra_key_reward_type");
        if (i2 == 0) {
            l("onRewardVerify", bundle);
        }
        l("onRewardArrived", bundle);
        this.xh.hp(bundle);
        this.f20272ms.hp(i2);
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public boolean hp(Bundle bundle) {
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        jxVarHp.put("is_reward_deep_link_to_live", false);
        jxVarHp.put("click_to_live_duration", System.currentTimeMillis());
        return super.hp(bundle);
    }

    private void jx(int i2, boolean z2) throws JSONException {
        if (i2 == 0) {
            this.hq.k();
            this.ky.l(z2);
            ru();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DungeonFlag
    public Bundle hp(int i2, boolean z2, int i3, String str, int i4, String str2, boolean z3) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("callback_extra_key_reward_valid", z2);
        bundle.putInt("callback_extra_key_reward_type", i2);
        bundle.putInt("callback_extra_key_reward_amount", i4);
        bundle.putString("callback_extra_key_reward_name", str2);
        bundle.putFloat("callback_extra_key_reward_propose", ea.hp(this.pu, i2));
        bundle.putBoolean("callback_extra_key_is_server_verify", z3);
        if (!z2) {
            bundle.putInt("callback_extra_key_error_code", i3);
            bundle.putString("callback_extra_key_error_msg", str);
        }
        if (i2 == 0 && ea.eb(this.pu) && this.f20276r.sz() >= ea.e(this.pu)) {
            bundle.putBoolean("callback_extra_key_video_complete_reward", true);
        }
        return bundle;
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public void l() {
        if (!this.su.w() && this.f20268j.containsKey(0) && this.rv.jx(2)) {
            return;
        }
        super.l();
    }

    private void l(String str, Bundle bundle) {
        com.byazt.bp.hp.hp(0, this.rv.hp() ? rz.hp(this.f20271m) : this.f20271m, str, bundle);
    }

    @Override // com.byazt.fyd.TTBaseVideoActivity
    public void hp(String str, Bundle bundle) {
        l(str, bundle);
    }
}
