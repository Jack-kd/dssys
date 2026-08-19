package com.byazt.oi;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import com.byazt.ql.u;
import com.byazt.ql.vv;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 1547, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w {

    /* renamed from: e, reason: collision with root package name */
    public u f24111e;
    public String gu;
    public Context jl;

    /* renamed from: k, reason: collision with root package name */
    public boolean f24113k;

    /* renamed from: q, reason: collision with root package name */
    public u f24115q;

    /* renamed from: u, reason: collision with root package name */
    public hp f24117u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f24118v;
    public boolean zy;
    public int hp = 0;

    /* renamed from: l, reason: collision with root package name */
    public int f24114l = Integer.MAX_VALUE;
    public int jx = Integer.MAX_VALUE;

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f24112j = new AtomicBoolean(true);

    /* renamed from: w, reason: collision with root package name */
    public float f24119w = Float.MIN_VALUE;

    /* renamed from: a, reason: collision with root package name */
    public float f24110a = Float.MIN_VALUE;
    public Map<Integer, Float> eb = new HashMap();

    /* renamed from: s, reason: collision with root package name */
    public Map<Integer, Float> f24116s = new HashMap();

    public w(Context context, u uVar, boolean z2, boolean z3, boolean z4) {
        this.jl = context;
        this.f24115q = uVar;
        this.zy = z2;
        this.f24113k = z3;
        this.f24118v = z4;
        jx();
    }

    private void jx() {
        if (this.f24113k) {
            this.f24117u = new hp();
        }
        u uVar = this.f24115q;
        if (uVar == null) {
            return;
        }
        this.hp = uVar.jx().optInt("slideThreshold");
        this.gu = this.f24115q.jx().optString("slideDirection");
        this.f24114l = this.f24115q.jx().optInt("frequency", Integer.MAX_VALUE);
        this.jx = this.f24115q.jx().optInt("effectiveDuration", Integer.MAX_VALUE);
        this.f24112j.get();
    }

    public void l() {
        this.f24119w = Float.MIN_VALUE;
        this.f24110a = Float.MIN_VALUE;
        this.eb.clear();
        this.f24116s.clear();
    }

    public void hp() {
        if (this.jx == Integer.MAX_VALUE) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.byazt.oi.w.1
            @Override // java.lang.Runnable
            public void run() {
                w.this.f24112j.set(false);
            }
        }, this.jx);
    }

    private void hp(int i2) {
        this.eb.remove(Integer.valueOf(i2));
        this.f24116s.remove(Integer.valueOf(i2));
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0126  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean l(com.byazt.ql.vv r9, com.byazt.xs.jx r10, android.view.MotionEvent r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.oi.w.l(com.byazt.ql.vv, com.byazt.xs.jx, android.view.MotionEvent, boolean):boolean");
    }

    public boolean hp(vv vvVar, com.byazt.xs.jx jxVar, MotionEvent motionEvent, boolean z2) {
        hp hpVar = this.f24117u;
        if (hpVar != null) {
            if (hpVar.hp(motionEvent)) {
                return false;
            }
            this.f24117u.hp(jxVar, motionEvent);
        }
        if (this.f24118v) {
            return l(vvVar, jxVar, motionEvent, z2);
        }
        return jx(vvVar, jxVar, motionEvent, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean jx(com.byazt.ql.vv r7, com.byazt.xs.jx r8, android.view.MotionEvent r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.oi.w.jx(com.byazt.ql.vv, com.byazt.xs.jx, android.view.MotionEvent, boolean):boolean");
    }

    private void hp(com.byazt.xs.jx jxVar) {
        hp hpVar = this.f24117u;
        if (hpVar != null) {
            hpVar.hp(jxVar);
        }
    }

    private void hp(vv vvVar, u uVar, com.byazt.xs.jx jxVar) {
        if (this.f24114l <= 0) {
            hp(jxVar);
            return;
        }
        if (!this.f24112j.get()) {
            hp(jxVar);
            return;
        }
        vvVar.hp(uVar, jxVar, jxVar);
        int i2 = this.f24114l;
        if (i2 != Integer.MAX_VALUE) {
            this.f24114l = i2 - 1;
        }
    }

    public w(Context context, u uVar, u uVar2, boolean z2, boolean z3, boolean z4) {
        this.jl = context;
        this.f24115q = uVar;
        this.f24111e = uVar2;
        this.zy = z2;
        this.f24113k = z3;
        this.f24118v = z4;
        jx();
    }
}
