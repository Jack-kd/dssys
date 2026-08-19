package com.byazt.ay;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 525, 45})
/* loaded from: classes2.dex */
public class e extends AlertDialog {

    /* renamed from: a, reason: collision with root package name */
    public String f18355a;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f18356e;
    public String eb;
    public hp gu;
    public TextView hp;

    /* renamed from: j, reason: collision with root package name */
    public Button f18357j;
    public Button jx;

    /* renamed from: l, reason: collision with root package name */
    public TextView f18358l;

    /* renamed from: q, reason: collision with root package name */
    public String f18359q;

    /* renamed from: s, reason: collision with root package name */
    public String f18360s;

    /* renamed from: w, reason: collision with root package name */
    public Context f18361w;

    public interface hp {
        void hp(Dialog dialog);

        void l(Dialog dialog);
    }

    public e(Context context) {
        super(context, R.style.Theme.Dialog);
        com.byazt.vi.eb.hp(this);
        this.f18361w = context;
    }

    private void l() {
        TextView textView = this.hp;
        if (textView != null) {
            textView.setText(this.f18355a);
            Drawable drawable = this.f18356e;
            if (drawable != null) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = this.f18356e.getIntrinsicHeight();
                int iJx = xh.jx(this.f18361w, 45.0f);
                if (intrinsicWidth > iJx || intrinsicWidth < iJx) {
                    intrinsicWidth = iJx;
                }
                if (intrinsicHeight > iJx || intrinsicHeight < iJx) {
                    intrinsicHeight = iJx;
                }
                this.f18356e.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
                this.hp.setCompoundDrawables(this.f18356e, null, null, null);
                this.hp.setCompoundDrawablePadding(xh.jx(this.f18361w, 10.0f));
            }
        }
        TextView textView2 = this.f18358l;
        if (textView2 != null) {
            textView2.setText(this.eb);
        }
        Button button = this.jx;
        if (button != null) {
            button.setText(this.f18360s);
        }
        Button button2 = this.f18357j;
        if (button2 != null) {
            button2.setText(this.f18359q);
        }
    }

    public e j(String str) {
        this.f18359q = str;
        return this;
    }

    public e jx(String str) {
        this.f18360s = str;
        return this;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.byazt.vi.a.su(this.f18361w));
        setCanceledOnTouchOutside(true);
        hp();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        l();
    }

    private void hp() {
        this.hp = (TextView) findViewById(2114387852);
        this.f18358l = (TextView) findViewById(2114387654);
        this.jx = (Button) findViewById(2114387751);
        this.f18357j = (Button) findViewById(2114387889);
        this.jx.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.e.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.this.dismiss();
                if (e.this.gu != null) {
                    e.this.gu.hp(e.this);
                }
            }
        });
        this.f18357j.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.e.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                e.this.dismiss();
                if (e.this.gu != null) {
                    e.this.gu.l(e.this);
                }
            }
        });
    }

    public e hp(String str) {
        this.f18355a = str;
        return this;
    }

    public e hp(Drawable drawable) {
        this.f18356e = drawable;
        return this;
    }

    public e hp(hp hpVar) {
        this.gu = hpVar;
        return this;
    }

    public e hp(DialogInterface.OnCancelListener onCancelListener) {
        setOnCancelListener(onCancelListener);
        return this;
    }

    public e l(String str) {
        this.eb = str;
        return this;
    }
}
