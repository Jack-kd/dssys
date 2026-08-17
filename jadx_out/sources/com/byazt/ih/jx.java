package com.byazt.ih;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.byazt.nk.TTDislikeCommentLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 863, 30})
/* loaded from: classes.dex */
public class jx extends Dialog {
    public TTDislikeCommentLayout hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.jlt.l f21094j;
    public com.byazt.bl.l jx;

    /* renamed from: l, reason: collision with root package name */
    public final List<com.byazt.jlt.hp> f21095l;

    /* renamed from: w, reason: collision with root package name */
    public EditText f21096w;

    public jx(Context context, com.byazt.bl.l lVar) {
        super(context);
        this.f21095l = new ArrayList();
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.jx = lVar;
    }

    private void w() {
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        Window window = getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -2;
        window.setAttributes(attributes);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        jx();
        super.dismiss();
        com.byazt.jlt.l lVar = this.f21094j;
        if (lVar != null) {
            lVar.hp();
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.byazt.vi.j.hp(getContext()));
        TTDislikeCommentLayout tTDislikeCommentLayout = (TTDislikeCommentLayout) findViewById(2047279090);
        this.hp = tTDislikeCommentLayout;
        hp(tTDislikeCommentLayout);
        w();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        l();
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 80;
        window.setAttributes(attributes);
    }

    private void hp(View view) {
        EditText editText = (EditText) view.findViewById(2047279085);
        this.f21096w = editText;
        hp(editText);
        final TextView textView = (TextView) view.findViewById(2047279086);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ih.jx.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                String string = jx.this.f21096w.getText().toString();
                if (string.length() <= 0 || string.isEmpty()) {
                    return;
                }
                Iterator it = jx.this.f21095l.iterator();
                while (it.hasNext()) {
                    if (((com.byazt.jlt.hp) it.next()).hp(string, jx.this)) {
                        return;
                    }
                }
                com.byazt.bl.jx jxVar = new com.byazt.bl.jx("0:00", string);
                com.byazt.ruu.hp.hp().hp(jx.this.jx, jxVar);
                jx.this.f21094j.hp(0, jxVar);
                jx.this.dismiss();
            }
        });
        ((ImageView) view.findViewById(2047279088)).setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ih.jx.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                jx.this.dismiss();
            }
        });
        final TextView textView2 = (TextView) findViewById(2047279084);
        this.f21096w.addTextChangedListener(new TextWatcher() { // from class: com.byazt.ih.jx.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                int iRound = Math.round(charSequence.length());
                textView2.setText(String.valueOf(iRound));
                if (iRound > 0) {
                    textView.setTextColor(-16777216);
                    textView.setClickable(true);
                } else {
                    textView.setTextColor(-7829368);
                    textView.setClickable(false);
                }
            }
        });
    }

    public String j() {
        EditText editText = this.f21096w;
        return editText != null ? editText.getText().toString() : "";
    }

    public void jx() {
        EditText editText;
        InputMethodManager inputMethodManager;
        TTDislikeCommentLayout tTDislikeCommentLayout = this.hp;
        if (tTDislikeCommentLayout == null || (editText = (EditText) tTDislikeCommentLayout.findViewById(2047279085)) == null || (inputMethodManager = (InputMethodManager) editText.getContext().getSystemService("input_method")) == null) {
            return;
        }
        inputMethodManager.hideSoftInputFromWindow(this.hp.getWindowToken(), 0);
    }

    public void l() {
        EditText editText;
        TTDislikeCommentLayout tTDislikeCommentLayout = this.hp;
        if (tTDislikeCommentLayout == null || (editText = (EditText) tTDislikeCommentLayout.findViewById(2047279085)) == null) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) editText.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(this.hp.getWindowToken(), 0);
        }
        editText.clearFocus();
    }

    public static void hp(EditText editText) {
        editText.setFilters(new InputFilter[]{new InputFilter() { // from class: com.byazt.ih.jx.4
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i2, int i3, Spanned spanned, int i4, int i5) {
                while (i2 < i3) {
                    int type = Character.getType(charSequence.charAt(i2));
                    if (type == 19 || type == 28) {
                        return "";
                    }
                    i2++;
                }
                return null;
            }
        }, new InputFilter.LengthFilter(500)});
    }

    public void hp(com.byazt.jlt.hp hpVar) {
        this.f21095l.add(hpVar);
    }

    public void hp(com.byazt.bl.l lVar) {
        if (lVar == null) {
            return;
        }
        this.jx = lVar;
    }

    public void hp() {
        EditText editText;
        TTDislikeCommentLayout tTDislikeCommentLayout = this.hp;
        if (tTDislikeCommentLayout == null || (editText = (EditText) tTDislikeCommentLayout.findViewById(2047279085)) == null) {
            return;
        }
        editText.setText((CharSequence) null);
    }

    public void hp(com.byazt.jlt.l lVar) {
        this.f21094j = lVar;
    }
}
