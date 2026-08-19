package com.smartdigimkt.k2;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.BaseShakeView;
import com.smartdigimkt.sdk.basead.ui.ShakeBorderThumbView;
import com.smartdigimkt.sdk.basead.ui.ShakeNativeBorderThumbView;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class y extends f {

    /* renamed from: i, reason: collision with root package name */
    public BaseShakeView f41357i;

    /* renamed from: j, reason: collision with root package name */
    public ShakeBorderThumbView f41358j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f41359k = false;

    /* renamed from: l, reason: collision with root package name */
    public boolean f41360l = false;

    /* renamed from: m, reason: collision with root package name */
    public boolean f41361m = false;

    /* renamed from: n, reason: collision with root package name */
    public boolean f41362n = false;

    /* renamed from: o, reason: collision with root package name */
    public long f41363o;

    /* JADX WARN: Removed duplicated region for block: B:29:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0180  */
    @Override // com.smartdigimkt.k2.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Context r14, com.smartdigimkt.m3.c r15, com.smartdigimkt.l3.a r16, android.view.ViewGroup r17, android.widget.RelativeLayout r18, android.view.View r19, int r20, com.smartdigimkt.k2.e r21) {
        /*
            Method dump skipped, instructions count: 623
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.k2.y.a(android.content.Context, com.smartdigimkt.m3.c, com.smartdigimkt.l3.a, android.view.ViewGroup, android.widget.RelativeLayout, android.view.View, int, com.smartdigimkt.k2.e):void");
    }

    public final void b() {
        BaseShakeView baseShakeView = this.f41357i;
        if (baseShakeView != null) {
            baseShakeView.setVisibility(8);
        }
        ShakeBorderThumbView shakeBorderThumbView = this.f41358j;
        if (shakeBorderThumbView != null) {
            shakeBorderThumbView.setVisibility(8);
        }
    }

    @Override // com.smartdigimkt.k2.f
    public final void a(int i2, HashMap map) {
        ShakeBorderThumbView shakeBorderThumbView;
        if (i2 == 102) {
            this.f41360l = true;
            if (this.f41308e == 1 && com.smartdigimkt.z.z.h(this.f41305b, this.f41306c)) {
                b();
                if (this.f41358j == null || this.f41308e != 1 || com.smartdigimkt.z.z.b(this.f41305b) || com.smartdigimkt.z.z.a(this.f41305b)) {
                    return;
                }
                if (this.f41306c.f41644r.f41927e == 0 || com.smartdigimkt.c5.h.y(this.f41304a) == 2) {
                    this.f41358j.setAlpha(1.0f);
                    this.f41358j.setVisibility(0);
                    return;
                }
                return;
            }
            return;
        }
        if (i2 == 103) {
            Object obj = map.get("key_has_endcard_improve");
            if (obj != null && (obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                b();
                return;
            }
            return;
        }
        if (i2 == 105) {
            b();
            return;
        }
        if (i2 == 106) {
            if (this.f41308e == 3 && com.smartdigimkt.z.z.b(this.f41305b)) {
                a(map);
                return;
            }
            return;
        }
        if (i2 == 118) {
            if (this.f41308e == 3 && com.smartdigimkt.z.z.g(this.f41305b, this.f41306c)) {
                b();
                return;
            }
            return;
        }
        if (i2 == 119) {
            b();
            return;
        }
        if (i2 == 303) {
            if (this.f41308e == 100) {
                BaseShakeView baseShakeView = this.f41357i;
                if (baseShakeView != null) {
                    baseShakeView.setAlpha(0.0f);
                }
                a(map);
                return;
            }
            return;
        }
        if (i2 != 304) {
            switch (i2) {
                case 110:
                    this.f41361m = true;
                    break;
                case 111:
                    this.f41361m = false;
                    break;
                case 112:
                    b();
                    break;
                default:
                    switch (i2) {
                        case 114:
                            this.f41363o = System.currentTimeMillis();
                            Object obj2 = map.get("screen_style");
                            boolean z2 = (obj2 instanceof Integer) && ((Integer) obj2).intValue() == 1;
                            if (z2 && (shakeBorderThumbView = this.f41358j) != null) {
                                ViewGroup.LayoutParams layoutParams = shakeBorderThumbView.getLayoutParams();
                                int iA = com.smartdigimkt.c5.k.a(this.f41304a, 12.0f);
                                if (layoutParams instanceof RelativeLayout.LayoutParams) {
                                    ((RelativeLayout.LayoutParams) layoutParams).setMargins(iA, 0, 0, com.smartdigimkt.c5.k.a(this.f41304a, 48.0f));
                                }
                            }
                            int i3 = this.f41308e;
                            if (i3 == 1) {
                                a(map);
                                if (this.f41357i != null && this.f41358j != null && !this.f41359k && a()) {
                                    this.f41359k = true;
                                    this.f41357i.setVisibility(0);
                                    this.f41357i.postDelayed(new v(this), 3000L);
                                    break;
                                }
                            } else if (!z2 && (i3 != 2 || com.smartdigimkt.z.z.a(this.f41305b))) {
                                int i4 = this.f41308e;
                                if (i4 != 5 && i4 != 6) {
                                    if (i4 == 100) {
                                        BaseShakeView baseShakeView2 = this.f41357i;
                                        if (baseShakeView2 != null) {
                                            baseShakeView2.setAlpha(1.0f);
                                        }
                                        a(map);
                                        break;
                                    }
                                } else {
                                    a(map);
                                    break;
                                }
                            } else {
                                a(map);
                                if (this.f41357i != null && this.f41358j != null && !this.f41359k && a()) {
                                    this.f41359k = true;
                                    this.f41357i.setVisibility(0);
                                    this.f41357i.postDelayed(new v(this), 3000L);
                                    break;
                                }
                            }
                            break;
                        case 115:
                            this.f41362n = true;
                            break;
                        case 116:
                            if (this.f41308e == 3 && !com.smartdigimkt.z.z.b(this.f41305b)) {
                                a(map);
                                break;
                            }
                            break;
                    }
            }
            return;
        }
        if (this.f41308e == 100) {
            b();
        }
    }

    public final void a(HashMap map) {
        RelativeLayout relativeLayout;
        BaseShakeView baseShakeView;
        View view = this.f41310g;
        int iIndexOfChild = (view == null || this.f41307d.indexOfChild(view) <= 0) ? -1 : this.f41307d.indexOfChild(this.f41310g);
        int i2 = this.f41308e;
        if (i2 == 1 || i2 == 2) {
            try {
                relativeLayout = (RelativeLayout) this.f41307d.findViewById(com.smartdigimkt.c5.k.a(this.f41304a, "myoffer_end_card_id", "id"));
            } catch (Throwable unused) {
                relativeLayout = null;
            }
            BaseShakeView baseShakeView2 = this.f41357i;
            if (baseShakeView2 != null) {
                com.smartdigimkt.z3.d.a(baseShakeView2);
                this.f41357i.setVisibility(8);
                if (relativeLayout != null) {
                    relativeLayout.addView(this.f41357i);
                    return;
                } else {
                    this.f41307d.addView(this.f41357i, iIndexOfChild);
                    return;
                }
            }
            return;
        }
        if (i2 == 3) {
            BaseShakeView baseShakeView3 = this.f41357i;
            if (baseShakeView3 != null) {
                com.smartdigimkt.z3.d.a(baseShakeView3);
                this.f41357i.setVisibility(0);
                if (iIndexOfChild > 0) {
                    iIndexOfChild++;
                }
                this.f41307d.addView(this.f41357i, iIndexOfChild);
                return;
            }
            return;
        }
        if (i2 != 5 && i2 != 6) {
            if (i2 == 100 && (baseShakeView = this.f41357i) != null) {
                com.smartdigimkt.z3.d.a(baseShakeView);
                this.f41357i.setVisibility(0);
                this.f41307d.addView(this.f41357i);
                return;
            }
            return;
        }
        BaseShakeView baseShakeView4 = this.f41357i;
        if (baseShakeView4 != null) {
            com.smartdigimkt.z3.d.a(baseShakeView4);
            Object obj = map.get("shake_view_extra_container");
            if (obj != null && (obj instanceof ViewGroup)) {
                BaseShakeView baseShakeView5 = this.f41357i;
                if (baseShakeView5 instanceof ShakeNativeBorderThumbView) {
                    ((ShakeNativeBorderThumbView) baseShakeView5).changeBackground();
                    if (obj instanceof FrameLayout) {
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                        layoutParams.gravity = 17;
                        this.f41357i.setLayoutParams(layoutParams);
                    }
                }
                ((ViewGroup) obj).addView(this.f41357i);
                return;
            }
            int measuredWidth = this.f41307d.getMeasuredWidth();
            s sVarA = s.a();
            Context context = this.f41304a;
            if (sVarA.f41344e == 0) {
                sVarA.f41344e = com.smartdigimkt.c5.k.a(context, 148.0f);
            }
            if (measuredWidth >= sVarA.f41344e) {
                int measuredHeight = this.f41307d.getMeasuredHeight();
                s sVarA2 = s.a();
                Context context2 = this.f41304a;
                if (sVarA2.f41345f == 0) {
                    sVarA2.f41345f = com.smartdigimkt.c5.k.a(context2, 50.0f);
                }
                if (measuredHeight >= sVarA2.f41345f) {
                    if (this.f41307d instanceof FrameLayout) {
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
                        layoutParams2.gravity = 21;
                        this.f41357i.setLayoutParams(layoutParams2);
                    }
                    this.f41307d.addView(this.f41357i);
                    return;
                }
            }
            Object obj2 = map.get("native_ad_event_listener");
            if (obj2 == null || !(obj2 instanceof com.smartdigimkt.p1.s)) {
                return;
            }
            ((com.smartdigimkt.p1.s) obj2).a(1);
        }
    }

    public final void a(BaseShakeView baseShakeView, boolean z2) {
        if (z2) {
            baseShakeView.setOnClickListener(new w(this));
        }
        baseShakeView.setOnShakeListener(new x(this), this.f41306c.f41644r);
    }

    public final boolean a() {
        return (this.f41308e == 1 && com.smartdigimkt.z.z.h(this.f41305b, this.f41306c) && this.f41360l) ? false : true;
    }
}
