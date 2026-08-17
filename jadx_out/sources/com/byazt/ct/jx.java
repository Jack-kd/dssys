package com.byazt.ct;

import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.byazt.jdb.eb;
import com.byazt.jz.s;
import com.byazt.pg.jl;
import com.byazt.ql.sz;
import com.byazt.xci.mp;
import com.byazt.xci.q;
import com.byazt.ym.j;
import com.byazt.zn.n;
import com.byazt.zn.xh;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 27, 30})
/* loaded from: classes2.dex */
public class jx extends hp implements sz {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18993a;

    /* renamed from: e, reason: collision with root package name */
    public float f18994e;
    public float eb;
    public long gu;
    public com.byazt.xs.jx jl;

    /* renamed from: q, reason: collision with root package name */
    public float f18995q;

    /* renamed from: s, reason: collision with root package name */
    public float f18996s;

    public jx(Activity activity, ViewGroup viewGroup, eb ebVar, mp mpVar, String str, int i2, com.byazt.nc.hp hpVar) {
        super(activity, viewGroup, ebVar, mpVar, str, i2, hpVar);
    }

    private void a() {
        Animation animation;
        com.byazt.xs.jx jxVar = this.jl;
        if (jxVar != null) {
            jxVar.l(8);
            View viewQ = this.jl.q();
            if (viewQ == null || (animation = viewQ.getAnimation()) == null) {
                return;
            }
            animation.cancel();
        }
    }

    private int w() {
        return (int) ((n.w(this.hp) * this.hp.sv()) / 100.0d);
    }

    @Override // com.byazt.ct.hp
    public void hp(JSONObject jSONObject) throws JSONException {
        this.f18985l.hp((sz) this);
        try {
            jSONObject.put("isPlayable", "true");
            jSONObject.put("remainTime", w());
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.ct.hp
    public void j() {
        super.j();
        a();
    }

    @Override // com.byazt.ct.hp
    public void hp(com.byazt.xs.jx<View> jxVar) {
        this.jl = jxVar.j("fl_count_down");
    }

    private void hp(MotionEvent motionEvent) throws JSONException {
        if (!this.f18993a) {
            int displayDpi = ((jl) j.getService("device_info_new")).getDisplayDpi();
            com.byazt.jdb.j.hp("click", this.hp, new q.hp().a(this.eb).w(this.f18996s).j(this.f18995q).jx(this.f18994e).l(this.gu).hp(motionEvent.getEventTime()).j(motionEvent.getToolType(0)).w(motionEvent.getDeviceId()).a(this.f18990w).jx(s.u().l() ? 1 : 2).l(displayDpi).hp(xh.a(com.byazt.jz.sz.getContext())).l(xh.eb(com.byazt.jz.sz.getContext())).hp(com.byazt.fy.s.l(this.hp)).hp(), this.f18983j, true, null, -1, false, false);
        }
        this.f18993a = true;
    }

    @Override // com.byazt.ql.sz
    public void hp(com.byazt.xs.jx jxVar, MotionEvent motionEvent) throws JSONException {
        if (motionEvent == null || this.f18993a) {
            return;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.gu = motionEvent.getDownTime();
            this.eb = motionEvent.getRawX();
            this.f18996s = motionEvent.getRawY();
            a();
            return;
        }
        if (action != 1) {
            return;
        }
        this.f18995q = motionEvent.getRawX();
        this.f18994e = motionEvent.getRawY();
        hp(motionEvent);
    }
}
