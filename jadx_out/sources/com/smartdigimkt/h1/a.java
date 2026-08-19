package com.smartdigimkt.h1;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.smartdigimkt.c5.k;

/* loaded from: classes5.dex */
public final class a implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f40424a;

    public a(i iVar) {
        this.f40424a = iVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            String string = textView.getTag().toString();
            i iVar = this.f40424a;
            if (TextUtils.isEmpty(iVar.f40449r)) {
                iVar.f40449r = string;
                iVar.f40450s = textView;
                textView.setTextColor(Color.parseColor("#2265FF"));
                iVar.f40450s.setBackgroundResource(k.a(textView.getContext(), "myoffer_bg_feedback_textview_pressed", "drawable"));
            } else if (TextUtils.equals(iVar.f40449r, string)) {
                TextView textView2 = iVar.f40450s;
                if (textView2 != null) {
                    textView2.setTextColor(Color.parseColor("#84879D"));
                    iVar.f40450s.setBackgroundResource(k.a(textView.getContext(), "myoffer_bg_feedback_textview", "drawable"));
                }
                iVar.f40449r = "";
                iVar.f40450s = null;
            } else {
                TextView textView3 = iVar.f40450s;
                if (textView3 != null) {
                    textView3.setTextColor(Color.parseColor("#84879D"));
                    iVar.f40450s.setBackgroundResource(k.a(textView.getContext(), "myoffer_bg_feedback_textview", "drawable"));
                }
                iVar.f40449r = string;
                iVar.f40450s = textView;
                textView.setTextColor(Color.parseColor("#2265FF"));
                iVar.f40450s.setBackgroundResource(k.a(textView.getContext(), "myoffer_bg_feedback_textview_pressed", "drawable"));
            }
            if (TextUtils.isEmpty(iVar.f40449r) && TextUtils.isEmpty(iVar.f40437f.getText().toString())) {
                iVar.f40439h.setEnabled(false);
            } else {
                iVar.f40439h.setEnabled(true);
            }
        }
    }
}
