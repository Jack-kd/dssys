package androidx.browser.trusted;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.ColorInt;
import androidx.browser.customtabs.CustomTabColorSchemeParams;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.trusted.TrustedWebActivityDisplayMode;
import androidx.browser.trusted.sharing.ShareData;
import androidx.browser.trusted.sharing.ShareTarget;
import java.util.List;

/* loaded from: classes.dex */
public class TrustedWebActivityIntentBuilder {

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_ADDITIONAL_TRUSTED_ORIGINS = "android.support.customtabs.extra.ADDITIONAL_TRUSTED_ORIGINS";
    public static final String EXTRA_DISPLAY_MODE = "androidx.browser.trusted.extra.DISPLAY_MODE";
    public static final String EXTRA_FILE_HANDLING_DATA = "androidx.browser.trusted.extra.FILE_HANDLING_DATA";
    public static final String EXTRA_LAUNCH_HANDLER_CLIENT_MODE = "androidx.browser.trusted.extra.LAUNCH_HANDLER_CLIENT_MODE";
    public static final String EXTRA_ORIGINAL_LAUNCH_URL = "androidx.browser.trusted.extra.ORIGINAL_LAUNCH_URL";
    public static final String EXTRA_SCREEN_ORIENTATION = "androidx.browser.trusted.extra.SCREEN_ORIENTATION";
    public static final String EXTRA_SHARE_DATA = "androidx.browser.trusted.extra.SHARE_DATA";
    public static final String EXTRA_SHARE_TARGET = "androidx.browser.trusted.extra.SHARE_TARGET";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_SPLASH_SCREEN_PARAMS = "androidx.browser.trusted.EXTRA_SPLASH_SCREEN_PARAMS";
    private List<String> mAdditionalTrustedOrigins;
    private FileHandlingData mFileHandlingData;
    private Uri mOriginalLaunchUrl;
    private ShareData mShareData;
    private ShareTarget mShareTarget;
    private Bundle mSplashScreenParams;
    private final Uri mUri;
    private final CustomTabsIntent.Builder mIntentBuilder = new CustomTabsIntent.Builder();
    private int mLaunchHandlerClientMode = 0;
    private TrustedWebActivityDisplayMode mDisplayMode = new TrustedWebActivityDisplayMode.DefaultMode();
    private int mScreenOrientation = 0;

