package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m1.r;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.r2.l;
import com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener;
import com.smartdigimkt.sdk.basead.ui.component.RoundImageView;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.a3;
import com.smartdigimkt.v1.k3;
import com.smartdigimkt.v1.n3;
import com.smartdigimkt.z.z;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public class MediaATView extends BaseMediaATView implements a3 {
    public static final String TAG = "sdm_MediaATView";

    /* renamed from: k, reason: collision with root package name */
    public TextView f43465k;

    /* renamed from: l, reason: collision with root package name */
    public TextView f43466l;

    /* renamed from: m, reason: collision with root package name */
    public ImageView f43467m;

    /* renamed from: n, reason: collision with root package name */
    public ImageView f43468n;

    /* renamed from: o, reason: collision with root package name */
    public RoundImageView f43469o;

    /* renamed from: p, reason: collision with root package name */
    public TextView f43470p;

    /* renamed from: q, reason: collision with root package name */
    public RelativeLayout f43471q;

    /* renamed from: r, reason: collision with root package name */
    public SimplePlayerMediaView f43472r;

    public MediaATView(Context context, c cVar, a aVar, r rVar) {
        super(context, cVar, aVar, rVar);
    }

    private String getLayoutResName() {
        int i2 = this.f43259j;
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "myoffer_media_ad_view" : "myoffer_template_text_float" : "myoffer_template_top_text" : "myoffer_template_top_image" : "myoffer_template_left_text" : "myoffer_template_left_image";
    }

    @Override // com.smartdigimkt.v1.a3
    public void destroyPlayerView(int i2) {
        SimplePlayerMediaView simplePlayerMediaView = this.f43472r;
        if (simplePlayerMediaView != null) {
            simplePlayerMediaView.destroyPlayerView(i2);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseMediaATView
    public List<View> getClickViews() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f43466l);
        if (this.f43251b.f41927e != 1) {
            arrayList.add(this.f43465k);
            arrayList.add(this.f43468n);
            arrayList.add(this.f43469o);
            arrayList.add(this.f43470p);
            e eVar = this.f43251b;
            if (eVar != null && eVar.f41927e == 0) {
                arrayList.add(this.f43467m);
                arrayList.add(this.f43471q);
            }
        }
        return arrayList;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseMediaATView
    public List<View> getContainerClickViews() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f43467m);
        arrayList.add(this.f43471q);
        return arrayList;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseMediaATView
    public View getMonitorClickView() {
        return this.f43466l;
    }

    @Override // com.smartdigimkt.v1.a3
    public long getVideoCurrentPosition() {
        SimplePlayerMediaView simplePlayerMediaView = this.f43472r;
        if (simplePlayerMediaView != null) {
            return simplePlayerMediaView.getVideoCurrentPosition();
        }
        return 0L;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseMediaATView
    public void init(int i2, int i3, int i4) {
        FrameLayout frameLayout;
        TextView textView;
        c cVar;
        e eVar;
        View viewFindViewById;
        super.init(i2, i3, i4);
        View viewInflate = LayoutInflater.from(getContext()).inflate(k.a(getContext(), getLayoutResName(), "layout"), (ViewGroup) null, false);
        FrameLayout frameLayout2 = this.f43257h;
        if (frameLayout2 != null) {
            frameLayout2.removeAllViews();
            this.f43257h.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        }
        this.f43465k = (TextView) findViewById(k.a(getContext(), "myoffer_banner_ad_title", "id"));
        this.f43466l = (TextView) findViewById(k.a(getContext(), "myoffer_media_ad_cta", "id"));
        this.f43467m = (ImageView) findViewById(k.a(getContext(), "myoffer_media_ad_bg_blur", "id"));
        this.f43468n = (ImageView) findViewById(k.a(getContext(), "myoffer_media_ad_main_image", "id"));
        this.f43469o = (RoundImageView) findViewById(k.a(getContext(), "myoffer_media_ad_icon", "id"));
        this.f43470p = (TextView) findViewById(k.a(getContext(), "myoffer_banner_ad_desc", "id"));
        this.f43471q = (RelativeLayout) findViewById(k.a(getContext(), "myoffer_media_ad_container", "id"));
        String str = this.f43250a.f41810c;
        if (TextUtils.isEmpty(str)) {
            this.f43465k.setVisibility(8);
        } else {
            this.f43465k.setText(str);
        }
        String str2 = this.f43250a.f41817h;
        if (TextUtils.isEmpty(str2)) {
            this.f43466l.setText(k.a(getContext(), "myoffer_cta_learn_more", "string"));
        } else {
            this.f43466l.setText(str2);
        }
        String str3 = this.f43250a.f41812d;
        if (TextUtils.isEmpty(str3)) {
            this.f43470p.setVisibility(8);
        } else {
            this.f43470p.setText(str3);
        }
        if (TextUtils.isEmpty(this.f43250a.f41814e)) {
            this.f43469o.setVisibility(8);
        } else {
            this.f43469o.setRadiusInDip(6);
            this.f43469o.setNeedRadiu(true);
            ViewGroup.LayoutParams layoutParams = this.f43469o.getLayoutParams();
            m.a(getContext()).a(new o(1, this.f43250a.f41814e), layoutParams.width, layoutParams.height, new k3(this));
        }
        new l(this.f43250a, this.f43252c).a(this);
        if (!z.a(this.f43250a) && (viewFindViewById = findViewById(k.a(getContext(), "myoffer_media_ad_main_image_container", "id"))) != null) {
            ViewGroup.LayoutParams layoutParams2 = viewFindViewById.getLayoutParams();
            if (layoutParams2 instanceof RelativeLayout.LayoutParams) {
                ((RelativeLayout.LayoutParams) layoutParams2).bottomMargin = k.a(getContext(), 84.0f);
                viewFindViewById.setLayoutParams(layoutParams2);
            }
        }
        if (z.h(this.f43250a, this.f43252c)) {
            SimplePlayerMediaView simplePlayerMediaView = (SimplePlayerMediaView) findViewById(k.a(getContext(), "myoffer_media_ad_simple_player_view_no_g2c", "id"));
            this.f43472r = simplePlayerMediaView;
            if (simplePlayerMediaView != null) {
                simplePlayerMediaView.setVisibility(0);
            }
        } else {
            this.f43468n.setScaleType(ImageView.ScaleType.FIT_CENTER);
            m.a(getContext()).a(new o(1, this.f43250a.f41815f), i2, i3, new n3(this));
        }
        TextView textView2 = this.f43466l;
        if ((textView2 instanceof ScanningAnimButton) && (cVar = this.f43250a) != null && (eVar = cVar.f41832w) != null) {
            ((ScanningAnimButton) textView2).startAnimation(eVar.f41845C0);
        }
        if (TextUtils.isEmpty(this.f43250a.f41814e)) {
            int i5 = this.f43259j;
            if (i5 == 3 || i5 == 4 || i5 == 5) {
                ViewGroup viewGroup = (ViewGroup) findViewById(k.a(getContext(), "myoffer_title_desc", "id"));
                if (viewGroup != null) {
                    ViewGroup.LayoutParams layoutParams3 = viewGroup.getLayoutParams();
                    if (layoutParams3 instanceof RelativeLayout.LayoutParams) {
                        ((RelativeLayout.LayoutParams) layoutParams3).leftMargin = getResources().getDimensionPixelSize(k.a(getContext(), "myoffer_template_margin_white", "dimen"));
                        viewGroup.setLayoutParams(layoutParams3);
                    }
                }
            } else if ((i5 == 1 || i5 == 2) && (textView = this.f43465k) != null) {
                ViewGroup.LayoutParams layoutParams4 = textView.getLayoutParams();
                if (layoutParams4 instanceof LinearLayout.LayoutParams) {
                    ((LinearLayout.LayoutParams) layoutParams4).leftMargin = 0;
                    this.f43465k.setLayoutParams(layoutParams4);
                }
            }
        }
        if (TextUtils.isEmpty(this.f43250a.f41810c) && this.f43259j == 6) {
            ViewGroup.LayoutParams layoutParams5 = this.f43470p.getLayoutParams();
            if (layoutParams5 instanceof LinearLayout.LayoutParams) {
                ((LinearLayout.LayoutParams) layoutParams5).topMargin = 0;
                this.f43470p.setLayoutParams(layoutParams5);
            }
        }
        if (TextUtils.isEmpty(this.f43250a.f41812d)) {
            int i6 = this.f43259j;
            if (i6 == 2 || i6 == 1) {
                ViewGroup.LayoutParams layoutParams6 = this.f43466l.getLayoutParams();
                if (layoutParams6 instanceof RelativeLayout.LayoutParams) {
                    RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) layoutParams6;
                    layoutParams7.addRule(13);
                    layoutParams7.removeRule(12);
                }
            }
            if (this.f43259j != 5 || (frameLayout = (FrameLayout) findViewById(k.a(getContext(), "myoffer_template_bg_desc", "id"))) == null) {
                return;
            }
            frameLayout.setVisibility(8);
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void initPlayerView(c cVar, a aVar, com.smartdigimkt.c2.c cVar2, com.smartdigimkt.u1.c cVar3) {
        SimplePlayerMediaView simplePlayerMediaView = this.f43472r;
        if (simplePlayerMediaView != null) {
            simplePlayerMediaView.initPlayerView(cVar, aVar, cVar2, cVar3);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
    }

    @Override // com.smartdigimkt.v1.a3
    public void pauseVideo() {
        SimplePlayerMediaView simplePlayerMediaView = this.f43472r;
        if (simplePlayerMediaView != null) {
            simplePlayerMediaView.pauseVideo();
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void resumeVideo() {
        SimplePlayerMediaView simplePlayerMediaView = this.f43472r;
        if (simplePlayerMediaView != null) {
            simplePlayerMediaView.resumeVideo();
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void setATImproveClickViewController(com.smartdigimkt.k2.c cVar) {
        SimplePlayerMediaView simplePlayerMediaView = this.f43472r;
        if (simplePlayerMediaView != null) {
            simplePlayerMediaView.setATImproveClickViewController(cVar);
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void setAutoPlay(String str) {
        SimplePlayerMediaView simplePlayerMediaView = this.f43472r;
        if (simplePlayerMediaView != null) {
            simplePlayerMediaView.setAutoPlay(str);
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void setIsMuted(boolean z2) {
        SimplePlayerMediaView simplePlayerMediaView = this.f43472r;
        if (simplePlayerMediaView != null) {
            simplePlayerMediaView.setIsMuted(z2);
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void setPlayerOnClickListener(View.OnClickListener onClickListener) {
        SimplePlayerMediaView simplePlayerMediaView = this.f43472r;
        if (simplePlayerMediaView != null) {
            simplePlayerMediaView.setPlayerOnClickListener(onClickListener);
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void setVideoListener(SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener) {
        SimplePlayerMediaView simplePlayerMediaView = this.f43472r;
        if (simplePlayerMediaView != null) {
            simplePlayerMediaView.setVideoListener(sDMNativeAdMediaViewListener);
        }
    }
}
