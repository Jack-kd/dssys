package com.ubix.ssp.ad.e.b0;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.ubix.ssp.ad.g.k.j;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public class d extends e implements com.ubix.ssp.ad.e.b0.i.b {

    /* renamed from: H, reason: collision with root package name */
    private HashMap<String, String> f46636H;

    /* renamed from: I, reason: collision with root package name */
    private AtomicInteger f46637I;

    /* renamed from: J, reason: collision with root package name */
    private int f46638J;

    /* renamed from: K, reason: collision with root package name */
    private boolean f46639K;

    public d(Context context, boolean z2, int i2) {
        this(context, z2, i2, 0L);
    }

    public void a(int i2) {
        this.f46638J = i2;
    }

    @Override // com.ubix.ssp.ad.e.b0.i.b
    public void b() {
        j();
    }

    @Override // com.ubix.ssp.ad.e.b0.i.b
    public void c() {
        i();
    }

    @Override // com.ubix.ssp.ad.e.b0.e
    public boolean f() {
        return getWindowVisibility() == 0 && isShown();
    }

    @Override // com.ubix.ssp.ad.e.b0.e
    public void h() {
        super.h();
        setOnClickListener(this);
        setOnTouchListener(this);
    }

    @Override // com.ubix.ssp.ad.e.b0.e
    public void m() {
        super.m();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f46648F) {
            return;
        }
        com.ubix.ssp.ad.e.b0.i.a.b().a(hashCode(), this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        j jVar = this.f46644B;
        if (jVar != null) {
            jVar.b(0, view, this.f46636H);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f46638J = 0;
        com.ubix.ssp.ad.e.b0.i.a.b().b(hashCode());
        c();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        a(motionEvent);
        return false;
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 == 8) {
            i();
        }
    }

    public void p() {
        com.ubix.ssp.ad.e.b0.i.a.b().b(hashCode());
        removeAllViews();
        b bVar = this.f46657k;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.e
    public void setAutoPlay(boolean z2) {
        super.setAutoPlay(z2);
        this.f46639K = z2;
    }

    @Override // com.ubix.ssp.ad.e.b0.e
    public void setMute(boolean z2) {
        super.setMute(z2);
    }

    public d(Context context, boolean z2, int i2, long j2) {
        super(context, i2, j2);
        this.f46636H = new HashMap<>();
        this.f46637I = new AtomicInteger();
        this.f46638J = 0;
        this.f46639K = z2;
        super.setAutoPlay(z2);
    }

    public void a(MotionEvent motionEvent) {
        HashMap<String, String> map;
        String str;
        String str2;
        try {
            if (motionEvent.getAction() == 0) {
                this.f46636H.put("__DOWN_X__", motionEvent.getX() + "");
                this.f46636H.put("__DOWN_Y__", motionEvent.getY() + "");
                this.f46636H.put("__RAW_DOWN_X__", motionEvent.getRawX() + "");
                map = this.f46636H;
                str = motionEvent.getRawY() + "";
                str2 = "__RAW_DOWN_Y__";
            } else {
                if (motionEvent.getAction() != 1) {
                    return;
                }
                this.f46636H.put("__UP_X__", motionEvent.getX() + "");
                this.f46636H.put("__UP_Y__", motionEvent.getY() + "");
                this.f46636H.put("__WIDTH__", getWidth() + "");
                this.f46636H.put("__HEIGHT__", getHeight() + "");
                this.f46636H.put("__RAW_UP_X__", motionEvent.getRawX() + "");
                this.f46636H.put("__RAW_UP_Y__", motionEvent.getRawY() + "");
                map = this.f46636H;
                str = motionEvent.getX() + "_" + motionEvent.getY();
                str2 = "__CLICK_XY__";
            }
            map.put(str2, str);
        } catch (Exception unused) {
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.i.b
    public boolean a() {
        if (getState() != 6) {
            return getState() == 4 ? this.f46639K && f() && !com.ubix.ssp.ad.e.a0.y.c.a((View) this, 0.3f, false, (List<Integer>) null) && !com.ubix.ssp.ad.e.a0.y.c.a(this) : this.f46639K && f() && !com.ubix.ssp.ad.e.a0.y.c.a((View) this, 0.75f, false, (List<Integer>) null) && !com.ubix.ssp.ad.e.a0.y.c.a(this);
        }
        com.ubix.ssp.ad.e.b0.i.a.b().b(hashCode());
        return false;
    }
}
