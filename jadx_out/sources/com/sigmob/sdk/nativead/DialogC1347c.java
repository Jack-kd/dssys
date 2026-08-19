package com.sigmob.sdk.nativead;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.czhj.sdk.common.utils.Dips;
import com.sigmob.sdk.R;

/* renamed from: com.sigmob.sdk.nativead.c, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class DialogC1347c extends Dialog {

    /* renamed from: a, reason: collision with root package name */
    private final String f38393a;

    public DialogC1347c(Context context, String str) {
        super(context, com.sigmob.sdk.base.k.e());
        this.f38393a = str;
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getWindow() == null) {
            return;
        }
        setContentView(R.layout.sig_fullscreen_layout);
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        findViewById(R.id.dialog_root).setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.nativead.N
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f38290b.b(view);
            }
        });
        TextView textView = (TextView) findViewById(R.id.dialog_text);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.nativead.O
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f38293b.a(view);
            }
        });
        textView.setText(this.f38393a);
        textView.requestFocus();
        a();
    }

    private void a() {
        int i2;
        Window window = getWindow();
        Context context = getContext();
        if (window == null) {
            return;
        }
        window.setGravity(17);
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i3 = context.getResources().getDisplayMetrics().widthPixels;
        int i4 = context.getResources().getDisplayMetrics().heightPixels;
        int iDipsToIntPixels = Dips.dipsToIntPixels(0.0f, context);
        int i5 = -1;
        if (i4 > i3) {
            i2 = -1;
            i5 = i3 - iDipsToIntPixels;
        } else {
            i2 = i4 - iDipsToIntPixels;
        }
        attributes.width = i5;
        attributes.height = i2;
        window.setAttributes(attributes);
        int iG = com.sigmob.sdk.base.k.g();
        if (iG <= 0) {
            return;
        }
        window.setWindowAnimations(iG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        dismiss();
    }
}
