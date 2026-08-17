package com.kwad.library.b.b;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import java.io.InputStream;

/* loaded from: classes4.dex */
public final class a extends c {
    private Resources aDN;

    public a(Resources resources, Resources resources2) {
        super(resources2);
        this.aDN = resources;
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final XmlResourceParser getAnimation(int i2) {
        try {
            return super.getAnimation(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getAnimation(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final boolean getBoolean(int i2) {
        try {
            return super.getBoolean(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getBoolean(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final int getColor(int i2) {
        try {
            return super.getColor(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getColor(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final ColorStateList getColorStateList(int i2) {
        try {
            return super.getColorStateList(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getColorStateList(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final float getDimension(int i2) {
        try {
            return super.getDimension(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getDimension(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final int getDimensionPixelOffset(int i2) {
        try {
            return super.getDimensionPixelOffset(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getDimensionPixelOffset(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final int getDimensionPixelSize(int i2) {
        try {
            return super.getDimensionPixelSize(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getDimensionPixelSize(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final Drawable getDrawable(int i2) {
        try {
            return super.getDrawable(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getDrawable(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final Drawable getDrawableForDensity(int i2, int i3) {
        try {
            return super.getDrawableForDensity(i2, i3);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getDrawableForDensity(i2, i3);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    @TargetApi(26)
    public final Typeface getFont(int i2) {
        try {
            return super.getFont(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getFont(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final float getFraction(int i2, int i3, int i4) {
        try {
            return super.getFraction(i2, i3, i4);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getFraction(i2, i3, i4);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final int[] getIntArray(int i2) {
        try {
            return super.getIntArray(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getIntArray(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final int getInteger(int i2) {
        try {
            return super.getInteger(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getInteger(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final XmlResourceParser getLayout(int i2) {
        try {
            return super.getLayout(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getLayout(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final Movie getMovie(int i2) {
        try {
            return super.getMovie(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getMovie(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final String getQuantityString(int i2, int i3) {
        try {
            return super.getQuantityString(i2, i3);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getQuantityString(i2, i3);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final CharSequence getQuantityText(int i2, int i3) {
        try {
            return super.getQuantityText(i2, i3);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getQuantityText(i2, i3);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final String getResourceName(int i2) {
        try {
            return super.getResourceName(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getResourceName(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final String getString(int i2) {
        try {
            return super.getString(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getString(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final String[] getStringArray(int i2) {
        try {
            return super.getStringArray(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getStringArray(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final CharSequence getText(int i2) {
        try {
            return super.getText(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getText(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final CharSequence[] getTextArray(int i2) {
        try {
            return super.getTextArray(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getTextArray(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final void getValue(int i2, TypedValue typedValue, boolean z2) throws Resources.NotFoundException {
        try {
            super.getValue(i2, typedValue, z2);
        } catch (Resources.NotFoundException unused) {
            this.aDN.getValue(i2, typedValue, z2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final void getValueForDensity(int i2, int i3, TypedValue typedValue, boolean z2) throws Resources.NotFoundException {
        try {
            super.getValueForDensity(i2, i3, typedValue, z2);
        } catch (Resources.NotFoundException unused) {
            this.aDN.getValueForDensity(i2, i3, typedValue, z2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final XmlResourceParser getXml(int i2) {
        try {
            return super.getXml(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getXml(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final TypedArray obtainTypedArray(int i2) {
        try {
            return super.obtainTypedArray(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.obtainTypedArray(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final InputStream openRawResource(int i2) {
        try {
            return super.openRawResource(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.openRawResource(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final AssetFileDescriptor openRawResourceFd(int i2) {
        try {
            return super.openRawResourceFd(i2);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.openRawResourceFd(i2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    @TargetApi(23)
    public final int getColor(int i2, Resources.Theme theme) {
        try {
            return super.getColor(i2, theme);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getColor(i2, theme);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    @TargetApi(23)
    public final ColorStateList getColorStateList(int i2, Resources.Theme theme) {
        try {
            return super.getColorStateList(i2, theme);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getColorStateList(i2, theme);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    @TargetApi(21)
    public final Drawable getDrawable(int i2, Resources.Theme theme) {
        try {
            return super.getDrawable(i2, theme);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getDrawable(i2, theme);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    @TargetApi(21)
    public final Drawable getDrawableForDensity(int i2, int i3, Resources.Theme theme) {
        try {
            return super.getDrawableForDensity(i2, i3, theme);
        } catch (Exception unused) {
            return this.aDN.getDrawableForDensity(i2, i3, theme);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final String getQuantityString(int i2, int i3, Object... objArr) {
        try {
            return super.getQuantityString(i2, i3, objArr);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getQuantityString(i2, i3, objArr);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final String getString(int i2, Object... objArr) {
        try {
            return super.getString(i2, objArr);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getString(i2, objArr);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final CharSequence getText(int i2, CharSequence charSequence) {
        try {
            return super.getText(i2, charSequence);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.getText(i2, charSequence);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final void getValue(String str, TypedValue typedValue, boolean z2) throws Resources.NotFoundException {
        try {
            super.getValue(str, typedValue, z2);
        } catch (Resources.NotFoundException unused) {
            this.aDN.getValue(str, typedValue, z2);
        }
    }

    @Override // com.kwad.library.b.b.c, android.content.res.Resources
    public final InputStream openRawResource(int i2, TypedValue typedValue) {
        try {
            return super.openRawResource(i2, typedValue);
        } catch (Resources.NotFoundException unused) {
            return this.aDN.openRawResource(i2, typedValue);
        }
    }
}
