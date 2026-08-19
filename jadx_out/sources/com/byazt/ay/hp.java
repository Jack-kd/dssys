package com.byazt.ay;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.byazt.jz.sz;

@com.byazt.kj.hp(hp = {0, 1, 525, 28})
/* loaded from: classes2.dex */
public class hp extends AlertDialog {
    public Context hp;

    /* renamed from: l, reason: collision with root package name */
    public String f18369l;

    public hp(Context context, String str) {
        super(context, R.style.Theme.Dialog);
        com.byazt.vi.eb.hp(this);
        this.hp = context == null ? sz.getContext() : context;
        this.f18369l = str;
    }

    private void hp() {
        ((TextView) findViewById(2114387699)).setText(this.f18369l);
        findViewById(2114387755).setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ay.hp.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                hp.this.dismiss();
            }
        });
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.byazt.vi.a.ms(getContext()));
        hp();
    }
}
