package com.smartdigimkt.k2;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.SwipeOverlayView;
import com.smartdigimkt.sdk.basead.ui.guidetoclickv2.SwipeG2CV2View;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes5.dex */
public final class e0 extends f {

    /* renamed from: i, reason: collision with root package name */
    public SwipeG2CV2View f41302i;

    /* renamed from: j, reason: collision with root package name */
    public SwipeOverlayView f41303j;

    @Override // com.smartdigimkt.k2.f
    public final void a(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i2, e eVar) {
        super.a(context, cVar, aVar, viewGroup, relativeLayout, view, i2, eVar);
    }

    public final void b() {
        try {
            SwipeG2CV2View swipeG2CV2View = this.f41302i;
            if (swipeG2CV2View != null) {
                swipeG2CV2View.release();
            }
            SwipeG2CV2View swipeG2CV2View2 = this.f41302i;
            if (swipeG2CV2View2 != null && swipeG2CV2View2.getParent() != null) {
                ((ViewGroup) this.f41302i.getParent()).removeView(this.f41302i);
                this.f41302i = null;
            }
        } catch (Throwable unused) {
        }
        try {
            SwipeOverlayView swipeOverlayView = this.f41303j;
            if (swipeOverlayView != null) {
                swipeOverlayView.setOnSwipeClickListener(null);
                this.f41303j.setOnCommonClickListener(null);
            }
            SwipeOverlayView swipeOverlayView2 = this.f41303j;
            if (swipeOverlayView2 == null || swipeOverlayView2.getParent() == null) {
                return;
            }
            ((ViewGroup) this.f41303j.getParent()).removeView(this.f41303j);
            this.f41303j = null;
        } catch (Throwable unused2) {
        }
    }

    public final void c() {
        try {
            SwipeOverlayView swipeOverlayView = this.f41303j;
            if (swipeOverlayView == null) {
                return;
            }
            ViewGroup viewGroup = this.f41307d;
            if (viewGroup == null) {
                swipeOverlayView.setExcludeViews(null);
                return;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("myoffer_splash_enter_immediately_area", 52);
            linkedHashMap.put("myoffer_panel_cta_layout", 1);
            linkedHashMap.put("myoffer_splash_ad_cta_layout", 1);
            linkedHashMap.put("myoffer_splash_skip_area", 59);
            linkedHashMap.put("myoffer_splash_skip", 59);
            linkedHashMap.put("myoffer_feedback_ll_id", -1);
            linkedHashMap.put("myoffer_btn_mute_id", -1);
            linkedHashMap.put("myoffer_btn_close_id", -1);
            linkedHashMap.put("myoffer_btn_countdown_close_id", -1);
            linkedHashMap.put("myoffer_btn_close_header_view_id", -1);
            linkedHashMap.put("myoffer_btn_close_ch_id", -1);
            linkedHashMap.put("myoffer_inctask_close_view", -1);
            linkedHashMap.put("myoffer_include_invalid_button_full_screen", -1);
            linkedHashMap.put("myoffer_fl_invalid_btn", -1);
            linkedHashMap.put("base_media_ad_close", -1);
            linkedHashMap.put("myoffer_banner_close", -1);
            linkedHashMap.put("myoffer_feedback_iv_close", -1);
            linkedHashMap.put("myoffer_g2c_item_close_iv", -1);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                int iA = com.smartdigimkt.c5.k.a(this.f41304a, (String) entry.getKey(), "id");
                if (iA == 0) {
                } else {
                    View viewFindViewById = viewGroup.findViewById(iA);
                    if (viewFindViewById != null) {
                        linkedHashMap2.put(viewFindViewById, (Integer) entry.getValue());
                        Objects.toString(entry.getValue());
                    }
                }
            }
            if (linkedHashMap2.isEmpty()) {
                this.f41303j.setExcludeViews(null);
            } else {
                this.f41303j.setExcludeViews(linkedHashMap2);
                linkedHashMap2.size();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.smartdigimkt.k2.f
    public final void a(int i2, HashMap map) {
        try {
            switch (i2) {
                case 108:
                    b();
                    break;
                case 110:
                    SwipeG2CV2View swipeG2CV2View = this.f41302i;
                    if (swipeG2CV2View != null) {
                        swipeG2CV2View.resumeAnim();
                        break;
                    }
                    break;
                case 111:
                    SwipeG2CV2View swipeG2CV2View2 = this.f41302i;
                    if (swipeG2CV2View2 != null) {
                        swipeG2CV2View2.pauseAnim();
                        break;
                    }
                    break;
                case 112:
                    b();
                    break;
                case 114:
                    a();
                    break;
                case 115:
                    b();
                    break;
            }
        } catch (Throwable unused) {
        }
    }

    public final void a() {
        com.smartdigimkt.m3.e eVar;
        try {
            com.smartdigimkt.l3.a aVar = this.f41306c;
            if (aVar != null && (eVar = aVar.f41644r) != null && this.f41304a != null && this.f41307d != null) {
                int i2 = eVar.f41900U1;
                int i3 = eVar.f41903V1;
                int i4 = eVar.f41927e;
                if (i2 != 1 && i2 != 2 && i2 != 3) {
                    i2 = 1;
                }
                if (i3 <= 0) {
                    i3 = 10;
                }
                if (this.f41303j == null) {
                    SwipeOverlayView swipeOverlayView = new SwipeOverlayView(this.f41304a);
                    this.f41303j = swipeOverlayView;
                    swipeOverlayView.setSwipeType(i2);
                    this.f41303j.setSwipeThreshold(i3);
                    c();
                    this.f41303j.setEndCardClickArea(i4);
                    this.f41303j.setOnSwipeClickListener(new c0(this));
                    this.f41303j.setOnCommonClickListener(new d0(this));
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                    layoutParams.topMargin = com.smartdigimkt.c5.k.a(this.f41304a, 25.0f);
                    this.f41307d.addView(this.f41303j, layoutParams);
                }
                if (this.f41302i == null) {
                    SwipeG2CV2View swipeG2CV2View = new SwipeG2CV2View(this.f41304a);
                    this.f41302i = swipeG2CV2View;
                    swipeG2CV2View.setSwipeType(i2);
                    this.f41302i.initView(this.f41308e, 0);
                }
                if (this.f41309f != null) {
                    this.f41309f.addView(this.f41302i, new RelativeLayout.LayoutParams(-1, -1));
                    return;
                }
                SwipeOverlayView swipeOverlayView2 = this.f41303j;
                if (swipeOverlayView2 != null) {
                    swipeOverlayView2.addView(this.f41302i, new ViewGroup.LayoutParams(-1, -1));
                }
            }
        } catch (Throwable unused) {
        }
    }
}
