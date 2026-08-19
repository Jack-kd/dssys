package com.fl.saas.adx.base.inner;

import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.fl.saas.InterfaceC1164b1;

/* loaded from: classes3.dex */
public class ClickSpannable {
    private InterfaceC1164b1 nextCondition;
    private final SpannableStringBuilder spannable = new SpannableStringBuilder();
    private String separator = " ";
    private int genericColor = -1;

    private void addSeparator() {
        if (this.spannable.length() <= 0 || this.spannable.toString().endsWith(this.separator)) {
            return;
        }
        this.spannable.append((CharSequence) this.separator);
    }

    public SpannableStringBuilder build() {
        return this.spannable;
    }

    public ClickSpannable nextCondition(InterfaceC1164b1 interfaceC1164b1) {
        this.nextCondition = interfaceC1164b1;
        return this;
    }

    public ClickSpannable setGenericColor(@ColorInt int i2) {
        this.genericColor = i2;
        return this;
    }

    public ClickSpannable setSeparator(String str) {
        this.separator = str;
        return this;
    }

    public ClickSpannable setText(String... strArr) {
        int length = strArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                addSeparator();
                for (String str : strArr) {
                    this.spannable.append((CharSequence) str);
                }
            } else {
                if (TextUtils.isEmpty(strArr[i2])) {
                    break;
                }
                i2++;
            }
        }
        return this;
    }

    public ClickSpannable setTextClick(String str, Runnable runnable) {
        return setTextClick(str, false, runnable);
    }

    public ClickSpannable setTextClick(String str, final boolean z2, final Runnable runnable) {
        if (!TextUtils.isEmpty(str)) {
            InterfaceC1164b1 interfaceC1164b1 = this.nextCondition;
            this.nextCondition = null;
            if (interfaceC1164b1 == null || interfaceC1164b1.a() == Boolean.TRUE) {
                addSeparator();
                int length = this.spannable.length();
                this.spannable.append((CharSequence) str);
                int length2 = this.spannable.length();
                if (runnable != null) {
                    this.spannable.setSpan(new ClickableSpan() { // from class: com.fl.saas.adx.base.inner.ClickSpannable.1
                        @Override // android.text.style.ClickableSpan
                        public void onClick(@NonNull View view) {
                            runnable.run();
                        }

                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(@NonNull TextPaint textPaint) {
                            super.updateDrawState(textPaint);
                            if (z2) {
                                return;
                            }
                            textPaint.setUnderlineText(false);
                            textPaint.setColor(ClickSpannable.this.genericColor);
                        }
                    }, length, length2, 33);
                }
            }
        }
        return this;
    }
}
