package androidx.webkit;

import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class WebViewMediaIntegrityApiStatusConfig {
    public static final int WEBVIEW_MEDIA_INTEGRITY_API_DISABLED = 0;
    public static final int WEBVIEW_MEDIA_INTEGRITY_API_ENABLED = 2;
    public static final int WEBVIEW_MEDIA_INTEGRITY_API_ENABLED_WITHOUT_APP_IDENTITY = 1;
    private final int mDefaultStatus;
    private final Map<String, Integer> mOverrideRules;

    public static final class Builder {
        private final int mDefaultStatus;
        private Map<String, Integer> mOverrideRules = new HashMap();

        public Builder(int i2) {
            this.mDefaultStatus = i2;
        }

        public Builder addOverrideRule(String str, int i2) {
            this.mOverrideRules.put(str, Integer.valueOf(i2));
            return this;
        }

        public WebViewMediaIntegrityApiStatusConfig build() {
            return new WebViewMediaIntegrityApiStatusConfig(this);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public Builder setOverrideRules(Map<String, Integer> map) {
            this.mOverrideRules = map;
            return this;
        }
    }

    public WebViewMediaIntegrityApiStatusConfig(Builder builder) {
        this.mDefaultStatus = builder.mDefaultStatus;
        this.mOverrideRules = builder.mOverrideRules;
    }

    public int getDefaultStatus() {
        return this.mDefaultStatus;
    }

    public Map<String, Integer> getOverrideRules() {
        return this.mOverrideRules;
    }
}
