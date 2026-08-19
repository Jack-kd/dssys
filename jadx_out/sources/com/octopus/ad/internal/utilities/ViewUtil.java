package com.octopus.ad.internal.utilities;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Build;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.material.badge.BadgeDrawable;
import com.octopus.ad.R;
import com.octopus.ad.d.b.f;
import com.octopus.ad.internal.activity.BrowserAdActivity;
import com.octopus.ad.internal.c.t;
import com.octopus.ad.internal.q;
import com.octopus.ad.model.AdLogoInfo;
import com.octopus.ad.model.ComplianceInfo;
import com.octopus.ad.utils.ThreadUtils;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/* loaded from: classes4.dex */
public class ViewUtil {
    public static FrameLayout createAdImageView(Context context, AdLogoInfo adLogoInfo, int i2, int i3, float f2) throws NoSuchAlgorithmException {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setVisibility(4);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        float f3 = 10.0f * f2;
        int i4 = (int) f3;
        if (adLogoInfo != null) {
            q qVarA = q.a();
            if (adLogoInfo.getType() == AdLogoInfo.TYPE_PIC) {
                ImageView imageView = new ImageView(context);
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                int iApplyDimension = (int) TypedValue.applyDimension(1, f2 * 14.0f, qVarA.s());
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iApplyDimension * 2, iApplyDimension, i3 | 80);
                layoutParams.setMargins(0, 0, 0, 0);
                imageView.setLayoutParams(layoutParams);
                imageView.setVisibility(0);
                if (TextUtils.isEmpty(adLogoInfo.getAdurl()) || !adLogoInfo.getAdurl().endsWith("remdad.png")) {
                    ImageManager.with(context).load(adLogoInfo.getAdurl()).into(imageView);
                } else {
                    imageView.setImageResource(R.drawable.oct_logo_text);
                }
                frameLayout.addView(imageView);
                return frameLayout;
            }
            if (adLogoInfo.getType() == AdLogoInfo.TYPE_TEXT) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                appCompatTextView.setTextSize(2, f3);
                appCompatTextView.setTextColor(-1);
                appCompatTextView.setShadowLayer(5.0f, 1.0f, 1.0f, Color.parseColor("#80000000"));
                appCompatTextView.setText(adLogoInfo.getAdurl());
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2, i3 | 80);
                layoutParams2.setMargins(0, 0, i2 * i4, 0);
                frameLayout.addView(appCompatTextView, layoutParams2);
            }
        }
        return frameLayout;
    }

    public static AppCompatTextView createComplianceView(Context context, final ComplianceInfo complianceInfo, float f2, boolean z2) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context);
        if (complianceInfo == null) {
            return appCompatTextView;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        appCompatTextView.setTextSize(8.0f * f2);
        int i2 = (int) (f2 * 10.0f);
        if (z2) {
            appCompatTextView.setPadding(i2, i2, i2, i2);
        } else {
            appCompatTextView.setPadding(i2 * 3, i2, i2 * 16, i2 * 4);
        }
        String str = String.format("应用名称：%1$s | 开发者：%2$s | 应用版本：%3$s | 权限详情 | 隐私协议 | 功能介绍", complianceInfo.getAppName(), complianceInfo.getDeveloperName(), complianceInfo.getAppVersion());
        SpannableString spannableString = new SpannableString(str);
        ClickableSpan clickableSpan = new ClickableSpan() { // from class: com.octopus.ad.internal.utilities.ViewUtil.3
            @Override // android.text.style.ClickableSpan
            public void onClick(@NonNull View view) {
                ViewUtil.openLocalBrowser(complianceInfo.getPermissionsUrl(), 0);
            }
        };
        int iIndexOf = str.indexOf("权限详情");
        spannableString.setSpan(clickableSpan, iIndexOf, iIndexOf + 4, 17);
        ClickableSpan clickableSpan2 = new ClickableSpan() { // from class: com.octopus.ad.internal.utilities.ViewUtil.4
            @Override // android.text.style.ClickableSpan
            public void onClick(@NonNull View view) {
                ViewUtil.openLocalBrowser(complianceInfo.getPrivacyUrl(), 0);
            }
        };
        int iIndexOf2 = str.indexOf("隐私协议");
        spannableString.setSpan(clickableSpan2, iIndexOf2, iIndexOf2 + 4, 17);
        ClickableSpan clickableSpan3 = new ClickableSpan() { // from class: com.octopus.ad.internal.utilities.ViewUtil.5
            @Override // android.text.style.ClickableSpan
            public void onClick(@NonNull View view) {
                ViewUtil.openLocalBrowser(complianceInfo.getFunctionDescUrl(), 0);
            }
        };
        int iIndexOf3 = str.indexOf("功能介绍");
        spannableString.setSpan(clickableSpan3, iIndexOf3, iIndexOf3 + 4, 17);
        spannableString.setSpan(new ForegroundColorSpan(-1), 0, spannableString.length(), 33);
        appCompatTextView.setMovementMethod(LinkMovementMethod.getInstance());
        appCompatTextView.setShadowLayer(5.0f, 1.0f, 1.0f, Color.parseColor("#80000000"));
        appCompatTextView.setText(spannableString);
        return appCompatTextView;
    }

    public static AppCompatTextView createCountDown(Context context, int i2, int i3, int i4, float f2) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context);
        appCompatTextView.setText(String.format(Locale.US, "跳过 %d", Integer.valueOf(i2)));
        appCompatTextView.setTextColor(-1);
        float f3 = 12.0f * f2;
        appCompatTextView.setTextSize(2, f3);
        appCompatTextView.setGravity(17);
        q qVarA = q.a();
        int iApplyDimension = (int) TypedValue.applyDimension(1, f3, qVarA.s());
        int iApplyDimension2 = (int) TypedValue.applyDimension(1, 4.0f * f2, qVarA.s());
        appCompatTextView.setPadding(iApplyDimension, iApplyDimension2, iApplyDimension, iApplyDimension2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, BadgeDrawable.TOP_END);
        layoutParams.setMargins(0, (int) TypedValue.applyDimension(1, (i3 + 15) * f2, qVarA.s()), (int) TypedValue.applyDimension(1, (i4 + 15) * f2, qVarA.s()), 0);
        appCompatTextView.setLayoutParams(layoutParams);
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.utilities.ViewUtil.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        try {
            appCompatTextView.setBackgroundDrawable(ContextCompat.getDrawable(context, R.drawable.oct_count_down_background));
            return appCompatTextView;
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
            return appCompatTextView;
        }
    }

    public static AppCompatTextView createFeedBackButton(Context context, String str, int i2, int i3, float f2) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context);
        appCompatTextView.setTextColor(-1);
        float f3 = 12.0f * f2;
        appCompatTextView.setTextSize(2, f3);
        appCompatTextView.setText(str);
        appCompatTextView.setGravity(17);
        q qVarA = q.a();
        int iApplyDimension = (int) TypedValue.applyDimension(1, f3, qVarA.s());
        int iApplyDimension2 = (int) TypedValue.applyDimension(1, 4.0f * f2, qVarA.s());
        appCompatTextView.setPadding(iApplyDimension, iApplyDimension2, iApplyDimension, iApplyDimension2);
        int iApplyDimension3 = (int) TypedValue.applyDimension(1, (i2 + 15) * f2, qVarA.s());
        int iApplyDimension4 = (int) TypedValue.applyDimension(1, (i3 + 15) * f2, qVarA.s());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, BadgeDrawable.TOP_START);
        layoutParams.setMargins(iApplyDimension3, iApplyDimension4, 0, 0);
        appCompatTextView.setLayoutParams(layoutParams);
        try {
            appCompatTextView.setBackgroundDrawable(ContextCompat.getDrawable(context, R.drawable.oct_count_down_background));
            return appCompatTextView;
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
            return appCompatTextView;
        }
    }

    public static ImageView createImageCloseButton(Context context, int i2, float f2) {
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(R.drawable.oct_close);
        imageView.setBackgroundResource(R.drawable.oct_close_background);
        q qVarA = q.a();
        int iApplyDimension = (int) TypedValue.applyDimension(1, 5.0f * f2, qVarA.s());
        imageView.setPadding(iApplyDimension, iApplyDimension, iApplyDimension, iApplyDimension);
        int iApplyDimension2 = (int) TypedValue.applyDimension(1, 24.0f * f2, qVarA.s());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iApplyDimension2, iApplyDimension2, BadgeDrawable.TOP_END);
        layoutParams.setMargins(0, (int) TypedValue.applyDimension(1, (i2 + 15) * f2, qVarA.s()), (int) TypedValue.applyDimension(1, f2 * 15.0f, qVarA.s()), 0);
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    public static AppCompatTextView createInterstitialCountDown(Context context, int i2, float f2) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context);
        appCompatTextView.setGravity(17);
        appCompatTextView.setTextColor(ContextCompat.getColorStateList(context, R.color.oct_text_selector));
        appCompatTextView.setTextSize(2, 13.0f * f2);
        q qVarA = q.a();
        int iApplyDimension = (int) TypedValue.applyDimension(1, 24.0f * f2, qVarA.s());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iApplyDimension, iApplyDimension, BadgeDrawable.TOP_END);
        layoutParams.setMargins(0, (int) TypedValue.applyDimension(1, (i2 + 15) * f2, qVarA.s()), (int) TypedValue.applyDimension(1, f2 * 15.0f, qVarA.s()), 0);
        appCompatTextView.setLayoutParams(layoutParams);
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.octopus.ad.internal.utilities.ViewUtil.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        try {
            appCompatTextView.setBackgroundDrawable(ContextCompat.getDrawable(context, R.drawable.oct_count_down_interstitial_background));
            return appCompatTextView;
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
            return appCompatTextView;
        }
    }

    public static ProgressBar createLoadingView(Context context, float f2) {
        ProgressBar progressBar = new ProgressBar(context);
        if (progressBar.getIndeterminateDrawable() != null) {
            progressBar.getIndeterminateDrawable().setColorFilter(-3355444, PorterDuff.Mode.SRC_IN);
        }
        int iApplyDimension = (int) TypedValue.applyDimension(1, f2 * 40.0f, q.a().s());
        progressBar.setLayoutParams(new FrameLayout.LayoutParams(iApplyDimension, iApplyDimension, 17));
        return progressBar;
    }

    public static FrameLayout createLogoImageView(Context context, AdLogoInfo adLogoInfo, int i2, float f2) throws NoSuchAlgorithmException {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setVisibility(4);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        float f3 = 10.0f * f2;
        int i3 = (int) f3;
        if (adLogoInfo != null) {
            q qVarA = q.a();
            if (adLogoInfo.getType() == AdLogoInfo.TYPE_PIC) {
                ImageView imageView = new ImageView(context);
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                int iApplyDimension = (int) TypedValue.applyDimension(1, f2 * 14.0f, qVarA.s());
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iApplyDimension, iApplyDimension, BadgeDrawable.BOTTOM_END);
                layoutParams.setMargins(0, 0, i2 * i3, 0);
                imageView.setLayoutParams(layoutParams);
                imageView.setVisibility(0);
                if (TextUtils.isEmpty(adLogoInfo.getAdurl()) || !adLogoInfo.getAdurl().endsWith("octlogo.png")) {
                    ImageManager.with(context).load(adLogoInfo.getAdurl()).into(imageView);
                } else {
                    imageView.setImageResource(R.drawable.oct_logo);
                }
                frameLayout.addView(imageView);
                return frameLayout;
            }
            if (adLogoInfo.getType() == AdLogoInfo.TYPE_TEXT) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                appCompatTextView.setTextSize(2, f3);
                appCompatTextView.setTextColor(-1);
                appCompatTextView.setShadowLayer(5.0f, 1.0f, 1.0f, Color.parseColor("#80000000"));
                appCompatTextView.setText(adLogoInfo.getAdurl());
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2, BadgeDrawable.BOTTOM_END);
                layoutParams2.setMargins(0, 0, 0, 0);
                frameLayout.addView(appCompatTextView, layoutParams2);
            }
        }
        return frameLayout;
    }

    public static AppCompatImageView createMuteButton(Context context, boolean z2, int i2, float f2) {
        AppCompatImageView appCompatImageView = new AppCompatImageView(context);
        appCompatImageView.setImageResource(z2 ? R.drawable.oct_voice_off : R.drawable.oct_voice_on);
        q qVarA = q.a();
        int iApplyDimension = (int) TypedValue.applyDimension(1, 24.0f * f2, qVarA.s());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iApplyDimension, iApplyDimension, BadgeDrawable.TOP_START);
        layoutParams.setMargins((int) TypedValue.applyDimension(1, 15.0f * f2, qVarA.s()), (int) TypedValue.applyDimension(1, (i2 + 15) * f2, qVarA.s()), 0, 0);
        appCompatImageView.setLayoutParams(layoutParams);
        return appCompatImageView;
    }

    public static int dip2px(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static float getScreenHeightDp(Context context) {
        return px2dip(context, context.getResources().getDisplayMetrics().heightPixels);
    }

    public static int getScreenWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static float getScreenWidthDp(Context context) {
        float f2 = context.getResources().getDisplayMetrics().density;
        float f3 = context.getResources().getDisplayMetrics().widthPixels;
        if (f2 <= 0.0f) {
            f2 = 1.0f;
        }
        return (f3 / f2) + 0.5f;
    }

    private static int getSystemUiVisibility() {
        return 5894;
    }

    public static void hideSystemTitleBarUI(Activity activity) {
        try {
            int systemUiVisibility = getSystemUiVisibility();
            Window window = activity.getWindow();
            window.getDecorView().setSystemUiVisibility(systemUiVisibility);
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                window.setAttributes(attributes);
            }
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public static void openLocalBrowser(WebView webView, int i2) {
        try {
            Context contextL = q.a().l();
            if (contextL != null && webView != null) {
                Intent intent = new Intent(contextL, (Class<?>) BrowserAdActivity.class);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                intent.putExtra("REPEAT_NUM", i2);
                BrowserAdActivity.f34160a.add(webView);
                contextL.startActivity(intent);
            }
        } catch (ActivityNotFoundException unused) {
            BrowserAdActivity.f34160a.remove();
        } catch (Exception e2) {
            com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, "Exception initializing the redirect webview: " + e2.getMessage());
        }
    }

    public static void openSystemBrowser(Context context, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        } catch (Exception e2) {
            f.a("OctopusAd", "An Exception Caught", e2);
        }
    }

    public static int px2dip(Context context, float f2) {
        return (int) ((f2 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static void removeChildFromParent(final View view) {
        ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.utilities.ViewUtil.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    View view2 = view;
                    if (view2 == null || view2.getParent() == null) {
                        return;
                    }
                    ((ViewGroup) view.getParent()).removeView(view);
                } catch (Exception unused) {
                }
            }
        });
    }

    public static void openLocalBrowser(final String str, final int i2) {
        ThreadUtils.runOnUIThread(new Runnable() { // from class: com.octopus.ad.internal.utilities.ViewUtil.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Context contextL = q.a().l();
                    if (contextL != null && !TextUtils.isEmpty(str)) {
                        WebView webView = new WebView(new MutableContextWrapper(contextL));
                        t.a(webView);
                        webView.loadUrl(str);
                        Intent intent = new Intent(contextL, (Class<?>) BrowserAdActivity.class);
                        intent.setFlags(C.ENCODING_PCM_MU_LAW);
                        intent.putExtra("REPEAT_NUM", i2);
                        BrowserAdActivity.f34160a.add(webView);
                        contextL.startActivity(intent);
                    }
                } catch (ActivityNotFoundException unused) {
                    BrowserAdActivity.f34160a.remove();
                } catch (Exception e2) {
                    com.octopus.ad.internal.c.f.e(com.octopus.ad.internal.c.f.f34565a, "Exception initializing the redirect webview: " + e2.getMessage());
                }
            }
        });
    }
}
