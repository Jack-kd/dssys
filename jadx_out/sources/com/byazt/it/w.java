package com.byazt.it;

import android.content.Context;
import android.view.MotionEvent;
import com.byazt.gg.k;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 836, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes.dex */
public class w extends l {
    public float gu;
    public float jl;

    /* renamed from: k, reason: collision with root package name */
    public k f21227k;
    public boolean zy;

    public w(Context context) {
        super(context);
    }

    @Override // com.byazt.it.l
    public boolean hp(Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return false;
        }
        MotionEvent motionEvent = (MotionEvent) objArr[0];
        k kVar = this.f21227k;
        return kVar != null ? kVar.hp(this.f21223l, motionEvent, this.hp, this) : hp(this.f21223l, motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean hp(com.byazt.xs.jx r7, android.view.MotionEvent r8) {
        /*
            r6 = this;
            int r0 = r8.getAction()
            r1 = 1
            if (r0 == 0) goto L8c
            r2 = 1097859072(0x41700000, float:15.0)
            r3 = 0
            r4 = 0
            if (r0 == r1) goto L49
            r5 = 2
            if (r0 == r5) goto L28
            r5 = 3
            if (r0 == r5) goto L15
            goto L98
        L15:
            r6.zy = r3
            float r0 = r8.getRawX()
            float r5 = r8.getRawY()
            int r5 = (r5 > r4 ? 1 : (r5 == r4 ? 0 : -1))
            if (r5 != 0) goto L49
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 == 0) goto L98
            goto L49
        L28:
            float r7 = r8.getRawX()
            float r8 = r8.getRawY()
            float r0 = r6.gu
            float r7 = r7 - r0
            float r7 = java.lang.Math.abs(r7)
            int r7 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r7 >= 0) goto L46
            float r7 = r6.jl
            float r8 = r8 - r7
            float r7 = java.lang.Math.abs(r8)
            int r7 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r7 < 0) goto L98
        L46:
            r6.zy = r1
            goto L98
        L49:
            boolean r0 = r6.zy
            if (r0 == 0) goto L54
            r6.zy = r3
            r6.gu = r4
            r6.jl = r4
            return r3
        L54:
            float r0 = r8.getRawX()
            float r8 = r8.getRawY()
            float r5 = r6.gu
            float r0 = r0 - r5
            float r0 = java.lang.Math.abs(r0)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L89
            float r0 = r6.jl
            float r8 = r8 - r0
            float r8 = java.lang.Math.abs(r8)
            int r8 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r8 < 0) goto L73
            goto L89
        L73:
            com.byazt.gg.gu r8 = r6.hp
            if (r8 == 0) goto L98
            java.lang.String r0 = r6.f21220a
            com.byazt.gg.a r2 = r6.jx
            java.util.List r2 = r2.l()
            com.byazt.gg.a r3 = r6.jx
            r8.hp(r7, r0, r2, r3)
            r6.gu = r4
            r6.jl = r4
            return r1
        L89:
            r6.zy = r3
            return r3
        L8c:
            float r7 = r8.getRawX()
            r6.gu = r7
            float r7 = r8.getRawY()
            r6.jl = r7
        L98:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.it.w.hp(com.byazt.xs.jx, android.view.MotionEvent):boolean");
    }

    public void hp(k kVar) {
        this.f21227k = kVar;
    }
}
