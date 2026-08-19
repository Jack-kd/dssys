package com.byazt.xse;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.pg.r;
import com.byazt.ymw.ud;
import com.byazt.zn.xh;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, 718, 719})
/* loaded from: classes3.dex */
public class TTCountdownViewForBtn extends LinearLayout implements r.hp, j {

    /* renamed from: a, reason: collision with root package name */
    public AtomicBoolean f27794a;
    public int eb;
    public final ud hp;

    /* renamed from: j, reason: collision with root package name */
    public TextView f27795j;
    public TextView jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f27796l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f27797q;

    /* renamed from: s, reason: collision with root package name */
    public int f27798s;

    /* renamed from: w, reason: collision with root package name */
    public hp f27799w;

    public TTCountdownViewForBtn(Context context) {
        super(context);
        this.f27794a = new AtomicBoolean(true);
        this.hp = new ud(Looper.getMainLooper(), this);
        this.eb = 5;
        this.f27798s = 1;
        this.f27797q = false;
        this.f27796l = context;
        j();
    }

    private void a() {
        try {
            if (!this.f27797q && this.jx != null) {
                eb();
                int i2 = this.f27798s;
                if (i2 < this.eb + 1) {
                    this.f27798s = i2 + 1;
                    this.hp.sendEmptyMessageDelayed(1, 1000L);
                } else {
                    hp hpVar = this.f27799w;
                    if (hpVar != null) {
                        hpVar.hp();
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    private void eb() {
        if (this.jx != null) {
            StringBuilder sb = new StringBuilder();
            int i2 = this.f27798s;
            int i3 = this.eb;
            sb.append(i2 <= i3 ? i3 - i2 : 0);
            sb.append("s");
            this.jx.setText(sb.toString());
        }
    }

    private void j() {
        setOrientation(0);
        setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#99333333"));
        int iJx = xh.jx(this.f27796l, 14.0f);
        gradientDrawable.setCornerRadius(iJx);
        int i2 = iJx * 2;
        gradientDrawable.setSize(i2, i2);
        setBackground(gradientDrawable);
        this.jx = new TextView(this.f27796l);
        int iJx2 = xh.jx(this.f27796l, 6.0f);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        this.jx.setTextColor(-1);
        this.jx.setTextSize(2, 14.0f);
        addView(this.jx, layoutParams);
        View view = new View(this.f27796l);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.width = xh.jx(this.f27796l, 1.0f);
        layoutParams2.height = xh.jx(this.f27796l, 12.0f);
        layoutParams2.leftMargin = iJx2;
        layoutParams2.rightMargin = iJx2;
        view.setBackgroundColor(-1);
        addView(view, layoutParams2);
        this.f27795j = new TextView(this.f27796l);
        ViewGroup.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        this.f27795j.setTextColor(-1);
        this.f27795j.setTextSize(2, 14.0f);
        this.f27795j.setText("跳过");
        addView(this.f27795j, layoutParams3);
    }

    private void w() {
        ud udVar = this.hp;
        if (udVar != null) {
            udVar.removeMessages(1);
        }
        this.f27798s = 1;
    }

    @Override // com.byazt.xse.j
    public View getView() {
        return this;
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        if (message.what == 1) {
            a();
        }
    }

    @Override // com.byazt.xse.j
    public void hp() {
        if (this.f27797q) {
            return;
        }
        w();
        a();
    }

    public void jx() {
        try {
            a();
        } catch (Throwable unused) {
        }
    }

    public void l() {
        try {
            ud udVar = this.hp;
            if (udVar != null) {
                udVar.removeMessages(1);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        w();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        this.f27794a.set(z2);
        if (this.f27797q) {
            return;
        }
        if (this.f27794a.get()) {
            jx();
        } else {
            l();
        }
    }

    @Override // com.byazt.xse.j
    public void setCountDownTime(int i2) {
        this.eb = i2;
        eb();
        w();
    }

    @Override // com.byazt.xse.j
    public void setCountdownListener(hp hpVar) {
        this.f27799w = hpVar;
        this.f27794a.get();
    }

    @Override // com.byazt.xse.j
    public void hp(boolean z2) {
        this.f27797q = z2;
        if (z2) {
            w();
        }
    }
}
