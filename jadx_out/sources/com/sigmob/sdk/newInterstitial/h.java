package com.sigmob.sdk.newInterstitial;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.common.C1258h;
import com.sigmob.sdk.base.utils.s;
import com.sigmob.sdk.base.utils.v;
import com.sigmob.sdk.base.views.EnumC1306s;
import com.sigmob.sdk.base.views.w;

/* loaded from: classes4.dex */
public class h extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f38564a;

    /* renamed from: b, reason: collision with root package name */
    private ImageView f38565b;

    /* renamed from: c, reason: collision with root package name */
    private TextView f38566c;

    /* renamed from: d, reason: collision with root package name */
    private TextView f38567d;

    /* renamed from: e, reason: collision with root package name */
    private Button f38568e;

    /* renamed from: f, reason: collision with root package name */
    private ImageView f38569f;

    /* renamed from: g, reason: collision with root package name */
    private SigAdPrivacyInfoView f38570g;

    /* renamed from: h, reason: collision with root package name */
    private w f38571h;

    /* renamed from: i, reason: collision with root package name */
    private View f38572i;

    public h(Context context) {
        super(context);
        a(context);
    }

    public SigAdPrivacyInfoView getAdPrivacyInfo() {
        return this.f38570g;
    }

    public Button getCTAButton() {
        return this.f38568e;
    }

    public View getCloseButton() {
        return this.f38564a;
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    private void a(Context context) {
        View viewInflate = View.inflate(context, ResourceUtil.getLayoutId(context, "sig_new_interstitial_endcard_layout"), this);
        this.f38572i = viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_rl_close"));
        ImageView imageView = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_close"));
        this.f38564a = imageView;
        if (v.b(imageView)) {
            this.f38564a.setImageBitmap(EnumC1306s.CLOSE_OLD.a());
        }
        this.f38565b = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_app_icon"));
        this.f38566c = (TextView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_title"));
        this.f38567d = (TextView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_desc"));
        this.f38568e = (Button) viewInflate.findViewById(ResourceUtil.getId(context, "sig_cta_button"));
        this.f38569f = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_endCard_image"));
        this.f38570g = (SigAdPrivacyInfoView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_privacy_info"));
    }

    public h(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context);
    }

    public void a(View.OnClickListener onClickListener) {
        if (this.f38571h == null) {
            Context context = getContext();
            w wVar = new w(context);
            this.f38571h = wVar;
            wVar.setText("反馈");
            this.f38571h.setOnClickListener(onClickListener);
            this.f38571h.setId(ClientMetadata.generateViewId());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(45.0f, context), Dips.dipsToIntPixels(30.0f, context));
            layoutParams.addRule(0, this.f38572i.getId());
            layoutParams.addRule(8, this.f38572i.getId());
            ViewParent parent = this.f38572i.getParent();
            if (parent == null) {
                return;
            }
            ((ViewGroup) parent).addView(this.f38571h, layoutParams);
        }
    }

    public void a(String str, String str2, String str3, String str4, String str5) {
        if (s.b(str)) {
            C1258h.a().load(str).into(this.f38565b);
        }
        if (s.b(str2) || s.b(str)) {
            if (!s.a((CharSequence) str2)) {
                str = str2;
            }
            C1258h.a().getBitmap(str, new ImageManager.BitmapLoadedListener() { // from class: com.sigmob.sdk.newInterstitial.h.1
                @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                public void onBitmapLoadFailed() {
                }

                @Override // com.czhj.sdk.common.utils.ImageManager.BitmapLoadedListener
                public void onBitmapLoaded(Bitmap bitmap) {
                    if (bitmap == null) {
                        return;
                    }
                    com.sigmob.sdk.base.blurkit.a.a(h.this.getContext());
                    Bitmap bitmapA = com.sigmob.sdk.base.blurkit.a.a().a(bitmap.copy(bitmap.getConfig(), true), 25);
                    if (bitmapA == null) {
                        return;
                    }
                    h.this.f38569f.setImageBitmap(bitmapA);
                }
            });
        }
        if (s.b(str3)) {
            this.f38566c.setText(str3);
        }
        if (s.b(str4)) {
            this.f38567d.setText(str4);
        }
        if (s.b(str5)) {
            this.f38568e.setText(str5);
        }
    }
}
