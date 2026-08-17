package com.byazt.ih;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.byazt.ih.w;
import com.byazt.nk.TTDislikeLayout;
import com.byazt.nk.TTDislikeScrollListView;
import com.byazt.qt.a;
import java.util.ArrayList;

@com.byazt.kj.hp(hp = {0, 1, 863, 38})
/* loaded from: classes.dex */
public class j extends Dialog {

    /* renamed from: a, reason: collision with root package name */
    public hp f21090a;
    public final boolean eb;
    public com.byazt.jlt.jx hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f21091j;
    public final com.byazt.bl.l jx;

    /* renamed from: l, reason: collision with root package name */
    public TTDislikeLayout f21092l;

    /* renamed from: w, reason: collision with root package name */
    public TextView f21093w;

    public j(Context context, com.byazt.bl.l lVar, hp hpVar) {
        super(context);
        this.f21091j = false;
        getWindow().addFlags(1024);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        this.jx = lVar;
        this.eb = lVar != null ? lVar.l() : false;
        this.f21090a = hpVar;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        com.byazt.jlt.jx jxVar = this.hp;
        if (jxVar == null || this.f21091j) {
            return;
        }
        jxVar.jx();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        setContentView(com.byazt.vi.j.hp(getContext(), this.eb), hp());
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        l();
        jx();
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            this.f21091j = false;
            com.byazt.jlt.jx jxVar = this.hp;
            if (jxVar != null) {
                jxVar.l();
            }
        } catch (Exception unused) {
        }
    }

    private void jx() {
        TTDislikeLayout tTDislikeLayout = (TTDislikeLayout) findViewById(2047279103);
        this.f21092l = tTDislikeLayout;
        hp(tTDislikeLayout);
    }

    private void l() {
        Window window = getWindow();
        if (window != null) {
            window.setGravity(17);
            window.setDimAmount(0.34f);
        }
    }

    public void hp(com.byazt.jlt.jx jxVar) {
        this.hp = jxVar;
    }

    public ViewGroup.LayoutParams hp() {
        return new ViewGroup.LayoutParams(com.byazt.ruu.hp.l().hp(getContext(), 345.0f), -2);
    }

    public void hp(com.byazt.bl.l lVar) {
        TTDislikeLayout tTDislikeLayout;
        if (lVar == null || (tTDislikeLayout = this.f21092l) == null) {
            return;
        }
        TTDislikeScrollListView tTDislikeScrollListView = (TTDislikeScrollListView) tTDislikeLayout.findViewById(2047279097);
        w wVar = (w) tTDislikeScrollListView.getAdapter();
        if (wVar != null) {
            tTDislikeScrollListView.setDislikeController(new com.byazt.ruu.l(lVar));
            wVar.hp(lVar.hp());
        }
    }

    private void hp(View view) {
        if (view == null) {
            return;
        }
        if (!this.eb) {
            TextView textView = (TextView) view.findViewById(2047279095);
            this.f21093w = textView;
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.ih.j.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (j.this.hp != null) {
                        j.this.hp.hp();
                    }
                    j.this.dismiss();
                }
            });
        }
        TTDislikeScrollListView tTDislikeScrollListView = (TTDislikeScrollListView) view.findViewById(2047279097);
        tTDislikeScrollListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.byazt.ih.j.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i2, long j2) {
                try {
                    a aVar = j.this.jx.hp().get(i2);
                    if (j.this.eb && "99:1".equals(aVar.getId())) {
                        return;
                    }
                    if (j.this.hp != null) {
                        j.this.hp.hp(i2, aVar);
                        j.this.f21091j = true;
                    }
                    j.this.dismiss();
                } catch (Throwable unused) {
                }
            }
        });
        com.byazt.bl.l lVar = this.jx;
        w wVar = new w(getContext(), lVar == null ? new ArrayList<>(0) : lVar.hp(), this.eb, this.f21090a);
        wVar.hp(new w.hp() { // from class: com.byazt.ih.j.3
            @Override // com.byazt.ih.w.hp
            public void hp(int i2, a aVar) {
                if (j.this.hp != null) {
                    j.this.hp.hp(i2, aVar);
                    j.this.f21091j = true;
                }
                j.this.dismiss();
                com.byazt.ruu.hp.hp().hp(j.this.jx, aVar);
            }
        });
        tTDislikeScrollListView.setAdapter((ListAdapter) wVar);
        com.byazt.bl.l lVar2 = this.jx;
        if (lVar2 != null) {
            tTDislikeScrollListView.setDislikeController(new com.byazt.ruu.l(lVar2));
        }
    }

    public void hp(String str) {
        TextView textView = this.f21093w;
        if (textView != null) {
            textView.setText(str);
        }
    }
}
