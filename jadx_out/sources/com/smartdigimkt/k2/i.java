package com.smartdigimkt.k2;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.smartdigimkt.sdk.basead.ui.GuideToClickView;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class i extends f {

    /* renamed from: i, reason: collision with root package name */
    public GuideToClickView f41315i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f41316j = false;

    /* renamed from: k, reason: collision with root package name */
    public boolean f41317k = false;

    @Override // com.smartdigimkt.k2.f
    public final void a(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i2, e eVar) {
        super.a(context, cVar, aVar, viewGroup, relativeLayout, view, i2, eVar);
        GuideToClickView guideToClickView = new GuideToClickView(this.f41304a);
        this.f41315i = guideToClickView;
        guideToClickView.setOnClickListener(new h(this));
    }

    @Override // com.smartdigimkt.k2.f
    public final void a(int i2, HashMap map) {
        GuideToClickView guideToClickView;
        GuideToClickView guideToClickView2;
        GuideToClickView guideToClickView3;
        if (i2 == 103) {
            Object obj = map.get("key_has_endcard_improve");
            if ((obj != null && (obj instanceof Boolean) && ((Boolean) obj).booleanValue()) || this.f41308e != 1 || this.f41316j || !this.f41317k || (guideToClickView = this.f41315i) == null || this.f41309f == null) {
                return;
            }
            com.smartdigimkt.z3.d.a(guideToClickView);
            this.f41309f.addView(this.f41315i, new RelativeLayout.LayoutParams(-1, -1));
            return;
        }
        if (i2 == 113) {
            this.f41316j = true;
            GuideToClickView guideToClickView4 = this.f41315i;
            if (guideToClickView4 != null) {
                guideToClickView4.setVisibility(8);
                return;
            }
            return;
        }
        if (i2 != 116) {
            switch (i2) {
                case 106:
                    if (this.f41308e == 3 && com.smartdigimkt.z.z.b(this.f41305b) && this.f41309f != null && (guideToClickView3 = this.f41315i) != null) {
                        com.smartdigimkt.z3.d.a(guideToClickView3);
                        this.f41309f.addView(this.f41315i, new RelativeLayout.LayoutParams(-1, -1));
                        break;
                    }
                    break;
                case 107:
                case 108:
                    this.f41317k = true;
                    break;
            }
            return;
        }
        if (this.f41308e != 3 || com.smartdigimkt.z.z.b(this.f41305b) || this.f41309f == null || (guideToClickView2 = this.f41315i) == null) {
            return;
        }
        com.smartdigimkt.z3.d.a(guideToClickView2);
        this.f41309f.addView(this.f41315i, new RelativeLayout.LayoutParams(-1, -1));
    }
}
