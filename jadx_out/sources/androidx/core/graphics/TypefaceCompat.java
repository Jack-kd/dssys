package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.text.PositionedGlyphs;
import android.graphics.text.TextRunShaper;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.annotation.IntRange;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Preconditions;
import androidx.tracing.Trace;
import java.util.List;

/* loaded from: classes.dex */
public class TypefaceCompat {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final boolean DOWNLOADABLE_FALLBACK_DEBUG = false;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final boolean DOWNLOADABLE_FONT_TRACING = true;
    private static final String REFERENCE_CHAR_FOR_PRIMARY_FONT = " ";
    private static final String TAG = "TypefaceCompat";
    private static Paint sCachedPaint;
    private static final LruCache<String, Typeface> sTypefaceCache;
    private static final TypefaceCompatBaseImpl sTypefaceCompatImpl;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static class ResourcesCallbackAdapter extends FontsContractCompat.FontRequestCallback {
        private ResourcesCompat.FontCallback mFontCallback;

        public ResourcesCallbackAdapter(ResourcesCompat.FontCallback fontCallback) {
            this.mFontCallback = fontCallback;
        }

        @Override // androidx.core.provider.FontsContractCompat.FontRequestCallback
        public void onTypefaceRequestFailed(int i2) {
            ResourcesCompat.FontCallback fontCallback = this.mFontCallback;
            if (fontCallback != null) {
                fontCallback.onFontRetrievalFailed(i2);
            }
        }

        @Override // androidx.core.provider.FontsContractCompat.FontRequestCallback
        public void onTypefaceRetrieved(Typeface typeface) {
            ResourcesCompat.FontCallback fontCallback = this.mFontCallback;
            if (fontCallback != null) {
                fontCallback.onFontRetrieved(typeface);
            }
        }
    }

