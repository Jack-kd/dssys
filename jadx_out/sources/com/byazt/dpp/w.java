package com.byazt.dpp;

import android.view.MotionEvent;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1102, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19231a;
    public com.byazt.qo.s eb;

    /* renamed from: j, reason: collision with root package name */
    public float f19232j;

    /* renamed from: q, reason: collision with root package name */
    public boolean f19234q;

    /* renamed from: s, reason: collision with root package name */
    public int f19235s;

    /* renamed from: w, reason: collision with root package name */
    public float f19236w;
    public Map<Integer, Float> hp = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public Map<Integer, Float> f19233l = new HashMap();
    public Map<Integer, Boolean> jx = new HashMap();

    public w(com.byazt.qo.s sVar, int i2, boolean z2) {
        this.eb = sVar;
        this.f19235s = i2;
        this.f19234q = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean hp(android.view.MotionEvent r9) throws java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException {
        /*
            r8 = this;
            int r0 = r9.getActionMasked()
            int r1 = r9.getActionIndex()
            int r2 = r9.getPointerId(r1)
            r3 = 1
            if (r0 == 0) goto Ld2
            r4 = 0
            if (r0 == r3) goto L6b
            r5 = 2
            if (r0 == r5) goto L25
            r5 = 3
            if (r0 == r5) goto L20
            r5 = 5
            if (r0 == r5) goto Ld2
            r9 = 6
            if (r0 == r9) goto L6b
            goto Lee
        L20:
            r8.hp()
            goto Lee
        L25:
            int r0 = r9.getPointerCount()
            if (r4 >= r0) goto Lee
            int r0 = r9.getPointerId(r4)
            float r1 = r9.getY(r4)
            java.util.Map<java.lang.Integer, java.lang.Float> r2 = r8.hp
            java.lang.Integer r5 = java.lang.Integer.valueOf(r0)
            java.lang.Object r2 = r2.get(r5)
            java.lang.Float r2 = (java.lang.Float) r2
            if (r2 == 0) goto L68
            java.util.Map<java.lang.Integer, java.lang.Float> r5 = r8.f19233l
            java.lang.Integer r6 = java.lang.Integer.valueOf(r0)
            java.lang.Float r7 = java.lang.Float.valueOf(r1)
            r5.put(r6, r7)
            float r2 = r2.floatValue()
            float r1 = r1 - r2
            float r1 = java.lang.Math.abs(r1)
            r2 = 1092616192(0x41200000, float:10.0)
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 <= 0) goto L68
            java.util.Map<java.lang.Integer, java.lang.Boolean> r1 = r8.jx
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            r1.put(r0, r2)
        L68:
            int r4 = r4 + 1
            goto L25
        L6b:
            java.util.Map<java.lang.Integer, java.lang.Boolean> r9 = r8.jx
            java.lang.Integer r0 = java.lang.Integer.valueOf(r2)
            java.lang.Object r9 = r9.get(r0)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            if (r9 == 0) goto Lce
            boolean r9 = r9.booleanValue()
            if (r9 != 0) goto L80
            goto Lce
        L80:
            java.util.Map<java.lang.Integer, java.lang.Float> r9 = r8.hp
            java.lang.Integer r0 = java.lang.Integer.valueOf(r2)
            java.lang.Object r9 = r9.get(r0)
            java.lang.Float r9 = (java.lang.Float) r9
            java.util.Map<java.lang.Integer, java.lang.Float> r0 = r8.f19233l
            java.lang.Integer r1 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.get(r1)
            java.lang.Float r0 = (java.lang.Float) r0
            if (r9 == 0) goto Lca
            if (r0 == 0) goto Lca
            android.content.Context r1 = com.byazt.wkx.j.getContext()
            float r4 = r0.floatValue()
            float r5 = r9.floatValue()
            float r4 = r4 - r5
            float r4 = java.lang.Math.abs(r4)
            int r1 = com.byazt.sq.s.l(r1, r4)
            float r0 = r0.floatValue()
            float r9 = r9.floatValue()
            float r0 = r0 - r9
            r9 = 0
            int r9 = (r0 > r9 ? 1 : (r0 == r9 ? 0 : -1))
            if (r9 >= 0) goto Lca
            int r9 = r8.f19235s
            if (r1 <= r9) goto Lca
            com.byazt.qo.s r9 = r8.eb
            if (r9 == 0) goto Lca
            r9.hp()
        Lca:
            r8.hp(r2)
            goto Lee
        Lce:
            r8.hp(r2)
            return r4
        Ld2:
            java.util.Map<java.lang.Integer, java.lang.Float> r0 = r8.hp
            java.lang.Integer r4 = java.lang.Integer.valueOf(r2)
            float r9 = r9.getY(r1)
            java.lang.Float r9 = java.lang.Float.valueOf(r9)
            r0.put(r4, r9)
            java.util.Map<java.lang.Integer, java.lang.Boolean> r9 = r8.jx
            java.lang.Integer r0 = java.lang.Integer.valueOf(r2)
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r9.put(r0, r1)
        Lee:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.dpp.w.hp(android.view.MotionEvent):boolean");
    }

    private boolean l(MotionEvent motionEvent) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        com.byazt.qo.s sVar;
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f19232j = motionEvent.getY();
        } else if (action != 1) {
            if (action == 2) {
                float y2 = motionEvent.getY();
                this.f19236w = y2;
                if (Math.abs(y2 - this.f19232j) > 10.0f) {
                    this.f19231a = true;
                }
            }
        } else {
            if (!this.f19231a) {
                return false;
            }
            int iL = com.byazt.sq.s.l(com.byazt.wkx.j.getContext(), Math.abs(this.f19236w - this.f19232j));
            if (this.f19236w - this.f19232j < 0.0f && iL > this.f19235s && (sVar = this.eb) != null) {
                sVar.hp();
                this.f19232j = 0.0f;
                this.f19236w = 0.0f;
                this.f19231a = false;
            }
        }
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f19234q ? hp(motionEvent) : l(motionEvent);
    }

    private void hp(int i2) {
        this.hp.remove(Integer.valueOf(i2));
        this.f19233l.remove(Integer.valueOf(i2));
        this.jx.remove(Integer.valueOf(i2));
    }

    private void hp() {
        this.hp.clear();
        this.f19233l.clear();
        this.jx.clear();
    }
}
