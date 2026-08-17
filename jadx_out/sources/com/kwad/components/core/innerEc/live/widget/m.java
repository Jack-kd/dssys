package com.kwad.components.core.innerEc.live.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;

/* loaded from: classes4.dex */
public final class m {

    @NonNull
    private final SpannableStringBuilder aaf;
    private boolean aag = true;
    private Context mContext;

    public static class a {

        @ColorInt
        private int Fx;

        @NonNull
        private CharSequence aaj;

        @ColorInt
        private int aak;
        private int aal;
        private boolean aam;
        private Typeface aan;
        private View.OnClickListener aao;
        private Context mContext;

        public a(@NonNull CharSequence charSequence, Context context) {
            this.aaj = charSequence;
            this.mContext = context;
        }

        private a bl(@ColorInt int i2) {
            this.aak = i2;
            return this;
        }

        private a bn(@ColorInt int i2) {
            this.Fx = i2;
            return this;
        }

        public final a bk(@ColorRes int i2) {
            bl(ContextCompat.getColor(this.mContext, i2));
            return this;
        }

        public final a bm(@ColorRes int i2) {
            if (i2 != 0) {
                bn(ContextCompat.getColor(this.mContext, i2));
            }
            return this;
        }

        public final int length() {
            return this.aaj.length();
        }
    }

    public m(Context context, @Nullable SpannableStringBuilder spannableStringBuilder) {
        this.aaf = spannableStringBuilder;
        this.mContext = context;
    }

    private m b(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return this;
        }
        this.aaf.append(charSequence);
        return this;
    }

    private int length() {
        return this.aaf.length();
    }

    public final m a(@Nullable final a aVar) {
        if (aVar != null && !TextUtils.isEmpty(aVar.aaj)) {
            b(aVar.aaj);
            int length = length();
            int length2 = length - aVar.length();
            if (aVar.aak != 0) {
                a(new ForegroundColorSpan(aVar.aak) { // from class: com.kwad.components.core.innerEc.live.widget.m.1
                    @Override // android.text.style.ForegroundColorSpan, android.text.style.CharacterStyle
                    public final void updateDrawState(@NonNull TextPaint textPaint) {
                        super.updateDrawState(textPaint);
                        if (aVar.aam) {
                            textPaint.setFakeBoldText(true);
                        }
                        if (aVar.aan != null) {
                            textPaint.setTypeface(aVar.aan);
                        }
                    }
                }, length2, length);
            }
            if (aVar.Fx != 0) {
                o oVar = new o(3.0f, 0.0f, 3.0f, aVar.Fx);
                oVar.aO(true);
                a(oVar, length2, length);
            }
            if (aVar.aal > 0) {
                a(new AbsoluteSizeSpan(aVar.aal), length2, length);
            }
            if (aVar.aao != null) {
                a(new n(aVar.aao), length2, length);
            }
        }
        return this;
    }

    public final SpannableStringBuilder ti() {
        return this.aaf;
    }

    private m a(Object obj, int i2, int i3) {
        this.aaf.setSpan(obj, i2, i3, 33);
        return this;
    }
}