    static {
        Trace.beginSection("TypefaceCompat static init");
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            sTypefaceCompatImpl = new TypefaceCompatApi31Impl();
        } else if (i2 >= 29) {
            sTypefaceCompatImpl = new TypefaceCompatApi29Impl();
        } else if (i2 >= 28) {
            sTypefaceCompatImpl = new TypefaceCompatApi28Impl();
        } else if (i2 >= 26) {
            sTypefaceCompatImpl = new TypefaceCompatApi26Impl();
        } else if (TypefaceCompatApi24Impl.isUsable()) {
            sTypefaceCompatImpl = new TypefaceCompatApi24Impl();
        } else {
            sTypefaceCompatImpl = new TypefaceCompatApi21Impl();
        }
        sTypefaceCache = new LruCache<>(16);
        sCachedPaint = null;
        Trace.endSection();
    }

    private TypefaceCompat() {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @VisibleForTesting
    public static void clearCache() {
        sTypefaceCache.evictAll();
    }

    public static Typeface create(Context context, Typeface typeface, int i2) {
        if (context != null) {
            return Typeface.create(typeface, i2);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, FontsContractCompat.FontInfo[] fontInfoArr, int i2) {
        Trace.beginSection("TypefaceCompat.createFromFontInfo");
        try {
            return sTypefaceCompatImpl.createFromFontInfo(context, cancellationSignal, fontInfoArr, i2);
        } finally {
            Trace.endSection();
        }
    }

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Typeface createFromFontInfoWithFallback(Context context, CancellationSignal cancellationSignal, List<FontsContractCompat.FontInfo[]> list, int i2) {
        Trace.beginSection("TypefaceCompat.createFromFontInfoWithFallback");
        try {
            return sTypefaceCompatImpl.createFromFontInfoWithFallback(context, cancellationSignal, list, i2);
        } finally {
            Trace.endSection();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Typeface createFromResourcesFamilyXml(Context context, FontResourcesParserCompat.FamilyResourceEntry familyResourceEntry, Resources resources, int i2, String str, int i3, int i4, ResourcesCompat.FontCallback fontCallback, Handler handler, boolean z2) {
        Typeface typefaceCreateFromFontFamilyFilesResourceEntry;
        if (familyResourceEntry instanceof FontResourcesParserCompat.ProviderResourceEntry) {
            FontResourcesParserCompat.ProviderResourceEntry providerResourceEntry = (FontResourcesParserCompat.ProviderResourceEntry) familyResourceEntry;
            Typeface systemFontFamilyWithFallback = getSystemFontFamilyWithFallback(providerResourceEntry);
            if (systemFontFamilyWithFallback != null) {
                if (fontCallback != null) {
                    fontCallback.callbackSuccessAsync(systemFontFamilyWithFallback, handler);
                }
                sTypefaceCache.put(createResourceUid(resources, i2, str, i3, i4), systemFontFamilyWithFallback);
                return systemFontFamilyWithFallback;
            }
            typefaceCreateFromFontFamilyFilesResourceEntry = FontsContractCompat.requestFont(context, providerResourceEntry.getRequests(), i4, !z2 ? fontCallback != null : providerResourceEntry.getFetchStrategy() != 0, z2 ? providerResourceEntry.getTimeout() : -1, ResourcesCompat.FontCallback.getHandler(handler), new ResourcesCallbackAdapter(fontCallback));
        } else {
            typefaceCreateFromFontFamilyFilesResourceEntry = sTypefaceCompatImpl.createFromFontFamilyFilesResourceEntry(context, (FontResourcesParserCompat.FontFamilyFilesResourceEntry) familyResourceEntry, resources, i4);
            if (fontCallback != null) {
                if (typefaceCreateFromFontFamilyFilesResourceEntry != null) {
                    fontCallback.callbackSuccessAsync(typefaceCreateFromFontFamilyFilesResourceEntry, handler);
                } else {
                    fontCallback.callbackFailAsync(-3, handler);
                }
            }
        }
        if (typefaceCreateFromFontFamilyFilesResourceEntry != null) {
            sTypefaceCache.put(createResourceUid(resources, i2, str, i3, i4), typefaceCreateFromFontFamilyFilesResourceEntry);
        }
        return typefaceCreateFromFontFamilyFilesResourceEntry;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Typeface createFromResourcesFontFile(Context context, Resources resources, int i2, String str, int i3, int i4) {
        Typeface typefaceCreateFromResourcesFontFile = sTypefaceCompatImpl.createFromResourcesFontFile(context, resources, i2, str, i4);
        if (typefaceCreateFromResourcesFontFile != null) {
            sTypefaceCache.put(createResourceUid(resources, i2, str, i3, i4), typefaceCreateFromResourcesFontFile);
        }
        return typefaceCreateFromResourcesFontFile;
    }

    private static String createResourceUid(Resources resources, int i2, String str, int i3, int i4) {
        return resources.getResourcePackageName(i2) + '-' + str + '-' + i3 + '-' + i2 + '-' + i4;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Typeface findFromCache(Resources resources, int i2, String str, int i3, int i4) {
        return sTypefaceCache.get(createResourceUid(resources, i2, str, i3, i4));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Typeface getSystemFontFamily(String str) {
        if (str != null && !str.isEmpty()) {
            Typeface typefaceCreate = Typeface.create(str, 0);
            Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
            if (typefaceCreate != null && !typefaceCreate.equals(typefaceCreate2)) {
                return typefaceCreate;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d1, code lost:
    
        return r0.build();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface getSystemFontFamilyWithFallback(androidx.core.content.res.FontResourcesParserCompat.ProviderResourceEntry r7) {
        /*
            java.lang.String r0 = r7.getSystemFontFamilyName()
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L11
            android.graphics.Typeface r0 = getSystemFontFamily(r0)
            if (r0 == 0) goto L11
            return r0
        L11:
            java.util.List r7 = r7.getRequests()
            int r0 = r7.size()
            r1 = 0
            r2 = 1
            if (r0 != r2) goto L2c
            java.lang.Object r7 = r7.get(r1)
            androidx.core.provider.FontRequest r7 = (androidx.core.provider.FontRequest) r7
            java.lang.String r7 = r7.getSystemFont()
            android.graphics.Typeface r7 = getSystemFontFamily(r7)
            return r7
        L2c:
            int r0 = android.os.Build.VERSION.SDK_INT
            r3 = 31
            r4 = 0
            if (r0 >= r3) goto L34
            return r4
        L34:
            r0 = r1
        L35:
            int r3 = r7.size()
            if (r0 >= r3) goto L4f
            java.lang.Object r3 = r7.get(r0)
            androidx.core.provider.FontRequest r3 = (androidx.core.provider.FontRequest) r3
            java.lang.String r3 = r3.getSystemFont()
            android.graphics.Typeface r3 = getSystemFontFamily(r3)
            if (r3 != 0) goto L4c
            return r4
        L4c:
            int r0 = r0 + 1
            goto L35
        L4f:
            r0 = r4
        L50:
            int r3 = r7.size()
            if (r1 >= r3) goto Lcd
            java.lang.Object r3 = r7.get(r1)
            androidx.core.provider.FontRequest r3 = (androidx.core.provider.FontRequest) r3
            int r5 = r7.size()
            int r5 = r5 - r2
            if (r1 != r5) goto L75
            java.lang.String r5 = r3.getVariationSettings()
            boolean r5 = android.text.TextUtils.isEmpty(r5)
            if (r5 == 0) goto L75
            java.lang.String r7 = r3.getSystemFont()
            androidx.core.graphics.w.a(r0, r7)
            goto Lcd
        L75:
            java.lang.String r5 = r3.getSystemFont()
            android.graphics.Typeface r5 = getSystemFontFamily(r5)
            android.graphics.fonts.Font r5 = guessPrimaryFont(r5)
            if (r5 != 0) goto L87
            r3.getSystemFont()
            return r4
        L87:
            java.lang.String r6 = r3.getVariationSettings()
            boolean r6 = android.text.TextUtils.isEmpty(r6)
            if (r6 != 0) goto Lb8
            androidx.core.graphics.z.a()     // Catch: java.io.IOException -> Lb0
            androidx.core.graphics.A.a()     // Catch: java.io.IOException -> Lb0
            android.graphics.fonts.Font$Builder r5 = androidx.core.graphics.J.a(r5)     // Catch: java.io.IOException -> Lb0
            java.lang.String r3 = r3.getVariationSettings()     // Catch: java.io.IOException -> Lb0
            android.graphics.fonts.Font$Builder r3 = androidx.core.graphics.B.a(r5, r3)     // Catch: java.io.IOException -> Lb0
            android.graphics.fonts.Font r3 = androidx.core.graphics.C.a(r3)     // Catch: java.io.IOException -> Lb0
            android.graphics.fonts.FontFamily$Builder r3 = androidx.core.graphics.x.a(r3)     // Catch: java.io.IOException -> Lb0
            android.graphics.fonts.FontFamily r3 = androidx.core.graphics.D.a(r3)     // Catch: java.io.IOException -> Lb0
            goto Lc0
        Lb0:
            java.lang.String r7 = "TypefaceCompat"
            java.lang.String r0 = "Failed to clone Font instance. Fall back to provider font."
            android.util.Log.e(r7, r0)
            return r4
        Lb8:
            android.graphics.fonts.FontFamily$Builder r3 = androidx.core.graphics.x.a(r5)
            android.graphics.fonts.FontFamily r3 = androidx.core.graphics.D.a(r3)
        Lc0:
            if (r0 != 0) goto Lc7
            android.graphics.Typeface$CustomFallbackBuilder r0 = androidx.core.graphics.y.a(r3)
            goto Lca
        Lc7:
            androidx.core.graphics.E.a(r0, r3)
        Lca:
            int r1 = r1 + 1
            goto L50
        Lcd:
            android.graphics.Typeface r7 = androidx.core.graphics.F.a(r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.TypefaceCompat.getSystemFontFamilyWithFallback(androidx.core.content.res.FontResourcesParserCompat$ProviderResourceEntry):android.graphics.Typeface");
    }

    @RequiresApi(31)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Font guessPrimaryFont(Typeface typeface) {
        if (sCachedPaint == null) {
            sCachedPaint = new Paint();
        }
        sCachedPaint.setTextSize(10.0f);
        sCachedPaint.setTypeface(typeface);
        PositionedGlyphs positionedGlyphsShapeTextRun = TextRunShaper.shapeTextRun((CharSequence) REFERENCE_CHAR_FOR_PRIMARY_FONT, 0, 1, 0, 1, 0.0f, 0.0f, false, sCachedPaint);
        if (positionedGlyphsShapeTextRun.glyphCount() == 0) {
            return null;
        }
        return positionedGlyphsShapeTextRun.getFont(0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static Typeface findFromCache(Resources resources, int i2, int i3) {
        return findFromCache(resources, i2, null, 0, i3);
    }

    public static Typeface create(Context context, Typeface typeface, @IntRange(from = 1, to = com.umeng.commonsdk.config.d.f49879a) int i2, boolean z2) {
        if (context != null) {
            Preconditions.checkArgumentInRange(i2, 1, 1000, "weight");
            if (typeface == null) {
                typeface = Typeface.DEFAULT;
            }
            return sTypefaceCompatImpl.createWeightStyle(context, typeface, i2, z2);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static Typeface createFromResourcesFontFile(Context context, Resources resources, int i2, String str, int i3) {
        return createFromResourcesFontFile(context, resources, i2, str, 0, i3);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static Typeface createFromResourcesFamilyXml(Context context, FontResourcesParserCompat.FamilyResourceEntry familyResourceEntry, Resources resources, int i2, int i3, ResourcesCompat.FontCallback fontCallback, Handler handler, boolean z2) {
        return createFromResourcesFamilyXml(context, familyResourceEntry, resources, i2, null, 0, i3, fontCallback, handler, z2);
    }
}
