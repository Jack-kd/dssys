package com.sigmob.sdk.nativead;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.common.AbstractC1262j;
import com.sigmob.sdk.base.common.InterfaceC1264k;
import com.sigmob.sdk.base.models.BaseAdUnit;

/* renamed from: com.sigmob.sdk.nativead.w, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1366w extends AbstractC1262j {

    /* renamed from: f, reason: collision with root package name */
    private RelativeLayout f38479f;

    /* renamed from: g, reason: collision with root package name */
    private LinearLayout f38480g;

    /* renamed from: h, reason: collision with root package name */
    private TextView f38481h;

    /* renamed from: i, reason: collision with root package name */
    private BaseAdUnit f38482i;

    /* renamed from: j, reason: collision with root package name */
    private String f38483j;

    public C1366w(Activity activity, BaseAdUnit baseAdUnit, Bundle bundle, Bundle bundle2, String str, InterfaceC1264k interfaceC1264k) {
        super(activity, str, interfaceC1264k);
        this.f38483j = "此广告由 Sigmob 提供，为了在应用程序上向您推荐展示出更加个性和实用的广告，对您可能会接收到的一部分广告进行更具相关性的定制，从而使您在应用程序上有更好的用户体验。Sigmob 非常重视数据安全，将努力采取合理的安全措施（包括技术方面和管理方面）来保护数据安全，防止数据信息被不正当使用或未经授权的情况下被访问。";
        this.f38482i = baseAdUnit;
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Configuration configuration) {
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void e() {
        this.f35958c.removeAllViews();
        this.f35958c.setBackgroundColor(-1);
        this.f35959d.onSetContentView(this.f35958c);
        LinearLayout linearLayout = new LinearLayout(l());
        linearLayout.setOrientation(1);
        this.f35958c.addView(linearLayout, new RelativeLayout.LayoutParams(-1, -1));
        RelativeLayout relativeLayout = new RelativeLayout(l());
        this.f38479f = relativeLayout;
        linearLayout.addView(relativeLayout, new RelativeLayout.LayoutParams(-1, Dips.dipsToIntPixels(50.0f, l())));
        View view = new View(l());
        view.setBackgroundColor(Color.parseColor("#E0E6EC"));
        linearLayout.addView(view, new RelativeLayout.LayoutParams(-1, Dips.dipsToIntPixels(1.0f, l())));
        int iDipsToIntPixels = Dips.dipsToIntPixels(10.0f, l());
        ImageView imageView = new ImageView(l());
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.nativead.T
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f38300b.a(view2);
            }
        });
        imageView.setImageResource(ResourceUtil.getDrawableId(l(), "sig_image_video_back_left_black"));
        int i2 = iDipsToIntPixels * 2;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, i2);
        layoutParams.setMargins(iDipsToIntPixels, 0, iDipsToIntPixels, 0);
        layoutParams.addRule(9);
        layoutParams.addRule(15);
        this.f38479f.addView(imageView, layoutParams);
        TextView textView = new TextView(l());
        textView.setText("为什么看到此广告");
        textView.setTextColor(-16777216);
        textView.setTextSize(1, 20.0f);
        textView.setGravity(17);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13);
        this.f38479f.addView(textView, layoutParams2);
        LinearLayout linearLayout2 = new LinearLayout(l());
        this.f38480g = linearLayout2;
        linearLayout.addView(linearLayout2, new RelativeLayout.LayoutParams(-1, -1));
        TextView textView2 = new TextView(l());
        this.f38481h = textView2;
        textView2.setText(this.f38483j);
        this.f38481h.setTextColor(-16777216);
        this.f38481h.setTextSize(1, 15.0f);
        this.f38481h.setLineSpacing(2.0f, 1.2f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(13);
        int i3 = iDipsToIntPixels / 2;
        layoutParams3.setMargins(i3, i3, i3, i3);
        this.f38480g.addView(this.f38481h, layoutParams3);
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void f() {
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void g() {
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void h() {
        super.h();
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void i() {
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public boolean j() {
        InterfaceC1264k interfaceC1264k = this.f35959d;
        if (interfaceC1264k == null) {
            return false;
        }
        interfaceC1264k.a();
        return false;
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void o() {
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1262j
    public void a(Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        InterfaceC1264k interfaceC1264k = this.f35959d;
        if (interfaceC1264k != null) {
            interfaceC1264k.a();
        }
    }
}
