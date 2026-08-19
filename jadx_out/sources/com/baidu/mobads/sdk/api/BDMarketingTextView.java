package com.baidu.mobads.sdk.api;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.baidu.mobads.sdk.internal.av;
import com.baidu.mobads.sdk.internal.bu;
import com.baidu.mobads.sdk.internal.z;

/* loaded from: classes2.dex */
public class BDMarketingTextView extends RelativeLayout {
    private View mAdView;
    private Context mContext;
    private ClassLoader mLoader;

    public BDMarketingTextView(Context context) {
        super(context);
        this.mContext = context;
        initView(context);
    }

    private void initView(Context context) {
        try {
            this.mContext = context;
            Object[] objArr = {context};
            ClassLoader classLoaderA = bu.a(context);
            this.mLoader = classLoaderA;
            View view = (View) av.a(z.f11743g, classLoaderA, (Class<?>[]) new Class[]{Context.class}, objArr);
            this.mAdView = view;
            if (view != null) {
                addView(view, new RelativeLayout.LayoutParams(-2, -2));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setAdData(NativeResponse nativeResponse, String str) {
        View view = this.mAdView;
        if (view != null) {
            av.a(z.f11743g, view, this.mLoader, "setAdData", new Class[]{Object.class, String.class}, nativeResponse, str);
        }
    }

    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        View view = this.mAdView;
        if (view != null) {
            av.a(z.f11743g, view, this.mLoader, "setEllipsize", new Class[]{TextUtils.TruncateAt.class}, truncateAt);
        }
    }

    public void setLabelFontSizeSp(int i2) {
        View view = this.mAdView;
        if (view != null) {
            av.a(z.f11743g, view, this.mLoader, "setLabelFontSizeSp", new Class[]{Integer.TYPE}, Integer.valueOf(i2));
        }
    }

    public void setLabelFontTypeFace(Typeface typeface) {
        View view = this.mAdView;
        if (view != null) {
            av.a(z.f11743g, view, this.mLoader, "setLabelFontTypeFace", new Class[]{Typeface.class}, typeface);
        }
    }

    public void setLabelVisibility(int i2) {
        View view = this.mAdView;
        if (view != null) {
            av.a(z.f11743g, view, this.mLoader, "setLabelVisibility", new Class[]{Integer.TYPE}, Integer.valueOf(i2));
        }
    }

    public void setLineSpacingExtra(int i2) {
        View view = this.mAdView;
        if (view != null) {
            av.a(z.f11743g, view, this.mLoader, "setLineSpacingExtra", new Class[]{Integer.TYPE}, Integer.valueOf(i2));
        }
    }

    public void setTextFontColor(int i2) {
        View view = this.mAdView;
        if (view != null) {
            av.a(z.f11743g, view, this.mLoader, "setTextFontColor", new Class[]{Integer.TYPE}, Integer.valueOf(i2));
        }
    }

    public void setTextFontSizeSp(int i2) {
        View view = this.mAdView;
        if (view != null) {
            av.a(z.f11743g, view, this.mLoader, "setTextFontSizeSp", new Class[]{Integer.TYPE}, Integer.valueOf(i2));
        }
    }

    public void setTextFontTypeFace(Typeface typeface) {
        View view = this.mAdView;
        if (view != null) {
            av.a(z.f11743g, view, this.mLoader, "setTextFontTypeFace", new Class[]{Typeface.class}, typeface);
        }
    }

    public void setTextMaxLines(int i2) {
        View view = this.mAdView;
        if (view != null) {
            av.a(z.f11743g, view, this.mLoader, "setTextMaxLines", new Class[]{Integer.TYPE}, Integer.valueOf(i2));
        }
    }

    public BDMarketingTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BDMarketingTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        initView(context);
    }
}
