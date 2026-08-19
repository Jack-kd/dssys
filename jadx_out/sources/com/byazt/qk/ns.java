package com.byazt.qk;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.xci.mp;
import com.byazt.xci.pc;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 64, 166})
/* loaded from: classes3.dex */
public class ns {

    /* renamed from: a, reason: collision with root package name */
    public List<com.byazt.xs.jx<View>> f24871a;
    public boolean eb = true;
    public double hp;

    /* renamed from: j, reason: collision with root package name */
    public int f24872j;
    public List<com.byazt.xci.u> jx;

    /* renamed from: l, reason: collision with root package name */
    public int f24873l;

    /* renamed from: q, reason: collision with root package name */
    public NativeExpressView f24874q;

    /* renamed from: s, reason: collision with root package name */
    public int f24875s;

    /* renamed from: w, reason: collision with root package name */
    public String f24876w;

    public ns(mp mpVar, JSONObject jSONObject, NativeExpressView nativeExpressView) {
        com.byazt.xci.u uVarHp;
        this.f24872j = -1;
        this.f24875s = -1;
        this.f24874q = nativeExpressView;
        this.f24875s = ky.hp(mpVar);
        if (jSONObject != null) {
            this.hp = jSONObject.optDouble("slide_threshold", 0.0d);
            this.f24873l = jSONObject.optInt("direction", 30);
            this.f24872j = jSONObject.optInt("type", -1);
            this.f24876w = jSONObject.optString("rgb_color");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("rects");
            if (jSONArrayOptJSONArray != null) {
                this.jx = new ArrayList();
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null && (uVarHp = com.byazt.xci.u.hp(jSONObjectOptJSONObject)) != null) {
                        this.jx.add(uVarHp);
                    }
                }
            }
        }
        List<com.byazt.xci.u> list = this.jx;
        if (list != null) {
            list.size();
        }
    }

    public void hp(NativeExpressView nativeExpressView) {
        if (this.jx != null) {
            Context context = nativeExpressView.getContext();
            for (com.byazt.xci.u uVar : this.jx) {
                View siteGestureView = new SiteGestureView(context, new pc(this.f24872j, this.hp, this.f24873l, this.f24875s), this);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(xh.jx(context, (float) uVar.jx), xh.jx(context, (float) uVar.f27553j));
                layoutParams.leftMargin = xh.jx(context, (float) uVar.hp);
                layoutParams.topMargin = xh.jx(context, (float) uVar.f27554l);
                try {
                    if (!TextUtils.isEmpty(this.f24876w) && com.byazt.ymw.u.jx()) {
                        siteGestureView.setBackgroundColor(Color.parseColor(this.f24876w));
                    }
                } catch (Exception unused) {
                }
                nativeExpressView.addView(siteGestureView, layoutParams);
            }
        }
    }

    public void j() {
        this.eb = false;
    }

    public boolean jx() {
        return this.eb;
    }

    public void l() {
        this.f24874q.sz();
    }

    public boolean hp() {
        View viewQ;
        List<com.byazt.xs.jx<View>> list = this.f24871a;
        if (list == null || list.size() == 0) {
            return false;
        }
        for (com.byazt.xs.jx<View> jxVar : this.f24871a) {
            if (jxVar != null && (viewQ = jxVar.q()) != null && viewQ.getVisibility() == 0) {
                return true;
            }
        }
        return false;
    }

    public void hp(List<com.byazt.xs.jx<View>> list) {
        this.f24871a = list;
    }

    public void hp(MotionEvent motionEvent) {
        this.f24874q.hp(motionEvent);
    }

    public void hp(View view, int i2, com.byazt.wkx.jx jxVar, pc pcVar) {
        NativeExpressView nativeExpressView = this.f24874q;
        if (nativeExpressView != null) {
            nativeExpressView.hp(view, i2, jxVar, pcVar);
        }
    }
}
