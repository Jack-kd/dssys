package com.byazt.v;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.umeng.commonsdk.statistics.UMErrorCode;

@com.byazt.kj.hp(hp = {0, 1, UMErrorCode.E_UM_BE_ERROR_WORK_MODE, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public boolean f26530a;

    /* renamed from: e, reason: collision with root package name */
    public int f26531e;
    public Drawable eb;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public String f26532j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public String f26533l;

    /* renamed from: q, reason: collision with root package name */
    public View f26534q;

    /* renamed from: s, reason: collision with root package name */
    public InterfaceC0391l f26535s;

    /* renamed from: w, reason: collision with root package name */
    public String f26536w;

    @com.byazt.kj.hp(hp = {0, 1, UMErrorCode.E_UM_BE_ERROR_WORK_MODE, 123})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public String f26537a;

        /* renamed from: e, reason: collision with root package name */
        public InterfaceC0391l f26538e;
        public String eb;
        public View hp;

        /* renamed from: j, reason: collision with root package name */
        public String f26539j;
        public Context jx;

        /* renamed from: l, reason: collision with root package name */
        public int f26540l;

        /* renamed from: q, reason: collision with root package name */
        public Drawable f26541q;

        /* renamed from: s, reason: collision with root package name */
        public boolean f26542s;

        /* renamed from: w, reason: collision with root package name */
        public String f26543w;

        public hp(Context context) {
            this.jx = context;
        }

        public hp hp(String str) {
            this.f26539j = str;
            return this;
        }

        public hp j(String str) {
            this.eb = str;
            return this;
        }

        public hp jx(String str) {
            this.f26537a = str;
            return this;
        }

        public hp l(String str) {
            this.f26543w = str;
            return this;
        }

        public hp hp(boolean z2) {
            this.f26542s = z2;
            return this;
        }

        public hp hp(Drawable drawable) {
            this.f26541q = drawable;
            return this;
        }

        public hp hp(InterfaceC0391l interfaceC0391l) {
            this.f26538e = interfaceC0391l;
            return this;
        }

        public hp hp(int i2) {
            this.f26540l = i2;
            return this;
        }

        public l hp() {
            return new l(this);
        }
    }

    /* renamed from: com.byazt.v.l$l, reason: collision with other inner class name */
    public interface InterfaceC0391l {
        void hp(DialogInterface dialogInterface);

        void jx(DialogInterface dialogInterface);

        void l(DialogInterface dialogInterface);
    }

    private l(hp hpVar) {
        this.f26530a = true;
        this.hp = hpVar.jx;
        this.f26533l = hpVar.f26539j;
        this.jx = hpVar.f26543w;
        this.f26532j = hpVar.f26537a;
        this.f26536w = hpVar.eb;
        this.f26530a = hpVar.f26542s;
        this.eb = hpVar.f26541q;
        this.f26535s = hpVar.f26538e;
        this.f26534q = hpVar.hp;
        this.f26531e = hpVar.f26540l;
    }
}
