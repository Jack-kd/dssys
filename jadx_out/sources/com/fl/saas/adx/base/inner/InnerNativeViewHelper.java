package com.fl.saas.adx.base.inner;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.fl.saas.InterfaceC1164b1;
import com.fl.saas.adx.api.mixNative.NativeAdAppInfo;
import com.fl.saas.adx.api.mixNative.NativeMaterial;
import com.fl.saas.adx.base.activity.h5.FLH5Activity;

/* loaded from: classes3.dex */
public class InnerNativeViewHelper {
    public static /* synthetic */ void b(NativeAdAppInfo nativeAdAppInfo, Context context) {
        if (nativeAdAppInfo.getFunctionClick() != null) {
            nativeAdAppInfo.getFunctionClick().onClick();
        } else {
            FLH5Activity.launch(context, nativeAdAppInfo.getFunctionUrl(), "功能介绍");
        }
    }

    public static /* synthetic */ void c(NativeAdAppInfo nativeAdAppInfo, Context context) {
        if (nativeAdAppInfo.getPermissonClick() != null) {
            nativeAdAppInfo.getPermissonClick().onClick();
        } else {
            FLH5Activity.launch(context, nativeAdAppInfo.getAppPermissionUrl(), "权限详情");
        }
    }

    @Nullable
    public static TextView createAppInfoView(final Context context, NativeMaterial nativeMaterial) {
        final NativeAdAppInfo adAppInfo;
        if (!nativeMaterial.isNativeAppAd() || (adAppInfo = nativeMaterial.getAdAppInfo()) == null) {
            return null;
        }
        int color = Color.parseColor("#000000");
        SpannableStringBuilder spannableStringBuilderBuild = new ClickSpannable().setSeparator(" | ").setGenericColor(color).setText("应用名称：", adAppInfo.getAppName()).setText("应用版本：", adAppInfo.getAppVersion()).setText("开发者：", adAppInfo.getPublisher()).nextCondition(new InterfaceC1164b1() { // from class: com.fl.saas.adx.base.inner.c
            @Override // com.fl.saas.InterfaceC1164b1
            public final Object a() {
                NativeAdAppInfo nativeAdAppInfo = adAppInfo;
                return Boolean.valueOf((TextUtils.isEmpty(nativeAdAppInfo.getAppPermissionUrl()) && nativeAdAppInfo.getPermissonClick() == null) ? false : true);
            }
        }).setTextClick("权限详情 >", new Runnable() { // from class: com.fl.saas.adx.base.inner.d
            @Override // java.lang.Runnable
            public final void run() {
                InnerNativeViewHelper.c(adAppInfo, context);
            }
        }).nextCondition(new InterfaceC1164b1() { // from class: com.fl.saas.adx.base.inner.e
            @Override // com.fl.saas.InterfaceC1164b1
            public final Object a() {
                NativeAdAppInfo nativeAdAppInfo = adAppInfo;
                return Boolean.valueOf((TextUtils.isEmpty(nativeAdAppInfo.getAppPrivacyUrl()) && nativeAdAppInfo.getAppPrivacyUrl() == null) ? false : true);
            }
        }).setTextClick("隐私协议 >", new Runnable() { // from class: com.fl.saas.adx.base.inner.f
            @Override // java.lang.Runnable
            public final void run() {
                InnerNativeViewHelper.e(adAppInfo, context);
            }
        }).nextCondition(new InterfaceC1164b1() { // from class: com.fl.saas.adx.base.inner.g
            @Override // com.fl.saas.InterfaceC1164b1
            public final Object a() {
                NativeAdAppInfo nativeAdAppInfo = adAppInfo;
                return Boolean.valueOf((TextUtils.isEmpty(nativeAdAppInfo.getFunctionUrl()) && nativeAdAppInfo.getFunctionClick() == null) ? false : true);
            }
        }).setTextClick("功能介绍 > ", new Runnable() { // from class: com.fl.saas.adx.base.inner.h
            @Override // java.lang.Runnable
            public final void run() {
                InnerNativeViewHelper.b(adAppInfo, context);
            }
        }).build();
        if (spannableStringBuilderBuild.length() == 0) {
            return null;
        }
        TextView textView = new TextView(context);
        textView.setText(spannableStringBuilderBuild);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setTextSize(2, 10.0f);
        textView.setTextColor(color);
        return textView;
    }

    public static /* synthetic */ void e(NativeAdAppInfo nativeAdAppInfo, Context context) {
        if (nativeAdAppInfo.getPrivacyClick() != null) {
            nativeAdAppInfo.getPrivacyClick().onClick();
        } else {
            FLH5Activity.launch(context, nativeAdAppInfo.getAppPrivacyUrl(), "隐私协议");
        }
    }
}
