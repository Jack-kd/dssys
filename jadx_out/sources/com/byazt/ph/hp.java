package com.byazt.ph;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import com.byazt.nf.UGTextView;
import com.byazt.nf.l;
import com.byazt.xa.hp;
import com.byazt.xa.j;
import com.byazt.xa.s;
import com.byazt.zs.hp;
import com.byazt.zs.w;

@com.byazt.kj.hp(hp = {0, 1, 1353, 28})
/* loaded from: classes3.dex */
public class hp extends l {
    public String ad;
    public hp.C0402hp db;
    public int gh;

    /* renamed from: h, reason: collision with root package name */
    public String f24398h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f24399i;
    public String pg;
    public boolean qa;
    public String xv;

    /* renamed from: z, reason: collision with root package name */
    public int f24400z;

    public hp(Context context) {
        super(context);
        this.pg = "row";
    }

    private void s() {
        if (TextUtils.isEmpty(this.xv)) {
            return;
        }
        ((UGTextView) this.f27788w).setCompoundDrawables(null, null, null, null);
        if (!this.xv.startsWith("local://")) {
            w.hp().l().hp(this.f27782q, this.xv, new hp.InterfaceC0439hp() { // from class: com.byazt.ph.hp.1
                @Override // com.byazt.zs.hp.InterfaceC0439hp
                public void hp(final Bitmap bitmap) {
                    if (bitmap == null) {
                        return;
                    }
                    s.hp(new Runnable() { // from class: com.byazt.ph.hp.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            hp.this.l(new BitmapDrawable(hp.this.f27777l.getResources(), bitmap));
                        }
                    });
                }
            });
        } else {
            try {
                gu(this.xv.replace("local://", ""));
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.byazt.xs.jx
    public void as() {
        super.as();
        if (this.f24399i) {
            ((UGTextView) this.f27788w).setTextColor(this.gh);
        }
        if (this.qa) {
            if (this.f27768c) {
                hp(this.db);
            } else {
                jx(this.f24400z);
            }
        }
    }

    public void gu(String str) {
        Context context = this.f27777l;
        l(s.hp(context, j.l(context, str)));
    }

    @Override // com.byazt.xs.jx
    public void kg() {
        super.kg();
        if (this.f24399i) {
            ((UGTextView) this.f27788w).setTextColor(((l) this).gb);
        }
        if (this.qa) {
            if (this.f27768c) {
                hp(this.ku);
            } else {
                jx(this.ky);
            }
        }
    }

    @Override // com.byazt.nf.l, com.byazt.xs.jx
    public void l() {
        super.l();
        s();
        ((UGTextView) this.f27788w).setGravity(17);
    }

    @Override // com.byazt.nf.l, com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "direction":
                this.pg = str2;
                break;
            case "highlightTextColor":
            case "highlightedTextColor":
                this.gh = com.byazt.xa.hp.hp(str2);
                this.f24399i = true;
                break;
            case "image":
                this.xv = str2;
                break;
            case "highlightImage":
                this.f24398h = str2;
                break;
            case "highlightBackgroundColor":
                if (com.byazt.xa.hp.jx(str2)) {
                    this.f27768c = true;
                    this.db = com.byazt.xa.hp.l(str2);
                } else {
                    this.f24400z = com.byazt.xa.hp.hp(str2);
                    this.f27768c = false;
                }
                this.qa = true;
                break;
            case "highlightBackgroundImage":
                this.ad = str2;
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void l(android.graphics.drawable.Drawable r5) {
        /*
            r4 = this;
            if (r5 != 0) goto L3
            return
        L3:
            java.lang.String r0 = r4.pg
            int r1 = r0.hashCode()
            r2 = 2
            r3 = 1
            switch(r1) {
                case -1781065991: goto L2d;
                case -1354837162: goto L23;
                case -207799939: goto L19;
                case 113114: goto Lf;
                default: goto Le;
            }
        Le:
            goto L37
        Lf:
            java.lang.String r1 = "row"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L37
            r0 = 3
            goto L38
        L19:
            java.lang.String r1 = "row_reverse"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L37
            r0 = 0
            goto L38
        L23:
            java.lang.String r1 = "column"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L37
            r0 = r3
            goto L38
        L2d:
            java.lang.String r1 = "column_reverse"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L37
            r0 = r2
            goto L38
        L37:
            r0 = -1
        L38:
            r1 = 0
            if (r0 == 0) goto L57
            if (r0 == r3) goto L4f
            if (r0 == r2) goto L47
            T extends android.view.View r0 = r4.f27788w
            com.byazt.nf.UGTextView r0 = (com.byazt.nf.UGTextView) r0
            r0.setCompoundDrawablesWithIntrinsicBounds(r5, r1, r1, r1)
            return
        L47:
            T extends android.view.View r0 = r4.f27788w
            com.byazt.nf.UGTextView r0 = (com.byazt.nf.UGTextView) r0
            r0.setCompoundDrawablesWithIntrinsicBounds(r1, r1, r1, r5)
            return
        L4f:
            T extends android.view.View r0 = r4.f27788w
            com.byazt.nf.UGTextView r0 = (com.byazt.nf.UGTextView) r0
            r0.setCompoundDrawablesWithIntrinsicBounds(r1, r5, r1, r1)
            return
        L57:
            T extends android.view.View r0 = r4.f27788w
            com.byazt.nf.UGTextView r0 = (com.byazt.nf.UGTextView) r0
            r0.setCompoundDrawablesWithIntrinsicBounds(r1, r1, r5, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ph.hp.l(android.graphics.drawable.Drawable):void");
    }
}
