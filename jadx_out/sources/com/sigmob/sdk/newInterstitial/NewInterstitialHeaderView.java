package com.sigmob.sdk.newInterstitial;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.sigmob.sdk.base.views.EnumC1306s;
import com.sigmob.sdk.base.views.w;

/* loaded from: classes4.dex */
public class NewInterstitialHeaderView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f38545a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f38546b;

    /* renamed from: c, reason: collision with root package name */
    private ImageView f38547c;

    /* renamed from: d, reason: collision with root package name */
    private int f38548d;

    /* renamed from: e, reason: collision with root package name */
    private Runnable f38549e;

    /* renamed from: f, reason: collision with root package name */
    private w f38550f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f38551g;

    /* renamed from: h, reason: collision with root package name */
    private View f38552h;

    /* renamed from: i, reason: collision with root package name */
    private a f38553i;

    public interface a {
        void a();

        void b();
    }

    public NewInterstitialHeaderView(Context context) {
        super(context);
        a(context);
    }

    public static /* synthetic */ int b(NewInterstitialHeaderView newInterstitialHeaderView) {
        int i2 = newInterstitialHeaderView.f38548d;
        newInterstitialHeaderView.f38548d = i2 - 1;
        return i2;
    }

    public void hideSoundIcon() {
        this.f38547c.setVisibility(8);
    }

    public void setAdHeaderViewStateListener(a aVar) {
        this.f38553i = aVar;
    }

    public void setCloseClickListener(View.OnClickListener onClickListener) {
        this.f38545a.setOnClickListener(onClickListener);
    }

    public void setSkipClickListener(View.OnClickListener onClickListener) {
        this.f38546b.setOnClickListener(onClickListener);
    }

    public void setSoundClickListener(View.OnClickListener onClickListener) {
        this.f38547c.setOnClickListener(onClickListener);
    }

    public void setSoundStatus(boolean z2) {
        this.f38547c.setImageResource(ResourceUtil.getDrawableId(getContext(), z2 ? "sig_image_video_mute" : "sig_image_video_unmute"));
    }

    public void showCloseView() {
        this.f38545a.setVisibility(0);
    }

    public void showFeedback(boolean z2, View.OnClickListener onClickListener) {
        if (this.f38550f == null) {
            Context context = getContext();
            w wVar = new w(context);
            this.f38550f = wVar;
            wVar.setText("反馈");
            this.f38550f.setOnClickListener(onClickListener);
            this.f38550f.setId(ClientMetadata.generateViewId());
            int iDipsToIntPixels = Dips.dipsToIntPixels(5.0f, context);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(45.0f, context), Dips.dipsToIntPixels(30.0f, context));
            if (z2) {
                layoutParams.addRule(9);
                ((RelativeLayout.LayoutParams) this.f38547c.getLayoutParams()).addRule(1, this.f38550f.getId());
                layoutParams.setMargins(iDipsToIntPixels, 0, 0, 0);
            } else {
                layoutParams.addRule(0, this.f38552h.getId());
                layoutParams.setMargins(0, 0, iDipsToIntPixels, 0);
            }
            layoutParams.addRule(4, this.f38552h.getId());
            ViewParent parent = this.f38552h.getParent();
            if (parent == null) {
                return;
            }
            ((ViewGroup) parent).addView(this.f38550f, layoutParams);
        }
    }

    public void showSoundIcon() {
        this.f38547c.setVisibility(0);
    }

    public void startAdTimer(int i2, boolean z2) {
        this.f38551g = z2;
        if (i2 > 0) {
            this.f38546b.setVisibility(0);
            this.f38546b.setText(String.valueOf(i2));
            this.f38548d = i2 - 1;
            this.f38546b.setClickable(false);
            this.f38546b.postDelayed(this.f38549e, 1000L);
            return;
        }
        if (z2) {
            showCloseView();
            a aVar = this.f38553i;
            if (aVar != null) {
                aVar.a();
            }
            this.f38546b.setVisibility(8);
            return;
        }
        a aVar2 = this.f38553i;
        if (aVar2 != null) {
            aVar2.b();
        }
        this.f38546b.setClickable(true);
        this.f38546b.setText("   跳过   ");
    }

    public NewInterstitialHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    private void a(Context context) {
        View viewInflate = View.inflate(context, ResourceUtil.getLayoutId(context, "sig_new_interstitial_header_layout"), this);
        this.f38545a = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_close"));
        this.f38552h = viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_rl_root"));
        ImageView imageView = this.f38545a;
        if (imageView != null) {
            imageView.setImageBitmap(EnumC1306s.CLOSE_OLD.a());
        }
        this.f38547c = (ImageView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_sound"));
        TextView textView = (TextView) viewInflate.findViewById(ResourceUtil.getId(context, "sig_ad_timer"));
        this.f38546b = textView;
        textView.setClickable(false);
        this.f38549e = new Runnable() { // from class: com.sigmob.sdk.newInterstitial.NewInterstitialHeaderView.1
            @Override // java.lang.Runnable
            public void run() {
                if (NewInterstitialHeaderView.this.f38548d > 0) {
                    NewInterstitialHeaderView.this.f38546b.setText(String.valueOf(NewInterstitialHeaderView.b(NewInterstitialHeaderView.this)));
                    NewInterstitialHeaderView.this.f38546b.postDelayed(NewInterstitialHeaderView.this.f38549e, 1000L);
                    return;
                }
                if (NewInterstitialHeaderView.this.f38551g) {
                    if (NewInterstitialHeaderView.this.f38553i != null) {
                        NewInterstitialHeaderView.this.f38553i.a();
                    }
                    NewInterstitialHeaderView.this.f38546b.setVisibility(8);
                    NewInterstitialHeaderView.this.f38545a.setVisibility(0);
                } else {
                    if (NewInterstitialHeaderView.this.f38553i != null) {
                        NewInterstitialHeaderView.this.f38553i.b();
                    }
                    NewInterstitialHeaderView.this.f38546b.setClickable(true);
                    NewInterstitialHeaderView.this.f38546b.setText("   跳过   ");
                }
                NewInterstitialHeaderView.this.removeCallbacks(this);
            }
        };
    }

    public NewInterstitialHeaderView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context);
    }
}
