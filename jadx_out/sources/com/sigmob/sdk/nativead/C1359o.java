package com.sigmob.sdk.nativead;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.views.CircleImageView;

/* renamed from: com.sigmob.sdk.nativead.o, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1359o extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private final TextView f38418a;

    /* renamed from: b, reason: collision with root package name */
    private final TextView f38419b;

    /* renamed from: c, reason: collision with root package name */
    private final CircleImageView f38420c;

    public C1359o(Context context) {
        super(context);
        View.inflate(context, getLayoutId(), this);
        this.f38418a = (TextView) findViewById(ResourceUtil.getId(getContext(), "sig_app_name"));
        this.f38419b = (TextView) findViewById(ResourceUtil.getId(getContext(), "sig_app_cta"));
        ViewGroup viewGroup = (ViewGroup) findViewById(ResourceUtil.getId(getContext(), "sig_app_icon"));
        CircleImageView circleImageView = new CircleImageView(context);
        this.f38420c = circleImageView;
        circleImageView.setCircle(false);
        circleImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        viewGroup.addView(circleImageView, new ViewGroup.LayoutParams(-1, -1));
    }

    private int getLayoutId() {
        return ResourceUtil.getLayoutId(getContext(), "sig_app_layout");
    }

    public void a(String str, String str2, String str3) {
        this.f38418a.setText(str2);
        this.f38419b.setText(str3);
        Context contextE = com.sigmob.sdk.b.e();
        if (contextE == null) {
            return;
        }
        ImageManager.with(contextE).load(str).into(this.f38420c);
    }

    public View getCtaView() {
        return this.f38419b;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f38419b.setOnClickListener(onClickListener);
    }
}