    public TrustedWebActivityIntentBuilder(Uri uri) {
        this.mUri = uri;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.browser.trusted.TrustedWebActivityIntent build(androidx.browser.customtabs.CustomTabsSession r5) {
        /*
            r4 = this;
            if (r5 == 0) goto L95
            androidx.browser.customtabs.CustomTabsIntent$Builder r0 = r4.mIntentBuilder
            r0.setSession(r5)
            androidx.browser.customtabs.CustomTabsIntent$Builder r5 = r4.mIntentBuilder
            androidx.browser.customtabs.CustomTabsIntent r5 = r5.build()
            android.content.Intent r5 = r5.intent
            android.net.Uri r0 = r4.mUri
            r5.setData(r0)
            java.lang.String r0 = "android.support.customtabs.extra.LAUNCH_AS_TRUSTED_WEB_ACTIVITY"
            r1 = 1
            r5.putExtra(r0, r1)
            java.util.List<java.lang.String> r0 = r4.mAdditionalTrustedOrigins
            if (r0 == 0) goto L2a
            java.util.ArrayList r0 = new java.util.ArrayList
            java.util.List<java.lang.String> r1 = r4.mAdditionalTrustedOrigins
            r0.<init>(r1)
            java.lang.String r1 = "android.support.customtabs.extra.ADDITIONAL_TRUSTED_ORIGINS"
            r5.putExtra(r1, r0)
        L2a:
            android.os.Bundle r0 = r4.mSplashScreenParams
            if (r0 == 0) goto L33
            java.lang.String r1 = "androidx.browser.trusted.EXTRA_SPLASH_SCREEN_PARAMS"
            r5.putExtra(r1, r0)
        L33:
            java.util.List r0 = java.util.Collections.EMPTY_LIST
            androidx.browser.trusted.sharing.ShareTarget r1 = r4.mShareTarget
            if (r1 == 0) goto L58
            androidx.browser.trusted.sharing.ShareData r2 = r4.mShareData
            if (r2 == 0) goto L58
            java.lang.String r2 = "androidx.browser.trusted.extra.SHARE_TARGET"
            android.os.Bundle r1 = r1.toBundle()
            r5.putExtra(r2, r1)
            androidx.browser.trusted.sharing.ShareData r1 = r4.mShareData
            android.os.Bundle r1 = r1.toBundle()
            java.lang.String r2 = "androidx.browser.trusted.extra.SHARE_DATA"
            r5.putExtra(r2, r1)
            androidx.browser.trusted.sharing.ShareData r1 = r4.mShareData
            java.util.List<android.net.Uri> r1 = r1.uris
            if (r1 == 0) goto L58
            goto L59
        L58:
            r1 = r0
        L59:
            androidx.browser.trusted.FileHandlingData r2 = r4.mFileHandlingData
            if (r2 == 0) goto L6d
            java.lang.String r3 = "androidx.browser.trusted.extra.FILE_HANDLING_DATA"
            android.os.Bundle r2 = r2.toBundle()
            r5.putExtra(r3, r2)
            androidx.browser.trusted.FileHandlingData r2 = r4.mFileHandlingData
            java.util.List<android.net.Uri> r2 = r2.uris
            if (r2 == 0) goto L6d
            r0 = r2
        L6d:
            androidx.browser.trusted.TrustedWebActivityDisplayMode r2 = r4.mDisplayMode
            android.os.Bundle r2 = r2.toBundle()
            java.lang.String r3 = "androidx.browser.trusted.extra.DISPLAY_MODE"
            r5.putExtra(r3, r2)
            java.lang.String r2 = "androidx.browser.trusted.extra.SCREEN_ORIENTATION"
            int r3 = r4.mScreenOrientation
            r5.putExtra(r2, r3)
            android.net.Uri r2 = r4.mOriginalLaunchUrl
            if (r2 == 0) goto L88
            java.lang.String r3 = "androidx.browser.trusted.extra.ORIGINAL_LAUNCH_URL"
            r5.putExtra(r3, r2)
        L88:
            java.lang.String r2 = "androidx.browser.trusted.extra.LAUNCH_HANDLER_CLIENT_MODE"
            int r3 = r4.mLaunchHandlerClientMode
            r5.putExtra(r2, r3)
            androidx.browser.trusted.TrustedWebActivityIntent r2 = new androidx.browser.trusted.TrustedWebActivityIntent
            r2.<init>(r5, r1, r0)
            return r2
        L95:
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.String r0 = "CustomTabsSession is required for launching a TWA"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.browser.trusted.TrustedWebActivityIntentBuilder.build(androidx.browser.customtabs.CustomTabsSession):androidx.browser.trusted.TrustedWebActivityIntent");
    }

    public CustomTabsIntent buildCustomTabsIntent() {
        return this.mIntentBuilder.build();
    }

    public TrustedWebActivityDisplayMode getDisplayMode() {
        return this.mDisplayMode;
    }

    public Uri getUri() {
        return this.mUri;
    }

    public TrustedWebActivityIntentBuilder setAdditionalTrustedOrigins(List<String> list) {
        this.mAdditionalTrustedOrigins = list;
        return this;
    }

    public TrustedWebActivityIntentBuilder setColorScheme(int i2) {
        this.mIntentBuilder.setColorScheme(i2);
        return this;
    }

    public TrustedWebActivityIntentBuilder setColorSchemeParams(int i2, CustomTabColorSchemeParams customTabColorSchemeParams) {
        this.mIntentBuilder.setColorSchemeParams(i2, customTabColorSchemeParams);
        return this;
    }

    public TrustedWebActivityIntentBuilder setDefaultColorSchemeParams(CustomTabColorSchemeParams customTabColorSchemeParams) {
        this.mIntentBuilder.setDefaultColorSchemeParams(customTabColorSchemeParams);
        return this;
    }

    public TrustedWebActivityIntentBuilder setDisplayMode(TrustedWebActivityDisplayMode trustedWebActivityDisplayMode) {
        this.mDisplayMode = trustedWebActivityDisplayMode;
        return this;
    }

    public TrustedWebActivityIntentBuilder setFileHandlingData(FileHandlingData fileHandlingData) {
        this.mFileHandlingData = fileHandlingData;
        return this;
    }

    public TrustedWebActivityIntentBuilder setLaunchHandlerClientMode(int i2) {
        this.mLaunchHandlerClientMode = i2;
        return this;
    }

    @Deprecated
    public TrustedWebActivityIntentBuilder setNavigationBarColor(@ColorInt int i2) {
        this.mIntentBuilder.setNavigationBarColor(i2);
        return this;
    }

    @Deprecated
    public TrustedWebActivityIntentBuilder setNavigationBarDividerColor(@ColorInt int i2) {
        this.mIntentBuilder.setNavigationBarDividerColor(i2);
        return this;
    }

    public TrustedWebActivityIntentBuilder setOriginalLaunchUrl(Uri uri) {
        this.mOriginalLaunchUrl = uri;
        return this;
    }

    public TrustedWebActivityIntentBuilder setScreenOrientation(int i2) {
        this.mScreenOrientation = i2;
        return this;
    }

    public TrustedWebActivityIntentBuilder setShareParams(ShareTarget shareTarget, ShareData shareData) {
        this.mShareTarget = shareTarget;
        this.mShareData = shareData;
        return this;
    }

    public TrustedWebActivityIntentBuilder setSplashScreenParams(Bundle bundle) {
        this.mSplashScreenParams = bundle;
        return this;
    }

    @Deprecated
    public TrustedWebActivityIntentBuilder setToolbarColor(@ColorInt int i2) {
        this.mIntentBuilder.setToolbarColor(i2);
        return this;
    }
}
