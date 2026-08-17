package androidx.core.text;

import android.icu.util.ULocale;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;
import java.util.Locale;

/* loaded from: classes.dex */
public final class ICUCompat {
    private static final String TAG = "ICUCompat";
    private static Method sAddLikelySubtagsMethod;

    @RequiresApi(24)
    public static class Api24Impl {
        private Api24Impl() {
        }

        public static ULocale addLikelySubtags(Object obj) {
            return ULocale.addLikelySubtags((ULocale) obj);
        }

        public static ULocale forLocale(Locale locale) {
            return ULocale.forLocale(locale);
        }

        public static String getScript(Object obj) {
            return ((ULocale) obj).getScript();
        }
    }

    private ICUCompat() {
    }

    public static String maximizeAndGetScript(Locale locale) {
        return Api24Impl.getScript(Api24Impl.addLikelySubtags(Api24Impl.forLocale(locale)));
    }
}
