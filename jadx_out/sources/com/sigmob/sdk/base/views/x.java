package com.sigmob.sdk.base.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.common.C1258h;

/* loaded from: classes4.dex */
public abstract class x extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f37212a;

    /* renamed from: b, reason: collision with root package name */
    private View f37213b;

    /* renamed from: c, reason: collision with root package name */
    private View f37214c;

    /* renamed from: d, reason: collision with root package name */
    private TextView f37215d;

    public x(Context context) {
        super(context);
        a(context);
    }

    private void a(Context context) {
        View viewInflate = View.inflate(context, ResourceUtil.getLayoutId(context, getResName()), this);
        this.f37212a = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_privacy_ad_logo"));
        this.f37213b = viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_privacy_view"));
        this.f37214c = viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_privacy_ll"));
        this.f37215d = (TextView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_privacy_ad_text"));
    }

    public TextView getPrivacyAdText() {
        return this.f37215d;
    }

    public View getPrivacyLl() {
        return this.f37214c;
    }

    public abstract String getResName();

    public x(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public void a(String str, boolean z2) {
        if (com.sigmob.sdk.base.utils.s.b(str)) {
            C1258h.a().load(str).into(this.f37212a);
        }
        this.f37213b.setVisibility(z2 ? 0 : 8);
    }

    public x(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context);
    }
}
