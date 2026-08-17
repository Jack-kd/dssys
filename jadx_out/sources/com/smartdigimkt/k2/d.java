package com.smartdigimkt.k2;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.anythink.core.common.a.b;
import com.sigmob.sdk.base.models.ClickCommon;
import com.smartdigimkt.sdk.basead.ui.improveclick.ambience.BubbleDropAnimView;
import java.util.HashMap;

/* loaded from: classes5.dex */
public final class d extends f {

    /* renamed from: i, reason: collision with root package name */
    public BubbleDropAnimView f41299i;

    /* renamed from: j, reason: collision with root package name */
    public int f41300j;

    @Override // com.smartdigimkt.k2.f
    public final void a(Context context, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i2, e eVar) {
        super.a(context, cVar, aVar, viewGroup, relativeLayout, view, i2, eVar);
        this.f41300j = 1;
        if (this.f41308e == 3) {
            this.f41300j = this.f41306c.f41644r.f41951m;
        } else {
            this.f41300j = com.smartdigimkt.c5.h.y(this.f41304a);
        }
    }

    @Override // com.smartdigimkt.k2.f
    public final void a(int i2, HashMap map) {
        float f2;
        switch (i2) {
            case 110:
                BubbleDropAnimView bubbleDropAnimView = this.f41299i;
                if (bubbleDropAnimView != null) {
                    bubbleDropAnimView.onResume();
                    break;
                }
                break;
            case 111:
                BubbleDropAnimView bubbleDropAnimView2 = this.f41299i;
                if (bubbleDropAnimView2 != null) {
                    bubbleDropAnimView2.onPause();
                    break;
                }
                break;
            case 112:
            case 115:
                BubbleDropAnimView bubbleDropAnimView3 = this.f41299i;
                if (bubbleDropAnimView3 != null) {
                    bubbleDropAnimView3.release();
                    com.smartdigimkt.z3.d.a(this.f41299i);
                    break;
                }
                break;
            case 113:
                Object obj = map.get("click_type");
                Object obj2 = map.get(ClickCommon.CLICK_AREA);
                if (obj != null && (obj instanceof Integer) && obj2 != null && (obj2 instanceof Integer)) {
                    break;
                }
                break;
            case 114:
                Object obj3 = map.get("material_direction");
                if (obj3 != null && (obj3 instanceof Integer)) {
                }
                int i3 = this.f41306c.f41644r.f41953m1;
                if (i3 != 2) {
                    if (i3 == 3 && this.f41308e == 2) {
                        ViewGroup viewGroup = this.f41307d;
                        int i4 = this.f41300j;
                        if (viewGroup != null) {
                            Context context = viewGroup.getContext();
                            if (viewGroup.getParent() != null && (viewGroup.getParent() instanceof RelativeLayout)) {
                                RelativeLayout relativeLayout = (RelativeLayout) viewGroup.getParent();
                                ImageView imageView = new ImageView(context);
                                imageView.setBackgroundResource(com.smartdigimkt.c5.k.a(context, "myoffer_bg_ambience_border", "drawable"));
                                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                                layoutParams.addRule(6, viewGroup.getId());
                                layoutParams.addRule(7, viewGroup.getId());
                                layoutParams.addRule(8, viewGroup.getId());
                                layoutParams.addRule(5, viewGroup.getId());
                                int i5 = -com.smartdigimkt.c5.k.a(context, 5.0f);
                                layoutParams.topMargin = i5;
                                layoutParams.rightMargin = i5;
                                layoutParams.bottomMargin = i5;
                                layoutParams.leftMargin = i5;
                                relativeLayout.addView(imageView, 0, layoutParams);
                                if (i4 == 1) {
                                    ImageView imageView2 = new ImageView(context);
                                    imageView2.setScaleType(ImageView.ScaleType.FIT_XY);
                                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, (int) (com.smartdigimkt.c5.h.j(context) * 0.424d));
                                    layoutParams2.addRule(2, viewGroup.getId());
                                    layoutParams2.addRule(14);
                                    layoutParams2.bottomMargin = -((int) ((context.getResources().getDisplayMetrics().density * 24.0f) + 0.5f));
                                    relativeLayout.addView(imageView2, 0, layoutParams2);
                                    String strB = com.smartdigimkt.t1.d.a().b(b.d.f2203q);
                                    if (!TextUtils.isEmpty(strB)) {
                                        com.smartdigimkt.z.a0.a().a(new com.smartdigimkt.t3.o(3, strB), -1, -1, new com.smartdigimkt.l2.a(imageView2));
                                        break;
                                    }
                                } else {
                                    ImageView imageView3 = new ImageView(context);
                                    ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
                                    imageView3.setScaleType(scaleType);
                                    imageView3.setImageResource(com.smartdigimkt.c5.k.a(context, "myoffer_ambience_left", "drawable"));
                                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) ((context.getResources().getDisplayMetrics().density * 140.0f) + 0.5f), (int) ((context.getResources().getDisplayMetrics().density * 330.0f) + 0.5f));
                                    layoutParams3.addRule(0, viewGroup.getId());
                                    layoutParams3.addRule(15);
                                    layoutParams3.rightMargin = -((int) ((context.getResources().getDisplayMetrics().density * 42.0f) + 0.5f));
                                    relativeLayout.addView(imageView3, 0, layoutParams3);
                                    String strB2 = com.smartdigimkt.t1.d.a().b(b.d.f2204r);
                                    if (TextUtils.isEmpty(strB2)) {
                                        f2 = 0.5f;
                                    } else {
                                        f2 = 0.5f;
                                        com.smartdigimkt.z.a0.a().a(new com.smartdigimkt.t3.o(3, strB2), -1, -1, new com.smartdigimkt.l2.b(imageView3));
                                    }
                                    ImageView imageView4 = new ImageView(context);
                                    imageView4.setScaleType(scaleType);
                                    imageView4.setImageResource(com.smartdigimkt.c5.k.a(context, "myoffer_ambience_right", "drawable"));
                                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) ((context.getResources().getDisplayMetrics().density * 140.0f) + f2), (int) ((context.getResources().getDisplayMetrics().density * 330.0f) + f2));
                                    layoutParams4.addRule(1, viewGroup.getId());
                                    layoutParams4.addRule(15);
                                    layoutParams4.leftMargin = -((int) ((context.getResources().getDisplayMetrics().density * 42.0f) + f2));
                                    relativeLayout.addView(imageView4, 0, layoutParams4);
                                    String strB3 = com.smartdigimkt.t1.d.a().b(b.d.f2205s);
                                    if (!TextUtils.isEmpty(strB3)) {
                                        com.smartdigimkt.z.a0.a().a(new com.smartdigimkt.t3.o(3, strB3), -1, -1, new com.smartdigimkt.l2.c(imageView4));
                                        break;
                                    }
                                }
                            }
                        }
                    }
                } else if (this.f41299i == null) {
                    BubbleDropAnimView bubbleDropAnimView4 = new BubbleDropAnimView(this.f41304a);
                    this.f41299i = bubbleDropAnimView4;
                    bubbleDropAnimView4.initSetting(this.f41306c, this.f41311h);
                    if (this.f41306c.f41644r.f41953m1 == 2) {
                        if (this.f41308e == 2) {
                            if (this.f41307d.getParent() != null && (this.f41307d.getParent() instanceof ViewGroup)) {
                                ((ViewGroup) this.f41307d.getParent()).addView(this.f41299i, -1, -1);
                                break;
                            }
                        } else {
                            this.f41307d.addView(this.f41299i, -1, -1);
                            break;
                        }
                    }
                }
                break;
        }
    }
}
