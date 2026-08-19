package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.widget.BZVideoView;

/* loaded from: classes2.dex */
public class fj extends k3 {
    public fj(Context context, ViewGroup viewGroup, View view, String str) {
        viewGroup.setPadding(0, 0, 0, 0);
        this.f14701a = new gj(context, viewGroup, view, str);
    }

    public void a(int i2, int i3, int i4, int i5) {
    }

    public void b(View.OnTouchListener onTouchListener) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof gj)) {
            ((gj) l3Var).b(onTouchListener);
        }
    }

    public void x() {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof gj)) {
            ((gj) l3Var).Q();
        }
    }

    public BZVideoView y() {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof gj)) {
            return ((gj) l3Var).R();
        }
        return null;
    }

    public void a(p1 p1Var) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof gj)) {
            ((gj) l3Var).a(p1Var);
        }
    }

    public void a(cm cmVar) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof gj)) {
            ((gj) l3Var).a(cmVar);
        }
    }

    public void a(View view) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof gj)) {
            ((gj) l3Var).a(view);
        }
    }

    public void a(int i2, int i3) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof gj)) {
            ((gj) l3Var).b(i2, i3);
        }
    }

    public void a(View.OnTouchListener onTouchListener) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof gj)) {
            ((gj) l3Var).a(onTouchListener);
        }
    }

    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i2, int i3) {
        l3 l3Var = this.f14701a;
        if (l3Var != null && (l3Var instanceof gj)) {
            h5 h5Var = new h5();
            if (!TextUtils.isEmpty(str)) {
                h5Var.g(str);
            }
            if (!TextUtils.isEmpty(str2)) {
                h5Var.h(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                h5Var.e(str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                h5Var.f(str4);
            }
            if (!TextUtils.isEmpty(str5)) {
                h5Var.c(str5);
            }
            if (!TextUtils.isEmpty(str6)) {
                h5Var.d(str6);
            }
            if (!TextUtils.isEmpty(str7)) {
                h5Var.a(str7);
            }
            if (!TextUtils.isEmpty(str8)) {
                h5Var.b(str8);
            }
            h5Var.a(i3);
            ((gj) this.f14701a).a(h5Var, i2);
        }
    }
}
