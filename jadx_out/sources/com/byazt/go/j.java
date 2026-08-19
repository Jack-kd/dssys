package com.byazt.go;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.byazt.jkd.q;
import com.byazt.jz.sz;
import com.byazt.xci.b;
import com.byazt.xci.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, 1971, 38})
/* loaded from: classes2.dex */
public abstract class j implements View.OnClickListener, View.OnTouchListener {
    public static float hp = 0.0f;

    /* renamed from: j, reason: collision with root package name */
    public static float f20514j = 0.0f;
    public static float jx = 0.0f;

    /* renamed from: l, reason: collision with root package name */
    public static float f20515l = 0.0f;

    /* renamed from: q, reason: collision with root package name */
    public static int f20516q = 8;

    /* renamed from: w, reason: collision with root package name */
    public static long f20517w;

    /* renamed from: a, reason: collision with root package name */
    public final Context f20518a;
    public e eb = new e();

    /* renamed from: s, reason: collision with root package name */
    public final com.byazt.pf.j f20519s = new com.byazt.pf.j();

    @com.byazt.kj.hp(hp = {0, 1, 1971, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {
        public int hp;

        /* renamed from: j, reason: collision with root package name */
        public long f20521j;
        public double jx;

        /* renamed from: l, reason: collision with root package name */
        public double f20522l;

        public hp(int i2, double d2, double d3, long j2) {
            this.hp = i2;
            this.f20522l = d2;
            this.jx = d3;
            this.f20521j = j2;
        }
    }

    static {
        try {
            if (ViewConfiguration.get(sz.getContext()) != null) {
                f20516q = ViewConfiguration.get(sz.getContext()).getScaledTouchSlop();
            }
        } catch (Exception unused) {
        }
    }

    public j(Context context) {
        if (context == null) {
            this.f20518a = sz.getContext();
        } else {
            this.f20518a = context;
        }
    }

    public abstract void hp(View view, e eVar);

    public void hp(b bVar) {
    }

    public void j() {
    }

    public void jx() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (q.hp()) {
            hp(view, this.eb);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(final View view, MotionEvent motionEvent) {
        int i2;
        this.eb.jx(motionEvent.getDeviceId());
        this.eb.l(motionEvent.getToolType(0));
        this.eb.j(motionEvent.getSource());
        int actionMasked = motionEvent.getActionMasked();
        int i3 = 1;
        if (actionMasked == 0) {
            this.eb.w((int) motionEvent.getRawX());
            this.eb.a((int) motionEvent.getRawY());
            this.eb.hp(motionEvent.getRawX());
            this.eb.l(motionEvent.getRawY());
            this.eb.hp(System.currentTimeMillis());
            this.eb.l(motionEvent.getToolType(0));
            this.eb.jx(motionEvent.getDeviceId());
            this.eb.j(motionEvent.getSource());
            f20517w = System.currentTimeMillis();
            this.eb.l(true);
            com.byazt.zn.b.hp(motionEvent);
            i2 = 0;
        } else if (actionMasked != 1) {
            i2 = 2;
            if (actionMasked == 2) {
                jx += Math.abs(motionEvent.getX() - hp);
                f20514j += Math.abs(motionEvent.getY() - f20515l);
                hp = motionEvent.getX();
                f20515l = motionEvent.getY();
                long jCurrentTimeMillis = System.currentTimeMillis() - f20517w;
                this.eb.jx(motionEvent.getRawX());
                this.eb.j(motionEvent.getRawY());
                if (Math.abs(this.eb.ec() - this.eb.gu()) >= f20516q || Math.abs(this.eb.sz() - this.eb.jl()) >= f20516q) {
                    this.eb.l(false);
                }
                if (jCurrentTimeMillis > 200) {
                    float f2 = jx;
                    int i4 = f20516q;
                    if (f2 > i4 || f20515l > i4) {
                    }
                }
            } else if (actionMasked != 3) {
                i3 = -1;
            } else {
                if (com.byazt.hxe.hp.hp(view) && com.byazt.hxe.hp.l(view)) {
                    view.post(new Runnable() { // from class: com.byazt.go.j.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (view.isShown()) {
                                j jVar = j.this;
                                jVar.hp(view, jVar.eb);
                            }
                        }
                    });
                    return true;
                }
                i3 = 4;
            }
            i2 = i3;
        } else {
            this.eb.jx(motionEvent.getRawX());
            this.eb.j(motionEvent.getRawY());
            if (Math.abs(this.eb.ec() - this.eb.gu()) >= f20516q || Math.abs(this.eb.sz() - this.eb.jl()) >= f20516q) {
                this.eb.l(false);
            }
            this.eb.l(System.currentTimeMillis());
            Context context = this.f20518a;
            if (context == null) {
                context = sz.getContext();
            }
            com.byazt.pf.l lVar = (com.byazt.pf.l) hp(com.byazt.pf.l.class);
            if (lVar != null) {
                lVar.hp(this.eb);
            }
            if (com.byazt.hxe.hp.hp(view)) {
                if (com.byazt.hxe.hp.hp(view, this.eb.ec(), this.eb.sz(), this.eb.gu(), this.eb.jl())) {
                    return false;
                }
                if (com.byazt.hxe.hp.l(view)) {
                    hp(view, this.eb);
                }
                return true;
            }
            if (lVar != null) {
                Point point = new Point((int) this.eb.ec(), (int) this.eb.sz());
                if (view != null && !lVar.hp(view, context) && lVar.hp((View) view.getParent(), point)) {
                    return true;
                }
            }
            i2 = 3;
        }
        this.eb.zy().put(motionEvent.getActionMasked(), new hp(i2, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
        return false;
    }

    public void w(int i2) {
    }

    public <T extends com.byazt.pf.hp> T hp(Class<T> cls) {
        return (T) this.f20519s.hp(cls);
    }
}
