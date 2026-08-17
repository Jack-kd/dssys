package com.ubix.ssp.ad.e;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.TextView;
import com.ubix.ssp.ad.e.z.h;

/* loaded from: classes5.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private int f46859a = 1;

    /* renamed from: b, reason: collision with root package name */
    private String f46860b;

    public interface a {
        void a();

        void b();

        void c();

        void d();
    }

    public class b implements a {

        /* renamed from: a, reason: collision with root package name */
        private com.ubix.ssp.ad.g.k.b f46861a;

        /* renamed from: b, reason: collision with root package name */
        private h.b f46862b;

        public b() {
        }

        @Override // com.ubix.ssp.ad.e.f.a
        public void a() {
            com.ubix.ssp.ad.g.k.b bVar = this.f46861a;
            if (bVar != null) {
                bVar.i(0);
            }
            h.b bVar2 = this.f46862b;
            if (bVar2 != null) {
                bVar2.a();
            }
        }

        @Override // com.ubix.ssp.ad.e.f.a
        public void b() {
            com.ubix.ssp.ad.g.k.b bVar = this.f46861a;
            if (bVar != null) {
                bVar.b(0);
            }
            h.b bVar2 = this.f46862b;
            if (bVar2 != null) {
                bVar2.b();
            }
        }

        @Override // com.ubix.ssp.ad.e.f.a
        public void c() {
            com.ubix.ssp.ad.g.k.b bVar = this.f46861a;
            if (bVar != null) {
                bVar.f(0);
            }
            h.b bVar2 = this.f46862b;
            if (bVar2 != null) {
                bVar2.c();
            }
        }

        @Override // com.ubix.ssp.ad.e.f.a
        public void d() {
            com.ubix.ssp.ad.g.k.b bVar = this.f46861a;
            if (bVar != null) {
                bVar.b(0, null, null);
            }
        }

        public b(h.b bVar) {
            this.f46862b = bVar;
        }

        public b(com.ubix.ssp.ad.g.k.b bVar) {
            this.f46861a = bVar;
        }
    }

    public static class c extends ClickableSpan {

        /* renamed from: a, reason: collision with root package name */
        private int f46864a;

        /* renamed from: b, reason: collision with root package name */
        private com.ubix.ssp.ad.g.k.b f46865b;

        /* renamed from: c, reason: collision with root package name */
        private a f46866c;

        /* renamed from: d, reason: collision with root package name */
        private h.c f46867d;

        public c(int i2) {
            this.f46864a = i2;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            a aVar;
            int i2 = this.f46864a;
            if (i2 == 1) {
                a aVar2 = this.f46866c;
                if (aVar2 != null) {
                    aVar2.c();
                    return;
                }
                return;
            }
            if (i2 == 2) {
                a aVar3 = this.f46866c;
                if (aVar3 != null) {
                    aVar3.a();
                    return;
                }
                return;
            }
            if (i2 == 3) {
                a aVar4 = this.f46866c;
                if (aVar4 != null) {
                    aVar4.b();
                    return;
                }
                return;
            }
            if (i2 != 0 || (aVar = this.f46866c) == null) {
                return;
            }
            aVar.d();
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            textPaint.setUnderlineText(false);
        }

        public c(int i2, a aVar) {
            this.f46864a = i2;
            this.f46866c = aVar;
        }

        public c(int i2, h.c cVar) {
            this.f46864a = i2;
            this.f46867d = cVar;
        }

        public c(int i2, com.ubix.ssp.ad.g.k.b bVar) {
            this.f46864a = i2;
            this.f46865b = bVar;
        }
    }

    public f(String str) {
        this.f46860b = str;
    }

    private SpannableStringBuilder b() {
        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(this.f46860b);
        int iIndexOf = 0;
        int i2 = 10;
        while (true) {
            if (iIndexOf == -1 && i2 >= 0) {
                return spannableStringBuilderValueOf;
            }
            i2--;
            iIndexOf = this.f46860b.indexOf("丨", iIndexOf + 1);
            if (iIndexOf != -1) {
                spannableStringBuilderValueOf.setSpan(new StyleSpan(1), iIndexOf, iIndexOf + 1, 18);
            }
        }
    }

    public SpannableStringBuilder a() {
        new b();
        return b();
    }

    private SpannableStringBuilder a(b bVar) {
        SpannableStringBuilder spannableStringBuilderValueOf = SpannableStringBuilder.valueOf(this.f46860b);
        int iIndexOf = this.f46860b.indexOf("权限丨");
        int iIndexOf2 = this.f46860b.indexOf("丨隐私丨");
        int iIndexOf3 = this.f46860b.indexOf("丨功能介绍");
        spannableStringBuilderValueOf.setSpan(new c(1, bVar), iIndexOf, iIndexOf + 1, 33);
        spannableStringBuilderValueOf.setSpan(new c(2, bVar), iIndexOf2 + 1, iIndexOf2 + 3, 33);
        spannableStringBuilderValueOf.setSpan(new c(3, bVar), iIndexOf3 + 1, iIndexOf3 + 4, 33);
        int iIndexOf4 = 0;
        spannableStringBuilderValueOf.setSpan(new c(0, bVar), 0, iIndexOf, 33);
        int i2 = 10;
        while (true) {
            if (iIndexOf4 == -1 && i2 >= 0) {
                return spannableStringBuilderValueOf;
            }
            i2--;
            iIndexOf4 = this.f46860b.indexOf("丨", iIndexOf4 + 1);
            if (iIndexOf4 != -1) {
                spannableStringBuilderValueOf.setSpan(new StyleSpan(1), iIndexOf4, iIndexOf4 + 1, 18);
            }
        }
    }

    public SpannableStringBuilder a(h.b bVar) {
        return a(new b(bVar));
    }

    public SpannableStringBuilder a(com.ubix.ssp.ad.g.k.b bVar) {
        return a(new b(bVar));
    }

    public static TextView a(Context context) {
        return a(context, 0);
    }

    public static TextView a(Context context, int i2) {
        int iG = com.ubix.ssp.ad.e.a0.r.a().g(context);
        double dA = com.ubix.ssp.ad.e.a0.r.a().a(context);
        float f2 = context.getApplicationContext().getResources().getConfiguration().fontScale;
        if (f2 < 1.0f) {
            f2 = 1.0f;
        }
        int iMin = (int) Math.min(((iG / Math.sqrt(Math.exp(dA))) / f2) / 28.0d, 12.0f / f2);
        if (i2 > 0) {
            iMin -= i2;
        }
        TextView textView = new TextView(context);
        textView.setId(920101);
        textView.setGravity(80);
        textView.setTextSize(iMin);
        textView.setTextColor(-1);
        textView.setMaxLines(6);
        textView.setShadowLayer(4.0f, 0.0f, 1.0f, 1711276032);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setHighlightColor(0);
        if (i2 == 0) {
            textView.setLetterSpacing(0.1f);
            textView.setLineSpacing(2.0f, 1.2f);
        }
        return textView;
    }
}
