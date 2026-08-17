package com.ubix.ssp.ad.e.b0;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.g.k.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public class g extends e implements com.ubix.ssp.ad.e.b0.i.b {

    /* renamed from: H, reason: collision with root package name */
    private AtomicBoolean f46678H;

    /* renamed from: I, reason: collision with root package name */
    private AtomicBoolean f46679I;

    /* renamed from: J, reason: collision with root package name */
    private HashMap<String, String> f46680J;

    /* renamed from: K, reason: collision with root package name */
    private boolean f46681K;

    /* renamed from: L, reason: collision with root package name */
    private long f46682L;

    /* renamed from: M, reason: collision with root package name */
    private long f46683M;

    public g(Context context) {
        super(context, 1);
        this.f46678H = new AtomicBoolean(true);
        this.f46679I = new AtomicBoolean(true);
        this.f46680J = new HashMap<>();
        this.f46681K = true;
        this.f46682L = 300L;
        this.f46683M = 0L;
        setAutoPlay(true);
    }

    private void q() {
        if (this.f46646D == null) {
            this.f46646D = new ArrayList<>();
        }
        this.f46646D.add(900102);
        this.f46646D.add(900131);
        this.f46646D.add(900130);
    }

    public void a(MotionEvent motionEvent) {
        HashMap<String, String> map;
        String str;
        String str2;
        try {
            if (motionEvent.getAction() == 0) {
                this.f46680J.put("__DOWN_X__", motionEvent.getX() + "");
                this.f46680J.put("__DOWN_Y__", motionEvent.getY() + "");
                this.f46680J.put("__RAW_DOWN_X__", motionEvent.getRawX() + "");
                map = this.f46680J;
                str = motionEvent.getRawY() + "";
                str2 = "__RAW_DOWN_Y__";
            } else {
                if (motionEvent.getAction() != 1) {
                    return;
                }
                this.f46680J.put("__UP_X__", motionEvent.getX() + "");
                this.f46680J.put("__UP_Y__", motionEvent.getY() + "");
                this.f46680J.put("__WIDTH__", getWidth() + "");
                this.f46680J.put("__HEIGHT__", getHeight() + "");
                this.f46680J.put("__RAW_UP_X__", motionEvent.getRawX() + "");
                this.f46680J.put("__RAW_UP_Y__", motionEvent.getRawY() + "");
                map = this.f46680J;
                str = motionEvent.getX() + "_" + motionEvent.getY();
                str2 = "__CLICK_XY__";
            }
            map.put(str2, str);
        } catch (Exception unused) {
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.i.b
    public void b() {
        j();
    }

    @Override // com.ubix.ssp.ad.e.b0.i.b
    public void c() {
        i();
        if (this.f46648F) {
            com.ubix.ssp.ad.e.b0.i.a.b().b(hashCode());
        }
    }

    @Override // com.ubix.ssp.ad.e.b0.e
    public void h() {
        super.h();
        q();
        setOnClickListener(this);
        setOnTouchListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        j jVar = this.f46644B;
        if (jVar != null) {
            jVar.b(0, view, this.f46680J);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        a(motionEvent);
        return false;
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        try {
            if (i2 == 0) {
                if (this.f46681K) {
                    com.ubix.ssp.ad.e.b0.i.a.b().a(hashCode(), this);
                }
                if (this.f46678H.get() && isShown()) {
                    this.f46678H.set(false);
                    j jVar = this.f46644B;
                    if (jVar != null) {
                        jVar.a(0, this);
                    }
                }
            } else {
                if (this.f46654h != null && 0 != getCurrentPositionWhenPlaying()) {
                    f.a(getContext(), this.f46654h.a(), getCurrentPositionWhenPlaying());
                }
                i();
                if (this.f46681K) {
                    com.ubix.ssp.ad.e.b0.i.a.b().b(hashCode());
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        j jVar2 = this.f46644B;
        if (jVar2 != null) {
            jVar2.b(0, i2);
        }
    }

    public void p() {
        com.ubix.ssp.ad.e.b0.i.a.b().b(hashCode());
        try {
            b bVar = this.f46657k;
            if (bVar != null) {
                bVar.e();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public g(Context context, int i2) {
        super(context, i2);
        this.f46678H = new AtomicBoolean(true);
        this.f46679I = new AtomicBoolean(true);
        this.f46680J = new HashMap<>();
        this.f46681K = true;
        this.f46682L = 300L;
        this.f46683M = 0L;
        u.e("user specified type=" + i2);
        setAutoPlay(true);
    }

    public void a(boolean z2) {
        this.f46681K = z2;
    }

    @Override // com.ubix.ssp.ad.e.b0.i.b
    public boolean a() {
        return hasWindowFocus() && getWindowVisibility() == 0 && !com.ubix.ssp.ad.e.a0.y.c.a(this);
    }
}
