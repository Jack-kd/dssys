package com.byazt.cc;

import android.view.View;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jwq.e;
import com.byazt.lf.k;
import com.byazt.xci.ea;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 771, 30})
/* loaded from: classes2.dex */
public abstract class jx implements l {

    /* renamed from: a, reason: collision with root package name */
    public TTBaseVideoActivity f18731a;
    public int eb = 0;
    public boolean hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.td.l f18732j;
    public mp jx;

    /* renamed from: l, reason: collision with root package name */
    public mp f18733l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.td.w f18734w;

    public jx(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, com.byazt.td.l lVar, com.byazt.td.w wVar, boolean z2) {
        this.f18731a = tTBaseVideoActivity;
        this.f18733l = mpVar;
        this.f18732j = lVar;
        this.f18734w = wVar;
        this.hp = z2;
    }

    @Override // com.byazt.cc.l
    public void a(View view) {
        hp(6);
    }

    @Override // com.byazt.cc.l
    public void eb(View view) {
        hp(7);
    }

    @Override // com.byazt.cc.l
    public void hp(View view) {
        hp(2);
    }

    @Override // com.byazt.cc.l
    public void j(View view) {
        hp(4);
    }

    @Override // com.byazt.cc.l
    public void jx(View view) {
        hp(1);
    }

    @Override // com.byazt.cc.l
    public void l(View view) {
        hp(3);
    }

    @Override // com.byazt.cc.l
    public void w(View view) {
        hp(5);
        this.f18731a.s(3);
    }

    public boolean hp() {
        if (ec.zy(this.f18733l) || ea.l() <= 0) {
            return false;
        }
        int i2 = this.eb;
        this.eb = i2 + 1;
        if (i2 < ea.l()) {
            return false;
        }
        k.hp().hp(this.f18733l, "stats_reward_full_close_force", this.f18731a.zx().hp(new JSONObject()));
        this.f18731a.finish();
        return true;
    }

    public void hp(int i2) {
        this.f18731a.rv();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("topImpl", getClass().getName());
            jSONObject.put("topType", i2);
        } catch (Throwable unused) {
        }
        k.hp().hp(this.f18733l, "stats_reward_full_top_handle", jSONObject);
    }

    public void hp(mp mpVar) {
        this.jx = mpVar;
    }

    public boolean hp(e eVar) {
        mp mpVar = this.jx;
        if (mpVar != null) {
            return this.f18731a.hp(mpVar, eVar);
        }
        return this.f18731a.hp(this.f18733l, eVar);
    }
}
