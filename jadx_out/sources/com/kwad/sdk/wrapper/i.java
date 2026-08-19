package com.kwad.sdk.wrapper;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes4.dex */
public final class i extends Resources {
    private final Resources aDN;

    public i(Resources resources, Resources resources2) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.aDN = resources2;
    }

    private static boolean aF(String str, String str2) {
        return TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !str.startsWith("ksad_") || !"com.kwad.dy.sdk".equals(str2);
    }

    private static boolean gr(int i2) {
        StringBuilder sb = new StringBuilder("0x");
        sb.append(Integer.toHexString(i2));
        return !sb.toString().startsWith("0x60");
    }

    @Override // android.content.res.Resources
    @NonNull
    public final XmlResourceParser getAnimation(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getAnimation id: 0x#" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getAnimation(i2) : super.getAnimation(i2);
    }

    @Override // android.content.res.Resources
    public final boolean getBoolean(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getBoolean id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getBoolean(i2) : super.getBoolean(i2);
    }

    @Override // android.content.res.Resources
    @Deprecated
    public final int getColor(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getColor id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getColor(i2) : super.getColor(i2);
    }

    @Override // android.content.res.Resources
    @NonNull
    @RequiresApi(api = 23)
    public final ColorStateList getColorStateList(int i2, @Nullable Resources.Theme theme) {
        try {
            com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getColorStateList: 0x#" + Integer.toHexString(i2));
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.e("KSDY/KSResource", Log.getStackTraceString(e2));
        }
        return gr(i2) ? this.aDN.getColorStateList(i2, theme) : super.getColorStateList(i2, theme);
    }

    @Override // android.content.res.Resources
    public final float getDimension(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getDimension id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getDimension(i2) : super.getDimension(i2);
    }

    @Override // android.content.res.Resources
    public final int getDimensionPixelOffset(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getDimensionPixelOffset id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getDimensionPixelOffset(i2) : super.getDimensionPixelOffset(i2);
    }

    @Override // android.content.res.Resources
    public final int getDimensionPixelSize(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getDimensionPixelSize id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getDimensionPixelSize(i2) : super.getDimensionPixelSize(i2);
    }

    @Override // android.content.res.Resources
    public final DisplayMetrics getDisplayMetrics() {
        return super.getDisplayMetrics();
    }

    @Override // android.content.res.Resources
    @Deprecated
    public final Drawable getDrawable(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getDrawable id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getDrawable(i2) : super.getDrawable(i2);
    }

    @Override // android.content.res.Resources
    @Nullable
    @Deprecated
    public final Drawable getDrawableForDensity(int i2, int i3) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getDrawableForDensity id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getDrawableForDensity(i2, i3) : super.getDrawableForDensity(i2, i3);
    }

    @Override // android.content.res.Resources
    @RequiresApi(api = 29)
    public final float getFloat(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getFloat id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getFloat(i2) : super.getFloat(i2);
    }

    @Override // android.content.res.Resources
    @NonNull
    @RequiresApi(api = 26)
    public final Typeface getFont(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getFont id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getFont(i2) : super.getFont(i2);
    }

    @Override // android.content.res.Resources
    public final float getFraction(int i2, int i3, int i4) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getFraction id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getFraction(i2, i3, i4) : super.getFraction(i2, i3, i4);
    }

    @Override // android.content.res.Resources
    public final int getIdentifier(String str, String str2, String str3) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getIdentifier id: 0x# name:" + str + " :defPackage" + str3);
        return aF(str, str3) ? this.aDN.getIdentifier(str, str2, str3) : super.getIdentifier(str, str2, str3);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final int[] getIntArray(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getIntArray id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getIntArray(i2) : super.getIntArray(i2);
    }

    @Override // android.content.res.Resources
    public final int getInteger(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getInteger id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getInteger(i2) : super.getInteger(i2);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final XmlResourceParser getLayout(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getLayout id: 0x#" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getLayout(i2) : super.getLayout(i2);
    }

    @Override // android.content.res.Resources
    @Deprecated
    public final Movie getMovie(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getMovie id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getMovie(i2) : super.getMovie(i2);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final String getQuantityString(int i2, int i3) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getQuantityString id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getQuantityString(i2, i3) : super.getQuantityString(i2, i3);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final CharSequence getQuantityText(int i2, int i3) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getQuantityText id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getQuantityText(i2, i3) : super.getQuantityText(i2, i3);
    }

    @Override // android.content.res.Resources
    public final String getResourceEntryName(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getResourceEntryName id: 0x#" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getResourceEntryName(i2) : super.getResourceEntryName(i2);
    }

    @Override // android.content.res.Resources
    public final String getResourceName(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getResourceName id: 0x#" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getResourceName(i2) : super.getResourceName(i2);
    }

    @Override // android.content.res.Resources
    public final String getResourcePackageName(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getResourcePackageName id: 0x#" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getResourcePackageName(i2) : super.getResourcePackageName(i2);
    }

    @Override // android.content.res.Resources
    public final String getResourceTypeName(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getResourceTypeName id: 0x#" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getResourceTypeName(i2) : super.getResourceTypeName(i2);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final String getString(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getString id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getString(i2) : super.getString(i2);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final String[] getStringArray(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getStringArray id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getStringArray(i2) : super.getStringArray(i2);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final CharSequence getText(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getText id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getText(i2) : super.getText(i2);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final CharSequence[] getTextArray(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getTextArray id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getTextArray(i2) : super.getTextArray(i2);
    }

    @Override // android.content.res.Resources
    public final void getValue(int i2, TypedValue typedValue, boolean z2) throws Resources.NotFoundException {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getValue id: 0x#" + Integer.toHexString(i2));
        if (gr(i2)) {
            this.aDN.getValue(i2, typedValue, z2);
        } else {
            super.getValue(i2, typedValue, z2);
        }
    }

    @Override // android.content.res.Resources
    public final void getValueForDensity(int i2, int i3, TypedValue typedValue, boolean z2) throws Resources.NotFoundException {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getValueForDensity id: 0x#" + Integer.toHexString(i2));
        if (gr(i2)) {
            this.aDN.getValueForDensity(i2, i3, typedValue, z2);
        } else {
            super.getValueForDensity(i2, i3, typedValue, z2);
        }
    }

    @Override // android.content.res.Resources
    @NonNull
    public final XmlResourceParser getXml(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getXml id: 0x#" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.getXml(i2) : super.getXml(i2);
    }

    @Override // android.content.res.Resources
    public final TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return super.obtainAttributes(attributeSet, iArr);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final TypedArray obtainTypedArray(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "obtainTypedArray id: #0x" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.obtainTypedArray(i2) : super.obtainTypedArray(i2);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final InputStream openRawResource(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "openRawResource id: 0x#" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.openRawResource(i2) : super.openRawResource(i2);
    }

    @Override // android.content.res.Resources
    public final AssetFileDescriptor openRawResourceFd(int i2) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "openRawResourceFd id: 0x#" + Integer.toHexString(i2));
        return gr(i2) ? this.aDN.openRawResourceFd(i2) : super.openRawResourceFd(i2);
    }

    @Override // android.content.res.Resources
    public final void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        super.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override // android.content.res.Resources
    public final void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        super.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override // android.content.res.Resources
    public final void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
    }

    @Override // android.content.res.Resources
    @RequiresApi(api = 23)
    public final int getColor(int i2, @Nullable Resources.Theme theme) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getMovie id: #0x" + Integer.toHexString(i2));
        if (gr(i2)) {
            return this.aDN.getColor(i2, theme);
        }
        return super.getColor(i2, theme);
    }

    @Override // android.content.res.Resources
    public final Drawable getDrawable(int i2, @Nullable Resources.Theme theme) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getDrawable id: #0x" + Integer.toHexString(i2));
        if (gr(i2)) {
            return this.aDN.getDrawable(i2);
        }
        return super.getDrawable(i2, theme);
    }

    @Override // android.content.res.Resources
    @Nullable
    @RequiresApi(api = 21)
    public final Drawable getDrawableForDensity(int i2, int i3, @Nullable Resources.Theme theme) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getDrawable id: #0x" + Integer.toHexString(i2));
        if (gr(i2)) {
            return this.aDN.getDrawableForDensity(i2, i3, theme);
        }
        return super.getDrawableForDensity(i2, i3, theme);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final String getQuantityString(int i2, int i3, Object... objArr) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getQuantityString id: #0x" + Integer.toHexString(i2));
        if (gr(i2)) {
            return this.aDN.getQuantityString(i2, i3, objArr);
        }
        return super.getQuantityString(i2, i3, objArr);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final String getString(int i2, Object... objArr) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getString id: #0x" + Integer.toHexString(i2));
        if (gr(i2)) {
            return this.aDN.getString(i2, objArr);
        }
        return super.getString(i2, objArr);
    }

    @Override // android.content.res.Resources
    public final CharSequence getText(int i2, CharSequence charSequence) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getText id: #0x" + Integer.toHexString(i2));
        if (gr(i2)) {
            return this.aDN.getText(i2, charSequence);
        }
        return super.getText(i2, charSequence);
    }

    @Override // android.content.res.Resources
    public final void getValue(String str, TypedValue typedValue, boolean z2) throws Resources.NotFoundException {
        int identifier = getIdentifier(str, "string", null);
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getValue id: 0x#" + Integer.toHexString(identifier));
        if (gr(identifier)) {
            this.aDN.getValue(str, typedValue, z2);
        } else {
            super.getValue(str, typedValue, z2);
        }
    }

    @Override // android.content.res.Resources
    @NonNull
    public final InputStream openRawResource(int i2, TypedValue typedValue) {
        com.kwad.sdk.core.d.c.d("KSDY/KSResource", "openRawResource id: 0x#" + Integer.toHexString(i2));
        if (gr(i2)) {
            return this.aDN.openRawResource(i2, typedValue);
        }
        return super.openRawResource(i2, typedValue);
    }

    @Override // android.content.res.Resources
    @NonNull
    public final ColorStateList getColorStateList(int i2) {
        try {
            com.kwad.sdk.core.d.c.d("KSDY/KSResource", "getColorStateList: 0x#" + Integer.toHexString(i2));
        } catch (Exception e2) {
            com.kwad.sdk.core.d.c.e("KSDY/KSResource", Log.getStackTraceString(e2));
        }
        if (gr(i2)) {
            return this.aDN.getColorStateList(i2);
        }
        return super.getColorStateList(i2);
    }
}
