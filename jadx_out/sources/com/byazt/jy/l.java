package com.byazt.jy;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.widget.TextView;
import com.byazt.jz.sz;
import com.byazt.pg.r;
import com.byazt.vi.a;
import com.byazt.xci.mp;
import com.byazt.xci.y;
import com.byazt.ymw.ud;
import com.byazt.zn.xh;

@com.byazt.kj.hp(hp = {0, 1, 235, 34})
/* loaded from: classes.dex */
public class l extends AlertDialog implements r.hp {

    /* renamed from: a, reason: collision with root package name */
    public TextView f21773a;

    /* renamed from: e, reason: collision with root package name */
    public boolean f21774e;
    public final String eb;
    public com.byazt.go.l hp;

    /* renamed from: j, reason: collision with root package name */
    public TextView f21775j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public final ud f21776l;

    /* renamed from: q, reason: collision with root package name */
    public long f21777q;

    /* renamed from: s, reason: collision with root package name */
    public final hp f21778s;

    /* renamed from: w, reason: collision with root package name */
    public TextView f21779w;

    public interface hp {
        void hp(Dialog dialog);

        void l(Dialog dialog);
    }

    public l(Context context, mp mpVar, hp hpVar) {
        super(context);
        this.f21776l = new ud(Looper.getMainLooper(), this);
        this.f21774e = false;
        this.jx = context;
        if (context == null) {
            this.jx = sz.getContext();
        }
        this.eb = y.a(mpVar);
        this.f21778s = hpVar;
        if (y.w(mpVar) != 3) {
            this.f21777q = y.s(mpVar);
        } else {
            this.f21774e = true;
            this.f21777q = 5L;
        }
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
        hp hpVar;
        if (message.what == 101) {
            long j2 = this.f21777q - 1;
            this.f21777q = j2;
            if (j2 > 0) {
                if (this.f21774e) {
                    xh.hp(this.f21773a, "残忍拒绝");
                } else {
                    xh.hp(this.f21773a, String.format("残忍拒绝(%1$s)", String.valueOf(j2)));
                }
                this.f21776l.sendEmptyMessageDelayed(101, 1000L);
                return;
            }
            if (this.f21774e && (hpVar = this.f21778s) != null) {
                hpVar.l(this);
            }
            hp hpVar2 = this.f21778s;
            if (hpVar2 != null) {
                hpVar2.hp(this);
            }
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(a.pu(this.jx));
        setCanceledOnTouchOutside(false);
        hp();
        this.f21776l.sendEmptyMessageDelayed(101, 1000L);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (!z2) {
            this.f21776l.removeMessages(101);
        } else {
            this.f21776l.removeMessages(101);
            this.f21776l.sendEmptyMessageDelayed(101, 1000L);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        xh.hp(this.f21775j, this.eb);
    }

    private void hp() {
        this.f21775j = (TextView) findViewById(2114387826);
        this.f21779w = (TextView) findViewById(2114387638);
        this.f21773a = (TextView) findViewById(2114387833);
        if (this.f21778s == null) {
            return;
        }
        xh.hp((View) this.f21779w, (View.OnClickListener) this.hp, "goLiveListener");
        xh.hp(this.f21773a, new View.OnClickListener() { // from class: com.byazt.jy.l.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                l.this.f21778s.hp(l.this);
            }
        }, "cancelTv");
    }

    public void hp(com.byazt.go.l lVar) {
        this.hp = lVar;
    }
}
