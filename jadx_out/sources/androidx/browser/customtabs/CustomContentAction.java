package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.IntRange;

@ExperimentalCustomContentAction
/* loaded from: classes.dex */
public final class CustomContentAction {
    static final String KEY_ID = "androidx.browser.customtabs.customcontentaction.ID";
    static final String KEY_LABEL = "androidx.browser.customtabs.customcontentaction.LABEL";
    static final String KEY_PENDING_INTENT = "androidx.browser.customtabs.customcontentaction.PENDING_INTENT";
    static final String KEY_TARGET_TYPE = "androidx.browser.customtabs.customcontentaction.TARGET_TYPE";
    private final int mId;
    private final String mLabel;
    private final PendingIntent mPendingIntent;
    private final int mTargetType;

    public static final class Builder {
        private final int mId;
        private final String mLabel;
        private final PendingIntent mPendingIntent;
        private final int mTargetType;

        public Builder(@IntRange(from = 0) int i2, String str, PendingIntent pendingIntent, int i3) {
            if (str.isEmpty()) {
                throw new IllegalArgumentException("Label cannot be empty.");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Id cannot be set to negative numbers.");
            }
            if (i3 != 1 && i3 != 2) {
                throw new IllegalArgumentException("Invalid target type: " + i3);
            }
            this.mId = i2;
            this.mLabel = str;
            this.mPendingIntent = pendingIntent;
            this.mTargetType = i3;
        }

        public CustomContentAction build() {
            return new CustomContentAction(this.mId, this.mLabel, this.mPendingIntent, this.mTargetType);
        }
    }

    public static CustomContentAction fromBundle(Bundle bundle) {
        if (!bundle.containsKey(KEY_ID)) {
            return null;
        }
        int i2 = bundle.getInt(KEY_ID);
        String string = bundle.getString(KEY_LABEL);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        PendingIntent pendingIntent = Build.VERSION.SDK_INT >= 33 ? (PendingIntent) bundle.getParcelable(KEY_PENDING_INTENT, PendingIntent.class) : (PendingIntent) bundle.getParcelable(KEY_PENDING_INTENT);
        if (pendingIntent == null) {
            return null;
        }
        int i3 = bundle.getInt(KEY_TARGET_TYPE, 0);
        if (i3 == 1 || i3 == 2) {
            return new CustomContentAction(i2, string, pendingIntent, i3);
        }
        return null;
    }

    public int getId() {
        return this.mId;
    }

    public String getLabel() {
        return this.mLabel;
    }

    public PendingIntent getPendingIntent() {
        return this.mPendingIntent;
    }

    public int getTargetType() {
        return this.mTargetType;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(KEY_ID, this.mId);
        bundle.putString(KEY_LABEL, this.mLabel);
        bundle.putParcelable(KEY_PENDING_INTENT, this.mPendingIntent);
        bundle.putInt(KEY_TARGET_TYPE, this.mTargetType);
        return bundle;
    }

    private CustomContentAction(int i2, String str, PendingIntent pendingIntent, int i3) {
        this.mId = i2;
        this.mLabel = str;
        this.mPendingIntent = pendingIntent;
        this.mTargetType = i3;
    }
}
