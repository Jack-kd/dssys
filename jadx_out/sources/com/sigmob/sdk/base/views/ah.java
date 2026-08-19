package com.sigmob.sdk.base.views;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.logger.SigmobLog;

/* loaded from: classes4.dex */
public class ah extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    int f36770a;

    /* renamed from: b, reason: collision with root package name */
    boolean f36771b;

    /* renamed from: c, reason: collision with root package name */
    private final w f36772c;

    /* renamed from: d, reason: collision with root package name */
    private final w f36773d;

    /* renamed from: e, reason: collision with root package name */
    private int f36774e;

    public ah(Context context) {
        super(context);
        this.f36770a = 0;
        this.f36771b = false;
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        this.f36772c = new w(context);
        w wVar = new w(context);
        this.f36773d = wVar;
        setLayoutParams(layoutParams);
        int i2 = this.f36770a;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i2, i2);
        layoutParams2.addRule(9);
        layoutParams2.addRule(20);
        wVar.setId(ClientMetadata.generateViewId());
        addView(wVar, layoutParams2);
    }

    public void a(int i2) {
        this.f36774e = i2;
        if (!this.f36771b) {
            if (i2 > 0) {
                this.f36773d.setText(String.valueOf(i2));
            }
        } else if (i2 > 0) {
            this.f36772c.setText(com.sigmob.sdk.base.k.d(Integer.valueOf(i2)));
            if (this.f36772c.getVisibility() != 0) {
                this.f36772c.setVisibility(0);
            }
        }
    }

    public void b() {
        if (this.f36771b) {
            return;
        }
        this.f36771b = true;
        SigmobLog.d("show skip widget");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.f36770a);
        this.f36772c.setVisibility(0);
        this.f36773d.setVisibility(8);
        w wVar = this.f36772c;
        int i2 = this.f36770a;
        wVar.setPadding((int) (i2 / 3.0f), 0, (int) (i2 / 3.0f), 0);
        int i3 = this.f36774e;
        if (i3 > 0) {
            this.f36772c.setText(com.sigmob.sdk.base.k.d(Integer.valueOf(i3)));
        } else {
            this.f36772c.setText(com.sigmob.sdk.base.k.i());
        }
        addView(this.f36772c, layoutParams);
    }

    public int getTime() {
        return this.f36774e;
    }

    public boolean a() {
        return this.f36771b;
    }
}
