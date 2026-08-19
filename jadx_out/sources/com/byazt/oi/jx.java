package com.byazt.oi;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.byazt.ql.u;
import com.byazt.ql.vv;

@com.byazt.kj.hp(hp = {0, 1, 1547, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public final int f24102a;
    public float hp;

    /* renamed from: j, reason: collision with root package name */
    public Context f24103j;
    public u jx;

    /* renamed from: l, reason: collision with root package name */
    public float f24104l;

    /* renamed from: w, reason: collision with root package name */
    public boolean f24105w;

    public jx(Context context, u uVar) {
        this.f24103j = context;
        this.jx = uVar;
        this.f24102a = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public boolean hp(vv vvVar, com.byazt.xs.jx jxVar, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.hp = motionEvent.getX();
            this.f24104l = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                if (Math.abs(x2 - this.hp) >= this.f24102a || Math.abs(y2 - this.f24104l) >= this.f24102a) {
                    this.f24105w = true;
                }
            } else if (action == 3) {
                this.f24105w = false;
            }
        } else {
            if (this.f24105w) {
                this.f24105w = false;
                return false;
            }
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            if (Math.abs(x3 - this.hp) >= this.f24102a || Math.abs(y3 - this.f24104l) >= this.f24102a) {
                this.f24105w = false;
            } else if (vvVar != null) {
                vvVar.hp(this.jx, jxVar, jxVar);
                return true;
            }
        }
        return true;
    }
}
