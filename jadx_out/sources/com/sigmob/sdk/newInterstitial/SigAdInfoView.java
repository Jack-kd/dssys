package com.sigmob.sdk.newInterstitial;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.utils.s;

/* loaded from: classes4.dex */
public class SigAdInfoView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f38555a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f38556b;

    /* renamed from: c, reason: collision with root package name */
    private TextView f38557c;

    /* renamed from: d, reason: collision with root package name */
    private SigAdPrivacyInfoView f38558d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f38559e;

    public SigAdInfoView(Context context) {
        super(context);
        this.f38559e = false;
        a(context);
    }

    private void a(Context context) {
        View viewInflate = View.inflate(context, ResourceUtil.getLayoutId(context, this.f38559e ? "sig_ad_app_info_small_layout" : "sig_ad_app_info_layout"), this);
        this.f38555a = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_app_icon"));
        this.f38556b = (TextView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_title"));
        this.f38557c = (TextView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_desc"));
        this.f38558d = (SigAdPrivacyInfoView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_privacy_info"));
    }

    public SigAdPrivacyInfoView getAdPrivacyInfo() {
        return this.f38558d;
    }

    public void setAppInfoView(String str, String str2, String str3) {
        if (s.b(str)) {
            C1258h.a().load(str).into(this.f38555a);
        }
        if (s.b(str2)) {
            this.f38556b.setText(str2);
        }
        if (s.b(str3)) {
            this.f38557c.setText(str3);
        }
    }

    public SigAdInfoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38559e = false;
        this.f38559e = attributeSet.getAttributeBooleanValue(null, "sig_isSmall", false);
        a(context);
    }

    public SigAdInfoView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f38559e = false;
        a(context);
    }
}
