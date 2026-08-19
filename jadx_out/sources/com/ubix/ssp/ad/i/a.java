package com.ubix.ssp.ad.i;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.ubix.ssp.ad.e.a0.r;
import com.ubix.ssp.ad.e.a0.s;
import com.ubix.ssp.ad.g.k.f;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public class a extends com.ubix.ssp.ad.b implements View.OnClickListener {

    /* renamed from: l, reason: collision with root package name */
    private boolean f48078l;

    /* renamed from: m, reason: collision with root package name */
    private f f48079m;

    /* renamed from: n, reason: collision with root package name */
    private com.ubix.ssp.ad.i.e.a f48080n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f48081o;

    /* renamed from: p, reason: collision with root package name */
    private AtomicBoolean f48082p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f48083q;

    /* renamed from: com.ubix.ssp.ad.i.a$a, reason: collision with other inner class name */
    public class C0842a implements s.e {
        public C0842a() {
        }

        @Override // com.ubix.ssp.ad.e.a0.s.e
        public void a(float f2, float f3) {
            try {
                if (!a.this.isShown() || com.ubix.ssp.ad.e.a0.y.c.a(a.this.findViewById(2010003), 0.75f, false, (List<Integer>) null) || com.ubix.ssp.ad.e.a0.y.c.a(a.this)) {
                    return;
                }
                a.this.s();
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TRI_VAL__", Base64.encodeToString((f2 + "").getBytes(), 10));
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_AREA__", "3");
                ((com.ubix.ssp.ad.b) a.this).f45638a.put("__CLICK_TRIGGER__", "3");
                if (a.this.f48079m != null) {
                    a.this.f48079m.b(((com.ubix.ssp.ad.b) a.this).f45639b, a.this.findViewById(2010003), ((com.ubix.ssp.ad.b) a.this).f45638a);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.e.a0.s.e
        public void a(Bundle bundle) {
            try {
                if (!a.this.isShown() || com.ubix.ssp.ad.e.a0.y.c.a(a.this.findViewById(2010003), 0.75f, false, (List<Integer>) null) || com.ubix.ssp.ad.e.a0.y.c.a(a.this)) {
                    return;
                }
                if (bundle.getInt("__SENSOR_INFO_TYPE__") == 1) {
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__X_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__X_MAX_ACC__"))));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__Y_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__Y_MAX_ACC__"))));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__Z_MAX_ACC__", String.format("%.2f", Float.valueOf(bundle.getFloat("__Z_MAX_ACC__"))));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TURN_X__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_X__"))));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TURN_Y__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_Y__"))));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TURN_Z__", String.format("%.2f", Float.valueOf(bundle.getFloat("__TURN_Z__"))));
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__UBIX_TURN_TARGET__", bundle.getInt("__UBIX_TURN_TARGET__") + "");
                    ((com.ubix.ssp.ad.b) a.this).f45638a.put("__TURN_TIME__", bundle.getLong("__TURN_TIME__") + "");
                }
                if (a.this.f48079m != null) {
                    a.this.f48079m.a(((com.ubix.ssp.ad.b) a.this).f45639b, bundle);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f48079m != null) {
                a.this.f48079m.d(((com.ubix.ssp.ad.b) a.this).f45639b);
            }
            a.this.requestLayout();
            if (a.this.f48080n != null) {
                a.this.f48080n.a(a.this.l());
            }
        }
    }

    public a(Context context) {
        super(context);
        this.f48082p = new AtomicBoolean(false);
        this.f48083q = false;
    }

    @Override // com.ubix.ssp.ad.b
    public com.ubix.ssp.ad.g.k.b getInterface() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f48078l) {
            this.f48078l = true;
            post(new b());
            f fVar = this.f48079m;
            if (fVar != null) {
                fVar.a(this.f45639b, this);
            }
        }
        setShakeSensor(findViewById(910101));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            this.f45638a.put("__CLICK_AREA__", "1");
            this.f45638a.put("__CLICK_TRIGGER__", "1");
            f fVar = this.f48079m;
            if (fVar != null) {
                fVar.b(this.f45639b, findViewById(2010003), this.f45638a);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        s();
        com.ubix.ssp.ad.i.e.a aVar = this.f48080n;
        if (aVar != null) {
            aVar.k();
        }
    }

    @Override // com.ubix.ssp.ad.b, android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        com.ubix.ssp.ad.i.e.a aVar = this.f48080n;
        if (aVar != null) {
            if (i2 == 0) {
                aVar.a(l());
            } else {
                aVar.k();
            }
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            setShakeSensor(findViewById(910101));
        } else {
            s();
        }
    }

    @Override // com.ubix.ssp.ad.b, android.view.View
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        if (i2 == 0) {
            setShakeSensor(findViewById(910101));
        }
    }

    public void s() {
        if (l() && this.f45643f != null && findViewById(2030001) != null) {
            findViewById(2030001).setVisibility(4);
        }
        s sVar = this.f45643f;
        if (sVar != null) {
            sVar.f();
        }
        AtomicBoolean atomicBoolean = this.f48082p;
        if (atomicBoolean != null) {
            atomicBoolean.set(false);
        }
        s sVar2 = this.f45643f;
        if (sVar2 != null) {
            sVar2.a();
        }
        com.ubix.ssp.ad.i.e.a aVar = this.f48080n;
        if (aVar != null) {
            aVar.k();
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void setInnerListener(com.ubix.ssp.ad.g.k.b bVar) {
        this.f48079m = (f) bVar;
        this.f48080n.setInnerListener(bVar);
    }

    @Override // com.ubix.ssp.ad.b
    public void setShakeSensor(View view) {
        if (l() && this.f45643f != null) {
            if (findViewById(2030001) != null) {
                findViewById(2030001).setVisibility(4);
            }
            com.ubix.ssp.ad.i.e.a aVar = this.f48080n;
            if (aVar != null) {
                aVar.k();
                return;
            }
            return;
        }
        super.setShakeSensor(view);
        synchronized (this) {
            if (this.f45643f != null && !this.f48082p.get() && !this.f48083q) {
                this.f48082p.set(true);
                this.f45643f.a(new C0842a());
            }
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void a(int i2, int i3, int i4, double d2, int i5, int[] iArr, int i6, String str, String str2, int i7, double d3, boolean z2, boolean z3) {
        String str3;
        String str4;
        ViewGroup viewGroupA = this.f48080n.a(i2);
        if (viewGroupA != null && viewGroupA.findViewById(2030001) == null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            if (i2 == 2) {
                com.ubix.ssp.ad.i.e.a aVar = this.f48080n;
                if (TextUtils.isEmpty(str + str2)) {
                    str3 = "摇动或点击了解更多";
                } else {
                    str3 = str + str2;
                }
                View viewA = aVar.a(str3, true);
                viewA.setVisibility(4);
                if (this.f48080n.getTemplateId() == 2003 || this.f48080n.getTemplateId() == 2004 || this.f48080n.getTemplateId() == 2005) {
                    layoutParams.addRule(13);
                } else {
                    layoutParams.addRule(12);
                }
                viewA.setLayoutParams(layoutParams);
                a(viewGroupA, viewA, false, i4, true, true, d2, iArr, i6, i7, d3, z2, z3);
                if (l()) {
                    return;
                }
                viewA.setVisibility(0);
                s();
                return;
            }
            if (i2 != 8) {
                if (i2 != 256) {
                    return;
                }
                if (com.ubix.ssp.ad.d.b.f45786E == 1 && this.f48081o) {
                    this.f48080n.b();
                    return;
                } else {
                    this.f48080n.f();
                    return;
                }
            }
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(12);
            layoutParams2.addRule(2, 2030001);
            com.ubix.ssp.ad.i.e.a aVar2 = this.f48080n;
            if (TextUtils.isEmpty(str + str2)) {
                str4 = "滑动或点击了解更多";
            } else {
                str4 = str + str2;
            }
            viewGroupA.addView(aVar2.a(str4, false), layoutParams);
            viewGroupA.addView(this.f48080n.a(d2, i5), layoutParams2);
        }
    }

    @Override // com.ubix.ssp.ad.b
    public boolean b(Bundle bundle) {
        try {
            this.f48080n.d(bundle);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public void d(int i2, int i3) {
    }

    @Override // com.ubix.ssp.ad.b
    public void j() {
        super.j();
        removeAllViews();
        this.f48080n.a();
    }

    @Override // com.ubix.ssp.ad.b
    public void a(Context context, Bundle bundle) {
        this.f45639b = bundle.getInt("AD_INDEX", 0);
        this.f48081o = bundle.getBoolean("isSlided", false);
        bundle.putSerializable("CLICK_MAP", this.f45638a);
        com.ubix.ssp.ad.i.e.a aVarA = com.ubix.ssp.ad.i.e.a.a(context, bundle);
        this.f48080n = aVarA;
        if (aVarA != null) {
            aVarA.b(context, bundle);
            int i2 = bundle.getInt("AD_WIDTH");
            if (i2 <= 0) {
                i2 = -1;
            }
            int i3 = bundle.getInt("AD_HEIGHT");
            if (i3 <= 0) {
                i3 = -1;
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (i2 == -1 ? -1.0f : i2 * r.a().a(context)), (int) (i3 != -1 ? i3 * r.a().a(context) : -1.0f));
            int iA = r.a(bundle.getFloat("AD_MARGIN_LEFT"));
            int iA2 = r.a(bundle.getFloat("AD_MARGIN_TOP"));
            int iA3 = r.a(bundle.getFloat("AD_MARGIN_RIGHT"));
            int iA4 = r.a(bundle.getFloat("AD_MARGIN_BOTTOM"));
            layoutParams.setMargins(iA, iA2, iA3, iA4);
            if (iA + iA2 + iA3 + iA4 > 0) {
                setOnClickListener(this);
            }
            addView(this.f48080n, layoutParams);
        }
    }

    @Override // com.ubix.ssp.ad.b
    public void a(String str, String str2, String str3, String str4, String str5, String str6, long j2) {
        super.a(str, str2, str3, str4, str5, str6, j2);
        this.f48080n.a(str, str2, str3, str4, str5, str6, j2);
    }
}
