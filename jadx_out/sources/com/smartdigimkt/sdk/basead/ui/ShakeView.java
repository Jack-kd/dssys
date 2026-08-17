package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.sdk.core.SDKContext;
import com.smartdigimkt.z.z;
import com.smartdigimkt.z3.d;

/* loaded from: classes5.dex */
public class ShakeView extends BaseShakeView {
    public static final String TAG = "ShakeView";

    /* renamed from: m, reason: collision with root package name */
    public View f43588m;

    /* renamed from: n, reason: collision with root package name */
    public View f43589n;

    /* renamed from: o, reason: collision with root package name */
    public TextView f43590o;

    /* renamed from: p, reason: collision with root package name */
    public TextView f43591p;

    /* renamed from: q, reason: collision with root package name */
    public String f43592q;

    public ShakeView(Context context) {
        super(context);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public final void a() {
        setOrientation(1);
        setGravity(1);
        View viewInflate = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_shake_button", "layout"), (ViewGroup) null);
        this.f43588m = viewInflate;
        viewInflate.setLayoutParams(new LinearLayout.LayoutParams(k.a(getContext(), 300.0f), k.a(getContext(), 100.0f)));
        TextView textView = (TextView) this.f43588m.findViewById(k.a(SDKContext.getInstance().d(), "tv_splash_shake_view_hint_text", "id"));
        this.f43590o = textView;
        if (textView != null) {
            textView.setText(k.a(SDKContext.getInstance().d(), "myoffer_shake_full_title", "string"));
        }
        this.f43316a = (ImageView) this.f43588m.findViewById(k.a(SDKContext.getInstance().d(), "tv_splash_shake_view_icon", "id"));
        View viewInflate2 = LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_splash_shake_hint_text", "layout"), (ViewGroup) null);
        this.f43589n = viewInflate2;
        viewInflate2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        TextView textView2 = (TextView) this.f43589n.findViewById(k.a(SDKContext.getInstance().d(), "tv_splash_shake_hint_text", "id"));
        this.f43591p = textView2;
        if (textView2 != null) {
            textView2.setText(k.a(SDKContext.getInstance().d(), "myoffer_shake_full_title", "string"));
        }
        this.f43317b = (ImageView) this.f43589n.findViewById(k.a(SDKContext.getInstance().d(), "tv_splash_shake_hint_icon", "id"));
        this.f43589n.setVisibility(8);
        addView(this.f43588m);
        addView(this.f43589n);
    }

    public void replaceShakeCTAButton(View view) {
        View view2;
        if (view == null || (view2 = this.f43588m) == null) {
            return;
        }
        try {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            this.f43588m.setVisibility(8);
            this.f43588m = view;
            view.setVisibility(0);
            if (view.getLayoutParams() != null && view.getLayoutParams() != null) {
                layoutParams = view.getLayoutParams();
            }
            d.a(view);
            SDKContext.getInstance().j();
            addView(view, layoutParams);
        } catch (Throwable th) {
            if (SDKContext.getInstance().j()) {
                th.getMessage();
            }
            d.a(this.f43588m);
            addView(this.f43588m);
            this.f43588m.setVisibility(0);
        }
    }

    public void setNeedHideShakeIcon(boolean z2) {
        if (z2) {
            View view = this.f43589n;
            if (view != null) {
                view.setVisibility(0);
                ImageView imageView = this.f43317b;
                if (imageView != null) {
                    this.f43316a = imageView;
                }
            }
            View view2 = this.f43588m;
            if (view2 != null) {
                view2.setVisibility(8);
            }
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        try {
            this.f43588m.setOnClickListener(onClickListener);
            this.f43589n.setOnClickListener(onClickListener);
        } catch (Throwable unused) {
        }
    }

    public void setShakeHintText(String str) {
        this.f43592q = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        TextView textView = this.f43590o;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.f43591p;
        if (textView2 != null) {
            textView2.setText(str);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.BaseShakeView
    public void setShakeSetting(e eVar, int i2) {
        super.setShakeSetting(eVar, i2);
        if (TextUtils.isEmpty(this.f43592q)) {
            if (!TextUtils.isEmpty(this.f43322g)) {
                TextView textView = this.f43590o;
                if (textView != null) {
                    textView.setText(this.f43322g);
                }
                TextView textView2 = this.f43591p;
                if (textView2 != null) {
                    textView2.setText(this.f43322g);
                    return;
                }
                return;
            }
            int iA = z.a(getContext(), i2);
            String str = iA <= 0 ? (i2 == 1 || i2 == 4) ? "摇动或点击下载应用" : "摇动或点击查看详情" : "";
            TextView textView3 = this.f43590o;
            if (textView3 != null) {
                if (iA > 0) {
                    textView3.setText(iA);
                } else if (!TextUtils.isEmpty(str)) {
                    this.f43590o.setText(str);
                }
            }
            TextView textView4 = this.f43591p;
            if (textView4 != null) {
                if (iA > 0) {
                    textView4.setText(iA);
                } else {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    this.f43591p.setText(str);
                }
            }
        }
    }

    @Override // android.view.View
    public void startAnimation(Animation animation) {
        super.startAnimation(animation);
    }

    public ShakeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ShakeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @RequiresApi(api = 21)
    public ShakeView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
    }
}
