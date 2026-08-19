package androidx.browser.customtabs;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Network;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.LocaleList;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.annotation.AnimRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.browser.customtabs.CustomTabColorSchemeParams;
import androidx.browser.customtabs.CustomTabsSession;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.IntentCompat;
import com.bykv.vk.component.ttvideo.player.C;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class CustomTabsIntent {
    public static final int ACTIVITY_HEIGHT_ADJUSTABLE = 1;
    public static final int ACTIVITY_HEIGHT_DEFAULT = 0;
    public static final int ACTIVITY_HEIGHT_FIXED = 2;
    private static final int ACTIVITY_HEIGHT_MAX = 2;
    public static final int ACTIVITY_SIDE_SHEET_DECORATION_TYPE_DEFAULT = 0;
    public static final int ACTIVITY_SIDE_SHEET_DECORATION_TYPE_DIVIDER = 3;
    private static final int ACTIVITY_SIDE_SHEET_DECORATION_TYPE_MAX = 3;
    public static final int ACTIVITY_SIDE_SHEET_DECORATION_TYPE_NONE = 1;
    public static final int ACTIVITY_SIDE_SHEET_DECORATION_TYPE_SHADOW = 2;
    public static final int ACTIVITY_SIDE_SHEET_POSITION_DEFAULT = 0;
    public static final int ACTIVITY_SIDE_SHEET_POSITION_END = 2;
    private static final int ACTIVITY_SIDE_SHEET_POSITION_MAX = 2;
    public static final int ACTIVITY_SIDE_SHEET_POSITION_START = 1;
    public static final int ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION_DEFAULT = 0;
    private static final int ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION_MAX = 2;
    public static final int ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION_NONE = 1;
    public static final int ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION_TOP = 2;
    public static final int CLOSE_BUTTON_POSITION_DEFAULT = 0;
    public static final int CLOSE_BUTTON_POSITION_END = 2;
    private static final int CLOSE_BUTTON_POSITION_MAX = 2;
    public static final int CLOSE_BUTTON_POSITION_START = 1;
    public static final int COLOR_SCHEME_DARK = 2;
    public static final int COLOR_SCHEME_LIGHT = 1;
    private static final int COLOR_SCHEME_MAX = 2;
    public static final int COLOR_SCHEME_SYSTEM = 0;

    @ExperimentalCustomContentAction
    public static final int CONTENT_TARGET_TYPE_IMAGE = 1;

    @ExperimentalCustomContentAction
    public static final int CONTENT_TARGET_TYPE_LINK = 2;
    public static final String EXTRA_ACTION_BUTTON_BUNDLE = "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE";
    public static final String EXTRA_ACTIVITY_HEIGHT_RESIZE_BEHAVIOR = "androidx.browser.customtabs.extra.ACTIVITY_HEIGHT_RESIZE_BEHAVIOR";
    public static final String EXTRA_ACTIVITY_SIDE_SHEET_BREAKPOINT_DP = "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_BREAKPOINT_DP";
    public static final String EXTRA_ACTIVITY_SIDE_SHEET_DECORATION_TYPE = "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_DECORATION_TYPE";
    public static final String EXTRA_ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION = "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION";
    public static final String EXTRA_ACTIVITY_SIDE_SHEET_POSITION = "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_POSITION";
    public static final String EXTRA_ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION = "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION";

    @ExperimentalCustomContentAction
    public static final String EXTRA_CLICKED_CONTENT_TARGET_TYPE = "androidx.browser.customtabs.extra.CLICKED_CONTENT_TARGET_TYPE";
    public static final String EXTRA_CLOSE_BUTTON_ENABLED = "androidx.browser.customtabs.extra.CLOSE_BUTTON_ENABLED";
    public static final String EXTRA_CLOSE_BUTTON_ICON = "android.support.customtabs.extra.CLOSE_BUTTON_ICON";
    public static final String EXTRA_CLOSE_BUTTON_POSITION = "androidx.browser.customtabs.extra.CLOSE_BUTTON_POSITION";
    public static final String EXTRA_COLOR_SCHEME = "androidx.browser.customtabs.extra.COLOR_SCHEME";
    public static final String EXTRA_COLOR_SCHEME_PARAMS = "androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS";

    @ExperimentalCustomContentAction
    public static final String EXTRA_CONTEXT_IMAGE_ALT_TEXT = "androidx.browser.customtabs.extra.CONTEXT_IMAGE_ALT_TEXT";

    @ExperimentalCustomContentAction
    public static final String EXTRA_CONTEXT_IMAGE_DATA_URI = "androidx.browser.customtabs.extra.CONTEXT_IMAGE_DATA_URI";

    @ExperimentalCustomContentAction
    public static final String EXTRA_CONTEXT_IMAGE_URL = "androidx.browser.customtabs.extra.CONTEXT_IMAGE_URL";

    @ExperimentalCustomContentAction
    public static final String EXTRA_CONTEXT_LINK_TEXT = "androidx.browser.customtabs.extra.CONTEXT_LINK_TEXT";

    @ExperimentalCustomContentAction
    public static final String EXTRA_CONTEXT_LINK_URL = "androidx.browser.customtabs.extra.CONTEXT_LINK_URL";

    @ExperimentalCustomContentAction
    public static final String EXTRA_CUSTOM_CONTENT_ACTIONS = "androidx.browser.customtabs.extra.CUSTOM_CONTENT_ACTIONS";

    @Deprecated
    public static final String EXTRA_DEFAULT_SHARE_MENU_ITEM = "android.support.customtabs.extra.SHARE_MENU_ITEM";
    public static final String EXTRA_DISABLE_BACKGROUND_INTERACTION = "androidx.browser.customtabs.extra.DISABLE_BACKGROUND_INTERACTION";
    public static final String EXTRA_DISABLE_BOOKMARKS_BUTTON = "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_STAR_BUTTON";
    public static final String EXTRA_DISABLE_DOWNLOAD_BUTTON = "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_DOWNLOAD_BUTTON";
    public static final String EXTRA_ENABLE_EPHEMERAL_BROWSING = "androidx.browser.customtabs.extra.ENABLE_EPHEMERAL_BROWSING";
    public static final String EXTRA_ENABLE_INSTANT_APPS = "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS";
    public static final String EXTRA_ENABLE_URLBAR_HIDING = "android.support.customtabs.extra.ENABLE_URLBAR_HIDING";
    public static final String EXTRA_EXIT_ANIMATION_BUNDLE = "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE";
    public static final String EXTRA_INITIAL_ACTIVITY_HEIGHT_PX = "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_HEIGHT_PX";
    public static final String EXTRA_INITIAL_ACTIVITY_WIDTH_PX = "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_WIDTH_PX";
    public static final String EXTRA_MENU_ITEMS = "android.support.customtabs.extra.MENU_ITEMS";
    public static final String EXTRA_NAVIGATION_BAR_COLOR = "androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR";
    public static final String EXTRA_NAVIGATION_BAR_DIVIDER_COLOR = "androidx.browser.customtabs.extra.NAVIGATION_BAR_DIVIDER_COLOR";
    public static final String EXTRA_NETWORK = "androidx.browser.customtabs.extra.NETWORK";

    @ExperimentalOpenInBrowser
    public static final String EXTRA_OPEN_IN_BROWSER_STATE = "androidx.browser.customtabs.extra.OPEN_IN_BROWSER_STATE";
    public static final String EXTRA_REMOTEVIEWS = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS";
    public static final String EXTRA_REMOTEVIEWS_CLICKED_ID = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_CLICKED_ID";
    public static final String EXTRA_REMOTEVIEWS_PENDINGINTENT = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT";
    public static final String EXTRA_REMOTEVIEWS_VIEW_IDS = "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS";
    public static final String EXTRA_SECONDARY_TOOLBAR_COLOR = "android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR";
    public static final String EXTRA_SECONDARY_TOOLBAR_SWIPE_UP_GESTURE = "androidx.browser.customtabs.extra.SECONDARY_TOOLBAR_SWIPE_UP_GESTURE";
    public static final String EXTRA_SEND_TO_EXTERNAL_DEFAULT_HANDLER = "android.support.customtabs.extra.SEND_TO_EXTERNAL_HANDLER";
    public static final String EXTRA_SESSION = "android.support.customtabs.extra.SESSION";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String EXTRA_SESSION_ID = "android.support.customtabs.extra.SESSION_ID";
    public static final String EXTRA_SHARE_STATE = "androidx.browser.customtabs.extra.SHARE_STATE";
    public static final String EXTRA_TINT_ACTION_BUTTON = "android.support.customtabs.extra.TINT_ACTION_BUTTON";
    public static final String EXTRA_TITLE_VISIBILITY_STATE = "android.support.customtabs.extra.TITLE_VISIBILITY";
    public static final String EXTRA_TOOLBAR_COLOR = "android.support.customtabs.extra.TOOLBAR_COLOR";
    public static final String EXTRA_TOOLBAR_CORNER_RADIUS_DP = "androidx.browser.customtabs.extra.TOOLBAR_CORNER_RADIUS_DP";
    public static final String EXTRA_TOOLBAR_ITEMS = "android.support.customtabs.extra.TOOLBAR_ITEMS";
    public static final String EXTRA_TRANSLATE_LANGUAGE_TAG = "androidx.browser.customtabs.extra.TRANSLATE_LANGUAGE_TAG";

    @ExperimentalCustomContentAction
    public static final String EXTRA_TRIGGERED_CUSTOM_CONTENT_ACTION_ID = "androidx.browser.customtabs.extra.TRIGGERED_CUSTOM_CONTENT_ACTION_ID";
    private static final String EXTRA_USER_OPT_OUT_FROM_CUSTOM_TABS = "android.support.customtabs.extra.user_opt_out";
    private static final String HTTP_ACCEPT_LANGUAGE = "Accept-Language";
    public static final String KEY_DESCRIPTION = "android.support.customtabs.customaction.DESCRIPTION";
    public static final String KEY_ICON = "android.support.customtabs.customaction.ICON";
    public static final String KEY_ID = "android.support.customtabs.customaction.ID";
    public static final String KEY_MENU_ITEM_TITLE = "android.support.customtabs.customaction.MENU_ITEM_TITLE";
    public static final String KEY_PENDING_INTENT = "android.support.customtabs.customaction.PENDING_INTENT";
    private static final int MAX_TOOLBAR_CORNER_RADIUS_DP = 16;
    private static final int MAX_TOOLBAR_ITEMS = 5;
    public static final int NO_TITLE = 0;

    @ExperimentalOpenInBrowser
    public static final int OPEN_IN_BROWSER_STATE_DEFAULT = 0;

    @ExperimentalOpenInBrowser
    private static final int OPEN_IN_BROWSER_STATE_MAX = 2;

    @ExperimentalOpenInBrowser
    public static final int OPEN_IN_BROWSER_STATE_OFF = 2;

    @ExperimentalOpenInBrowser
    public static final int OPEN_IN_BROWSER_STATE_ON = 1;
    public static final int SHARE_STATE_DEFAULT = 0;
    private static final int SHARE_STATE_MAX = 2;
    public static final int SHARE_STATE_OFF = 2;
    public static final int SHARE_STATE_ON = 1;
    public static final int SHOW_PAGE_TITLE = 1;
    public static final int TOOLBAR_ACTION_BUTTON_ID = 0;
    public final Intent intent;
    public final Bundle startAnimationBundle;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface ActivityHeightResizeBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface ActivitySideSheetDecorationType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface ActivitySideSheetPosition {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface ActivitySideSheetRoundedCornersPosition {
    }

    @RequiresApi(api = 21)
    public static class Api21Impl {
        private Api21Impl() {
        }

        public static Locale getLocaleForLanguageTag(Intent intent) {
            String stringExtra = intent.getStringExtra(CustomTabsIntent.EXTRA_TRANSLATE_LANGUAGE_TAG);
            if (stringExtra != null) {
                return Locale.forLanguageTag(stringExtra);
            }
            return null;
        }

        public static void setLanguageTag(Intent intent, Locale locale) {
            intent.putExtra(CustomTabsIntent.EXTRA_TRANSLATE_LANGUAGE_TAG, locale.toLanguageTag());
        }
    }

    @RequiresApi(api = 23)
    public static class Api23Impl {
        private Api23Impl() {
        }

        public static ActivityOptions makeBasicActivityOptions() {
            return ActivityOptions.makeBasic();
        }
    }

    @RequiresApi(api = 24)
    public static class Api24Impl {
        private Api24Impl() {
        }

        public static String getDefaultLocale() {
            LocaleList adjustedDefault = LocaleList.getAdjustedDefault();
            if (adjustedDefault.size() > 0) {
                return adjustedDefault.get(0).toLanguageTag();
            }
            return null;
        }
    }

    @RequiresApi(api = 34)
    public static class Api34Impl {
        private Api34Impl() {
        }

        public static void setShareIdentityEnabled(ActivityOptions activityOptions, boolean z2) {
            activityOptions.setShareIdentityEnabled(z2);
        }
    }

    @RequiresApi(api = 36)
    public static class Api36Impl {
        private Api36Impl() {
        }

        public static void setAllowPassThroughOnTouchOutside(ActivityOptions activityOptions, boolean z2) {
            activityOptions.setAllowPassThroughOnTouchOutside(z2);
        }
    }

    public static final class Builder {
        private ArrayList<Bundle> mActionButtons;
        private ActivityOptions mActivityOptions;
        private SparseArray<Bundle> mColorSchemeParamBundles;
        private ArrayList<Bundle> mCustomContentActionBundles;
        private Bundle mDefaultColorSchemeBundle;
        private ArrayList<Bundle> mMenuItems;
        private boolean mShareIdentity;
        private final Intent mIntent = new Intent("android.intent.action.VIEW");
        private final CustomTabColorSchemeParams.Builder mDefaultColorSchemeBuilder = new CustomTabColorSchemeParams.Builder();
        private int mShareState = 0;
        private boolean mInstantAppsEnabled = true;

        public Builder() {
        }

        @RequiresApi(api = 36)
        private void setAllowPassThroughOnTouchOutside() {
            if (this.mActivityOptions == null) {
                this.mActivityOptions = Api23Impl.makeBasicActivityOptions();
            }
            Api36Impl.setAllowPassThroughOnTouchOutside(this.mActivityOptions, CustomTabsIntent.isBackgroundInteractionEnabled(this.mIntent));
        }

        @RequiresApi(api = 24)
        private void setCurrentLocaleAsDefaultAcceptLanguage() {
            String defaultLocale = Api24Impl.getDefaultLocale();
            if (TextUtils.isEmpty(defaultLocale)) {
                return;
            }
            Bundle bundleExtra = this.mIntent.hasExtra("com.android.browser.headers") ? this.mIntent.getBundleExtra("com.android.browser.headers") : new Bundle();
            if (bundleExtra.containsKey(CustomTabsIntent.HTTP_ACCEPT_LANGUAGE)) {
                return;
            }
            bundleExtra.putString(CustomTabsIntent.HTTP_ACCEPT_LANGUAGE, defaultLocale);
            this.mIntent.putExtra("com.android.browser.headers", bundleExtra);
        }

        @RequiresApi(api = 24)
        private void setLanguageTag(Locale locale) {
            Api21Impl.setLanguageTag(this.mIntent, locale);
        }

        private void setSessionParameters(IBinder iBinder, PendingIntent pendingIntent) {
            Bundle bundle = new Bundle();
            bundle.putBinder(CustomTabsIntent.EXTRA_SESSION, iBinder);
            if (pendingIntent != null) {
                bundle.putParcelable(CustomTabsIntent.EXTRA_SESSION_ID, pendingIntent);
            }
            this.mIntent.putExtras(bundle);
        }

        @ExperimentalCustomContentAction
        public Builder addCustomContentAction(CustomContentAction customContentAction) {
            if (this.mCustomContentActionBundles == null) {
                this.mCustomContentActionBundles = new ArrayList<>();
            }
            ArrayList<Bundle> arrayList = this.mCustomContentActionBundles;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Bundle bundle = arrayList.get(i2);
                i2++;
                if (bundle.getInt("androidx.browser.customtabs.customcontentaction.ID") == customContentAction.getId()) {
                    throw new IllegalArgumentException("CustomContentAction with ID " + customContentAction.getId() + " already exists.");
                }
            }
            this.mCustomContentActionBundles.add(customContentAction.toBundle());
            return this;
        }

        @Deprecated
        public Builder addDefaultShareMenuItem() {
            setShareState(1);
            return this;
        }

        public Builder addMenuItem(String str, PendingIntent pendingIntent) {
            if (this.mMenuItems == null) {
                this.mMenuItems = new ArrayList<>();
            }
            Bundle bundle = new Bundle();
            bundle.putString(CustomTabsIntent.KEY_MENU_ITEM_TITLE, str);
            bundle.putParcelable(CustomTabsIntent.KEY_PENDING_INTENT, pendingIntent);
            this.mMenuItems.add(bundle);
            return this;
        }

        @Deprecated
        public Builder addToolbarItem(int i2, Bitmap bitmap, String str, PendingIntent pendingIntent) throws IllegalStateException {
            if (this.mActionButtons == null) {
                this.mActionButtons = new ArrayList<>();
            }
            if (this.mActionButtons.size() >= 5) {
                throw new IllegalStateException("Exceeded maximum toolbar item count of 5");
            }
            Bundle bundle = new Bundle();
            bundle.putInt(CustomTabsIntent.KEY_ID, i2);
            bundle.putParcelable(CustomTabsIntent.KEY_ICON, bitmap);
            bundle.putString(CustomTabsIntent.KEY_DESCRIPTION, str);
            bundle.putParcelable(CustomTabsIntent.KEY_PENDING_INTENT, pendingIntent);
            this.mActionButtons.add(bundle);
            return this;
        }

        public CustomTabsIntent build() {
            if (!this.mIntent.hasExtra(CustomTabsIntent.EXTRA_SESSION)) {
                setSessionParameters(null, null);
            }
            ArrayList<Bundle> arrayList = this.mMenuItems;
            if (arrayList != null) {
                this.mIntent.putParcelableArrayListExtra(CustomTabsIntent.EXTRA_MENU_ITEMS, arrayList);
            }
            ArrayList<Bundle> arrayList2 = this.mActionButtons;
            if (arrayList2 != null) {
                this.mIntent.putParcelableArrayListExtra(CustomTabsIntent.EXTRA_TOOLBAR_ITEMS, arrayList2);
            }
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_ENABLE_INSTANT_APPS, this.mInstantAppsEnabled);
            this.mIntent.putExtras(this.mDefaultColorSchemeBuilder.build().toBundle());
            Bundle bundle = this.mDefaultColorSchemeBundle;
            if (bundle != null) {
                this.mIntent.putExtras(bundle);
            }
            if (this.mColorSchemeParamBundles != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putSparseParcelableArray(CustomTabsIntent.EXTRA_COLOR_SCHEME_PARAMS, this.mColorSchemeParamBundles);
                this.mIntent.putExtras(bundle2);
            }
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_SHARE_STATE, this.mShareState);
            ArrayList<Bundle> arrayList3 = this.mCustomContentActionBundles;
            if (arrayList3 != null && !arrayList3.isEmpty()) {
                this.mIntent.putParcelableArrayListExtra(CustomTabsIntent.EXTRA_CUSTOM_CONTENT_ACTIONS, this.mCustomContentActionBundles);
            }
            int i2 = Build.VERSION.SDK_INT;
            setCurrentLocaleAsDefaultAcceptLanguage();
            if (i2 >= 34) {
                setShareIdentityEnabled();
            }
            if (i2 >= 36) {
                setAllowPassThroughOnTouchOutside();
            }
            ActivityOptions activityOptions = this.mActivityOptions;
            return new CustomTabsIntent(this.mIntent, activityOptions != null ? activityOptions.toBundle() : null);
        }

        @Deprecated
        public Builder enableUrlBarHiding() {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_ENABLE_URLBAR_HIDING, true);
            return this;
        }

        public Builder setActionButton(Bitmap bitmap, String str, PendingIntent pendingIntent, boolean z2) {
            Bundle bundle = new Bundle();
            bundle.putInt(CustomTabsIntent.KEY_ID, 0);
            bundle.putParcelable(CustomTabsIntent.KEY_ICON, bitmap);
            bundle.putString(CustomTabsIntent.KEY_DESCRIPTION, str);
            bundle.putParcelable(CustomTabsIntent.KEY_PENDING_INTENT, pendingIntent);
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_ACTION_BUTTON_BUNDLE, bundle);
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_TINT_ACTION_BUTTON, z2);
            return this;
        }

        public Builder setActivitySideSheetBreakpointDp(@Dimension(unit = 0) int i2) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("Invalid value for the initialWidthPx argument");
            }
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_ACTIVITY_SIDE_SHEET_BREAKPOINT_DP, i2);
            return this;
        }

        public Builder setActivitySideSheetDecorationType(int i2) {
            if (i2 < 0 || i2 > 3) {
                throw new IllegalArgumentException("Invalid value for the decorationType argument");
            }
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_ACTIVITY_SIDE_SHEET_DECORATION_TYPE, i2);
            return this;
        }

        public Builder setActivitySideSheetMaximizationEnabled(boolean z2) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION, z2);
            return this;
        }

        public Builder setActivitySideSheetPosition(int i2) {
            if (i2 < 0 || i2 > 2) {
                throw new IllegalArgumentException("Invalid value for the sideSheetPosition argument");
            }
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_ACTIVITY_SIDE_SHEET_POSITION, i2);
            return this;
        }

        public Builder setActivitySideSheetRoundedCornersPosition(int i2) {
            if (i2 < 0 || i2 > 2) {
                throw new IllegalArgumentException("Invalid value for the roundedCornersPosition./ argument");
            }
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION, i2);
            return this;
        }

        public Builder setBackgroundInteractionEnabled(boolean z2) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_DISABLE_BACKGROUND_INTERACTION, !z2);
            return this;
        }

        public Builder setBookmarksButtonEnabled(boolean z2) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_DISABLE_BOOKMARKS_BUTTON, !z2);
            return this;
        }

        public Builder setCloseButtonEnabled(boolean z2) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_CLOSE_BUTTON_ENABLED, z2);
            return this;
        }

        public Builder setCloseButtonIcon(Bitmap bitmap) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_CLOSE_BUTTON_ICON, bitmap);
            return this;
        }

        public Builder setCloseButtonPosition(int i2) {
            if (i2 < 0 || i2 > 2) {
                throw new IllegalArgumentException("Invalid value for the position argument");
            }
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_CLOSE_BUTTON_POSITION, i2);
            return this;
        }

        public Builder setColorScheme(int i2) {
            if (i2 < 0 || i2 > 2) {
                throw new IllegalArgumentException("Invalid value for the colorScheme argument");
            }
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_COLOR_SCHEME, i2);
            return this;
        }

        public Builder setColorSchemeParams(int i2, CustomTabColorSchemeParams customTabColorSchemeParams) {
            if (i2 < 0 || i2 > 2 || i2 == 0) {
                throw new IllegalArgumentException("Invalid colorScheme: " + i2);
            }
            if (this.mColorSchemeParamBundles == null) {
                this.mColorSchemeParamBundles = new SparseArray<>();
            }
            this.mColorSchemeParamBundles.put(i2, customTabColorSchemeParams.toBundle());
            return this;
        }

        public Builder setDefaultColorSchemeParams(CustomTabColorSchemeParams customTabColorSchemeParams) {
            this.mDefaultColorSchemeBundle = customTabColorSchemeParams.toBundle();
            return this;
        }

        @Deprecated
        public Builder setDefaultShareMenuItemEnabled(boolean z2) {
            if (z2) {
                setShareState(1);
                return this;
            }
            setShareState(2);
            return this;
        }

        public Builder setDownloadButtonEnabled(boolean z2) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_DISABLE_DOWNLOAD_BUTTON, !z2);
            return this;
        }

        public Builder setEphemeralBrowsingEnabled(boolean z2) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_ENABLE_EPHEMERAL_BROWSING, z2);
            return this;
        }

        public Builder setExitAnimations(Context context, @AnimRes int i2, @AnimRes int i3) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_EXIT_ANIMATION_BUNDLE, ActivityOptionsCompat.makeCustomAnimation(context, i2, i3).toBundle());
            return this;
        }

        public Builder setInitialActivityHeightPx(@Dimension(unit = 1) int i2, int i3) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("Invalid value for the initialHeightPx argument");
            }
            if (i3 < 0 || i3 > 2) {
                throw new IllegalArgumentException("Invalid value for the activityHeightResizeBehavior argument");
            }
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_INITIAL_ACTIVITY_HEIGHT_PX, i2);
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_ACTIVITY_HEIGHT_RESIZE_BEHAVIOR, i3);
            return this;
        }

        public Builder setInitialActivityWidthPx(@Dimension(unit = 1) int i2) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("Invalid value for the initialWidthPx argument");
            }
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_INITIAL_ACTIVITY_WIDTH_PX, i2);
            return this;
        }

        public Builder setInstantAppsEnabled(boolean z2) {
            this.mInstantAppsEnabled = z2;
            return this;
        }

        @Deprecated
        public Builder setNavigationBarColor(@ColorInt int i2) {
            this.mDefaultColorSchemeBuilder.setNavigationBarColor(i2);
            return this;
        }

        @Deprecated
        public Builder setNavigationBarDividerColor(@ColorInt int i2) {
            this.mDefaultColorSchemeBuilder.setNavigationBarDividerColor(i2);
            return this;
        }

        public Builder setNetwork(Network network) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_NETWORK, network);
            return this;
        }

        @ExperimentalOpenInBrowser
        public Builder setOpenInBrowserButtonState(int i2) {
            if (i2 < 0 || i2 > 2) {
                throw new IllegalArgumentException("Invalid value for the openInBrowserState argument.");
            }
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_OPEN_IN_BROWSER_STATE, i2);
            return this;
        }

        public Builder setPendingSession(CustomTabsSession.PendingSession pendingSession) {
            setSessionParameters(null, pendingSession.getId());
            return this;
        }

        @Deprecated
        public Builder setSecondaryToolbarColor(@ColorInt int i2) {
            this.mDefaultColorSchemeBuilder.setSecondaryToolbarColor(i2);
            return this;
        }

        public Builder setSecondaryToolbarSwipeUpGesture(PendingIntent pendingIntent) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_SECONDARY_TOOLBAR_SWIPE_UP_GESTURE, pendingIntent);
            return this;
        }

        public Builder setSecondaryToolbarViews(RemoteViews remoteViews, int[] iArr, PendingIntent pendingIntent) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_REMOTEVIEWS, remoteViews);
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_REMOTEVIEWS_VIEW_IDS, iArr);
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_REMOTEVIEWS_PENDINGINTENT, pendingIntent);
            return this;
        }

        public Builder setSendToExternalDefaultHandlerEnabled(boolean z2) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_SEND_TO_EXTERNAL_DEFAULT_HANDLER, z2);
            return this;
        }

        public Builder setSession(CustomTabsSession customTabsSession) {
            this.mIntent.setPackage(customTabsSession.getComponentName().getPackageName());
            setSessionParameters(customTabsSession.getBinder(), customTabsSession.getId());
            return this;
        }

        public Builder setShareIdentityEnabled(boolean z2) {
            this.mShareIdentity = z2;
            return this;
        }

        public Builder setShareState(int i2) {
            if (i2 < 0 || i2 > 2) {
                throw new IllegalArgumentException("Invalid value for the shareState argument");
            }
            this.mShareState = i2;
            if (i2 == 1) {
                this.mIntent.putExtra(CustomTabsIntent.EXTRA_DEFAULT_SHARE_MENU_ITEM, true);
                return this;
            }
            if (i2 == 2) {
                this.mIntent.putExtra(CustomTabsIntent.EXTRA_DEFAULT_SHARE_MENU_ITEM, false);
                return this;
            }
            this.mIntent.removeExtra(CustomTabsIntent.EXTRA_DEFAULT_SHARE_MENU_ITEM);
            return this;
        }

        public Builder setShowTitle(boolean z2) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_TITLE_VISIBILITY_STATE, z2 ? 1 : 0);
            return this;
        }

        public Builder setStartAnimations(Context context, @AnimRes int i2, @AnimRes int i3) {
            this.mActivityOptions = ActivityOptions.makeCustomAnimation(context, i2, i3);
            return this;
        }

        @Deprecated
        public Builder setToolbarColor(@ColorInt int i2) {
            this.mDefaultColorSchemeBuilder.setToolbarColor(i2);
            return this;
        }

        public Builder setToolbarCornerRadiusDp(@Dimension(unit = 0) int i2) {
            if (i2 < 0 || i2 > 16) {
                throw new IllegalArgumentException("Invalid value for the cornerRadiusDp argument");
            }
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_TOOLBAR_CORNER_RADIUS_DP, i2);
            return this;
        }

        public Builder setTranslateLocale(Locale locale) {
            setLanguageTag(locale);
            return this;
        }

        public Builder setUrlBarHidingEnabled(boolean z2) {
            this.mIntent.putExtra(CustomTabsIntent.EXTRA_ENABLE_URLBAR_HIDING, z2);
            return this;
        }

        @RequiresApi(api = 34)
        private void setShareIdentityEnabled() {
            if (this.mActivityOptions == null) {
                this.mActivityOptions = Api23Impl.makeBasicActivityOptions();
            }
            Api34Impl.setShareIdentityEnabled(this.mActivityOptions, this.mShareIdentity);
        }

        public Builder setInitialActivityHeightPx(@Dimension(unit = 1) int i2) {
            return setInitialActivityHeightPx(i2, 0);
        }

        public Builder(CustomTabsSession customTabsSession) {
            if (customTabsSession != null) {
                setSession(customTabsSession);
            }
        }

        public Builder setActionButton(Bitmap bitmap, String str, PendingIntent pendingIntent) {
            return setActionButton(bitmap, str, pendingIntent, false);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface CloseButtonPosition {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface ColorScheme {
    }

    @ExperimentalCustomContentAction
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface ContentTargetType {
    }

    @ExperimentalOpenInBrowser
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface OpenInBrowserState {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface ShareState {
    }

    public CustomTabsIntent(Intent intent, Bundle bundle) {
        this.intent = intent;
        this.startAnimationBundle = bundle;
    }

    public static int getActivityResizeBehavior(Intent intent) {
        return intent.getIntExtra(EXTRA_ACTIVITY_HEIGHT_RESIZE_BEHAVIOR, 0);
    }

    @Dimension(unit = 0)
    public static int getActivitySideSheetBreakpointDp(Intent intent) {
        return intent.getIntExtra(EXTRA_ACTIVITY_SIDE_SHEET_BREAKPOINT_DP, 0);
    }

    public static int getActivitySideSheetDecorationType(Intent intent) {
        return intent.getIntExtra(EXTRA_ACTIVITY_SIDE_SHEET_DECORATION_TYPE, 0);
    }

    public static int getActivitySideSheetPosition(Intent intent) {
        return intent.getIntExtra(EXTRA_ACTIVITY_SIDE_SHEET_POSITION, 0);
    }

    public static int getActivitySideSheetRoundedCornersPosition(Intent intent) {
        return intent.getIntExtra(EXTRA_ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION, 0);
    }

    public static int getCloseButtonPosition(Intent intent) {
        return intent.getIntExtra(EXTRA_CLOSE_BUTTON_POSITION, 0);
    }

    public static CustomTabColorSchemeParams getColorSchemeParams(Intent intent, int i2) {
        Bundle bundle;
        if (i2 < 0 || i2 > 2 || i2 == 0) {
            throw new IllegalArgumentException("Invalid colorScheme: " + i2);
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            return CustomTabColorSchemeParams.fromBundle(null);
        }
        CustomTabColorSchemeParams customTabColorSchemeParamsFromBundle = CustomTabColorSchemeParams.fromBundle(extras);
        SparseArray sparseParcelableArray = extras.getSparseParcelableArray(EXTRA_COLOR_SCHEME_PARAMS);
        return (sparseParcelableArray == null || (bundle = (Bundle) sparseParcelableArray.get(i2)) == null) ? customTabColorSchemeParamsFromBundle : CustomTabColorSchemeParams.fromBundle(bundle).withDefaults(customTabColorSchemeParamsFromBundle);
    }

    @ExperimentalCustomContentAction
    public static List<CustomContentAction> getCustomContentActions(Intent intent) {
        ArrayList parcelableArrayListExtra = IntentCompat.getParcelableArrayListExtra(intent, EXTRA_CUSTOM_CONTENT_ACTIONS, Bundle.class);
        if (parcelableArrayListExtra == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(parcelableArrayListExtra.size());
        int size = parcelableArrayListExtra.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = parcelableArrayListExtra.get(i2);
            i2++;
            CustomContentAction customContentActionFromBundle = CustomContentAction.fromBundle((Bundle) obj);
            if (customContentActionFromBundle != null) {
                arrayList.add(customContentActionFromBundle);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Dimension(unit = 1)
    public static int getInitialActivityHeightPx(Intent intent) {
        return intent.getIntExtra(EXTRA_INITIAL_ACTIVITY_HEIGHT_PX, 0);
    }

    @Dimension(unit = 1)
    public static int getInitialActivityWidthPx(Intent intent) {
        return intent.getIntExtra(EXTRA_INITIAL_ACTIVITY_WIDTH_PX, 0);
    }

    @RequiresApi(api = 24)
    private static Locale getLocaleForLanguageTag(Intent intent) {
        return Api21Impl.getLocaleForLanguageTag(intent);
    }

    public static int getMaxToolbarItems() {
        return 5;
    }

    public static Network getNetwork(Intent intent) {
        return (Network) IntentCompat.getParcelableExtra(intent, EXTRA_NETWORK, Network.class);
    }

    @ExperimentalOpenInBrowser
    public static int getOpenInBrowserButtonState(Intent intent) {
        return intent.getIntExtra(EXTRA_OPEN_IN_BROWSER_STATE, 0);
    }

    public static PendingIntent getSecondaryToolbarSwipeUpGesture(Intent intent) {
        return (PendingIntent) intent.getParcelableExtra(EXTRA_SECONDARY_TOOLBAR_SWIPE_UP_GESTURE);
    }

    @Dimension(unit = 0)
    public static int getToolbarCornerRadiusDp(Intent intent) {
        return intent.getIntExtra(EXTRA_TOOLBAR_CORNER_RADIUS_DP, 16);
    }

    public static Locale getTranslateLocale(Intent intent) {
        return getLocaleForLanguageTag(intent);
    }

    public static boolean isActivitySideSheetMaximizationEnabled(Intent intent) {
        return intent.getBooleanExtra(EXTRA_ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION, false);
    }

    public static boolean isBackgroundInteractionEnabled(Intent intent) {
        return !intent.getBooleanExtra(EXTRA_DISABLE_BACKGROUND_INTERACTION, false);
    }

    public static boolean isBookmarksButtonEnabled(Intent intent) {
        return !intent.getBooleanExtra(EXTRA_DISABLE_BOOKMARKS_BUTTON, false);
    }

    public static boolean isCloseButtonEnabled(Intent intent) {
        return intent.getBooleanExtra(EXTRA_CLOSE_BUTTON_ENABLED, true);
    }

    public static boolean isDownloadButtonEnabled(Intent intent) {
        return !intent.getBooleanExtra(EXTRA_DISABLE_DOWNLOAD_BUTTON, false);
    }

    public static boolean isSendToExternalDefaultHandlerEnabled(Intent intent) {
        return intent.getBooleanExtra(EXTRA_SEND_TO_EXTERNAL_DEFAULT_HANDLER, false);
    }

    public static Intent setAlwaysUseBrowserUI(Intent intent) {
        if (intent == null) {
            intent = new Intent("android.intent.action.VIEW");
        }
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra(EXTRA_USER_OPT_OUT_FROM_CUSTOM_TABS, true);
        return intent;
    }

    public static boolean shouldAlwaysUseBrowserUI(Intent intent) {
        return intent.getBooleanExtra(EXTRA_USER_OPT_OUT_FROM_CUSTOM_TABS, false) && (intent.getFlags() & C.ENCODING_PCM_MU_LAW) != 0;
    }

    public boolean isEphemeralBrowsingEnabled() {
        return this.intent.getBooleanExtra(EXTRA_ENABLE_EPHEMERAL_BROWSING, false);
    }

    public void launchUrl(Context context, Uri uri) {
        this.intent.setData(uri);
        ContextCompat.startActivity(context, this.intent, this.startAnimationBundle);
    }
}
