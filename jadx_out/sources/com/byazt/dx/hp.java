package com.byazt.dx;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.byazt.f.jl;
import com.byazt.f.zy;

@com.byazt.kj.hp(hp = {0, 1, 1279, 28})
/* loaded from: classes2.dex */
public class hp extends com.byazt.f.l {
    public AlertDialog.Builder hp;

    @com.byazt.kj.hp(hp = {0, 1, 1279, 170})
    /* renamed from: com.byazt.dx.hp$hp, reason: collision with other inner class name */
    public static class C0212hp implements jl {
        public AlertDialog hp;

        public C0212hp(AlertDialog.Builder builder) {
            if (builder != null) {
                this.hp = builder.show();
            }
        }

        @Override // com.byazt.f.jl
        public void hp() {
            AlertDialog alertDialog = this.hp;
            if (alertDialog != null) {
                alertDialog.show();
            }
        }

        @Override // com.byazt.f.jl
        public boolean l() {
            AlertDialog alertDialog = this.hp;
            if (alertDialog != null) {
                return alertDialog.isShowing();
            }
            return false;
        }
    }

    public hp(Context context) {
        this.hp = new AlertDialog.Builder(context);
    }

    @Override // com.byazt.f.zy
    public zy hp(CharSequence charSequence) {
        AlertDialog.Builder builder = this.hp;
        if (builder != null) {
            builder.setTitle(charSequence);
        }
        return this;
    }

    @Override // com.byazt.f.zy
    public zy l(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = this.hp;
        if (builder != null) {
            builder.setNegativeButton(charSequence, onClickListener);
        }
        return this;
    }

    @Override // com.byazt.f.zy
    public zy hp(String str) {
        AlertDialog.Builder builder = this.hp;
        if (builder != null) {
            builder.setMessage(str);
        }
        return this;
    }

    @Override // com.byazt.f.zy
    public zy hp(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = this.hp;
        if (builder != null) {
            builder.setPositiveButton(charSequence, onClickListener);
        }
        return this;
    }

    @Override // com.byazt.f.zy
    public zy hp(DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = this.hp;
        if (builder != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        return this;
    }

    @Override // com.byazt.f.zy
    public jl hp() {
        return new C0212hp(this.hp);
    }
}
