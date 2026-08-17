package com.byazt.ie;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.byazt.xs.hp;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 1482, 28})
/* loaded from: classes.dex */
public class hp extends com.byazt.xs.hp<UGFrameLayout> {
    public UGFrameLayout gb;

    @com.byazt.kj.hp(hp = {0, 1, 1482, 170})
    /* renamed from: com.byazt.ie.hp$hp, reason: collision with other inner class name */
    public static class C0270hp extends hp.C0411hp {

        /* renamed from: o, reason: collision with root package name */
        public int f21055o;

        public C0270hp(com.byazt.xs.hp hpVar) {
            super(hpVar);
            this.f21055o = -1;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:4:0x000e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private int l(java.lang.String r6) {
            /*
                r5 = this;
                r6.getClass()
                int r0 = r6.hashCode()
                r1 = 5
                r2 = 3
                r3 = 1
                r4 = -1
                switch(r0) {
                    case -1383228885: goto L52;
                    case -1364013995: goto L47;
                    case -348726240: goto L3c;
                    case 115029: goto L31;
                    case 3317767: goto L26;
                    case 108511772: goto L1b;
                    case 1063616078: goto L10;
                    default: goto Le;
                }
            Le:
                r6 = r4
                goto L5c
            L10:
                java.lang.String r0 = "center_horizontal"
                boolean r6 = r6.equals(r0)
                if (r6 != 0) goto L19
                goto Le
            L19:
                r6 = 6
                goto L5c
            L1b:
                java.lang.String r0 = "right"
                boolean r6 = r6.equals(r0)
                if (r6 != 0) goto L24
                goto Le
            L24:
                r6 = r1
                goto L5c
            L26:
                java.lang.String r0 = "left"
                boolean r6 = r6.equals(r0)
                if (r6 != 0) goto L2f
                goto Le
            L2f:
                r6 = 4
                goto L5c
            L31:
                java.lang.String r0 = "top"
                boolean r6 = r6.equals(r0)
                if (r6 != 0) goto L3a
                goto Le
            L3a:
                r6 = r2
                goto L5c
            L3c:
                java.lang.String r0 = "center_vertical"
                boolean r6 = r6.equals(r0)
                if (r6 != 0) goto L45
                goto Le
            L45:
                r6 = 2
                goto L5c
            L47:
                java.lang.String r0 = "center"
                boolean r6 = r6.equals(r0)
                if (r6 != 0) goto L50
                goto Le
            L50:
                r6 = r3
                goto L5c
            L52:
                java.lang.String r0 = "bottom"
                boolean r6 = r6.equals(r0)
                if (r6 != 0) goto L5b
                goto Le
            L5b:
                r6 = 0
            L5c:
                switch(r6) {
                    case 0: goto L6c;
                    case 1: goto L69;
                    case 2: goto L66;
                    case 3: goto L63;
                    case 4: goto L62;
                    case 5: goto L61;
                    case 6: goto L60;
                    default: goto L5f;
                }
            L5f:
                return r4
            L60:
                return r3
            L61:
                return r1
            L62:
                return r2
            L63:
                r6 = 48
                return r6
            L66:
                r6 = 16
                return r6
            L69:
                r6 = 17
                return r6
            L6c:
                r6 = 80
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.ie.hp.C0270hp.l(java.lang.String):int");
        }

        @Override // com.byazt.xs.hp.C0411hp
        public void hp(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            super.hp(context, str, str2);
            if (TextUtils.equals(str, "layoutGravity")) {
                this.f21055o = hp(str2);
            }
        }

        @Override // com.byazt.xs.hp.C0411hp
        /* renamed from: l, reason: merged with bridge method [inline-methods] */
        public FrameLayout.LayoutParams hp() {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) this.hp, (int) this.f27759l);
            layoutParams.leftMargin = (int) this.f27754a;
            layoutParams.rightMargin = (int) this.eb;
            layoutParams.topMargin = (int) this.f27762s;
            layoutParams.bottomMargin = (int) this.f27761q;
            layoutParams.gravity = this.f21055o;
            return layoutParams;
        }

        private int hp(String str) {
            String[] strArrSplit;
            if (TextUtils.isEmpty(str) || (strArrSplit = str.split("\\|")) == null || strArrSplit.length <= 0) {
                return -1;
            }
            int iL = 0;
            for (String str2 : strArrSplit) {
                iL |= l(str2);
            }
            return iL;
        }
    }

    public hp(Context context) {
        super(context);
    }

    @Override // com.byazt.xs.hp, com.byazt.xs.jx
    public void l() throws JSONException {
        this.gb.setEventMap(this.lp);
        super.l();
    }

    @Override // com.byazt.xs.hp
    public hp.C0411hp s() {
        return new C0270hp(this);
    }

    @Override // com.byazt.xs.jx
    /* renamed from: su, reason: merged with bridge method [inline-methods] */
    public UGFrameLayout hp() {
        UGFrameLayout uGFrameLayout = new UGFrameLayout(this.f27777l);
        this.gb = uGFrameLayout;
        uGFrameLayout.hp(this);
        return this.gb;
    }
}
