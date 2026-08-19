package com.byazt.zh;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import com.byazt.xs.hp;
import com.byazt.zh.FlexboxLayout;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 754, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends com.byazt.xs.hp<FlexboxLayout> {
    public int ad;
    public int gb;

    /* renamed from: h, reason: collision with root package name */
    public int f28465h;
    public int pg;
    public int xv;

    @com.byazt.kj.hp(hp = {0, 1, 754, 8})
    public static class hp extends hp.C0411hp {

        /* renamed from: d, reason: collision with root package name */
        public float f28466d;
        public int dy;
        public int hq;
        public int lv;
        public int nu;

        /* renamed from: o, reason: collision with root package name */
        public int f28467o;

        /* renamed from: r, reason: collision with root package name */
        public int f28468r;
        public float ud;
        public float wv;

        public hp(com.byazt.xs.hp hpVar) {
            super(hpVar);
            this.f28467o = 1;
            this.f28466d = 0.0f;
            this.wv = 0.0f;
            this.hq = -1;
            this.ud = -1.0f;
            this.nu = -1;
            this.dy = -1;
            this.lv = ViewCompat.MEASURED_SIZE_MASK;
            this.f28468r = ViewCompat.MEASURED_SIZE_MASK;
        }

        private float j(String str) {
            try {
                return Float.parseFloat(str);
            } catch (Exception unused) {
                return -1.0f;
            }
        }

        private float jx(String str) {
            try {
                return Float.parseFloat(str);
            } catch (Exception unused) {
                return 0.0f;
            }
        }

        private float l(String str) {
            try {
                return Float.parseFloat(str);
            } catch (Exception unused) {
                return 0.0f;
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:4:0x0010  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private int w(java.lang.String r8) {
            /*
                r7 = this;
                r8.getClass()
                int r0 = r8.hashCode()
                r1 = 4
                r2 = 3
                r3 = 2
                r4 = 1
                r5 = 0
                r6 = -1
                switch(r0) {
                    case -1881872635: goto L3e;
                    case -1720785339: goto L33;
                    case -1364013995: goto L28;
                    case 1384876188: goto L1d;
                    case 1744442261: goto L12;
                    default: goto L10;
                }
            L10:
                r8 = r6
                goto L48
            L12:
                java.lang.String r0 = "flex_end"
                boolean r8 = r8.equals(r0)
                if (r8 != 0) goto L1b
                goto L10
            L1b:
                r8 = r1
                goto L48
            L1d:
                java.lang.String r0 = "flex_start"
                boolean r8 = r8.equals(r0)
                if (r8 != 0) goto L26
                goto L10
            L26:
                r8 = r2
                goto L48
            L28:
                java.lang.String r0 = "center"
                boolean r8 = r8.equals(r0)
                if (r8 != 0) goto L31
                goto L10
            L31:
                r8 = r3
                goto L48
            L33:
                java.lang.String r0 = "baseline"
                boolean r8 = r8.equals(r0)
                if (r8 != 0) goto L3c
                goto L10
            L3c:
                r8 = r4
                goto L48
            L3e:
                java.lang.String r0 = "stretch"
                boolean r8 = r8.equals(r0)
                if (r8 != 0) goto L47
                goto L10
            L47:
                r8 = r5
            L48:
                switch(r8) {
                    case 0: goto L50;
                    case 1: goto L4f;
                    case 2: goto L4e;
                    case 3: goto L4d;
                    case 4: goto L4c;
                    default: goto L4b;
                }
            L4b:
                return r6
            L4c:
                return r4
            L4d:
                return r5
            L4e:
                return r3
            L4f:
                return r2
            L50:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.zh.w.hp.w(java.lang.String):int");
        }

        @Override // com.byazt.xs.hp.C0411hp
        public String toString() {
            return "LayoutParams{mWidth=" + this.hp + ", mHeight=" + this.f27759l + ", mMargin=" + this.f27765w + ", mMarginLeft=" + this.f27754a + ", mMarginRight=" + this.eb + ", mMarginTop=" + this.f27762s + ", mMarginBottom=" + this.f27761q + ", mParams=" + this.f27755b + ", mOrder=" + this.f28467o + ", mFlexGrow=" + this.f28466d + ", mFlexShrink=" + this.wv + ", mAlignSelf=" + this.hq + ", mFlexBasisPercent=" + this.ud + ", mMinWidth=" + this.nu + ", mMinHeight=" + this.dy + ", mMaxWidth=" + this.lv + ", mMaxHeight=" + this.f28468r + "} " + super.toString();
        }

        @Override // com.byazt.xs.hp.C0411hp
        public void hp(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            super.hp(context, str, str2);
            str.getClass();
            switch (str) {
                case "flexBasisPercent":
                    this.ud = j(str2);
                    break;
                case "order":
                    this.f28467o = hp(str2);
                    break;
                case "flexShrink":
                    this.wv = jx(str2);
                    break;
                case "flexGrow":
                    this.f28466d = l(str2);
                    break;
                case "alignSelf":
                    this.hq = w(str2);
                    break;
            }
        }

        @Override // com.byazt.xs.hp.C0411hp
        /* renamed from: l, reason: merged with bridge method [inline-methods] */
        public FlexboxLayout.hp hp() {
            FlexboxLayout.hp hpVar = new FlexboxLayout.hp((int) this.hp, (int) this.f27759l);
            ((ViewGroup.MarginLayoutParams) hpVar).leftMargin = (int) this.f27754a;
            ((ViewGroup.MarginLayoutParams) hpVar).rightMargin = (int) this.eb;
            ((ViewGroup.MarginLayoutParams) hpVar).topMargin = (int) this.f27762s;
            ((ViewGroup.MarginLayoutParams) hpVar).bottomMargin = (int) this.f27761q;
            hpVar.jx(this.f28467o);
            hpVar.j(this.hq);
            hpVar.hp(this.f28466d);
            hpVar.l(this.wv);
            hpVar.jx(this.ud);
            return hpVar;
        }

        private int hp(String str) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return 1;
            }
        }
    }

    public w(Context context) {
        super(context);
    }

    private int jl(String str) {
        str.getClass();
        return !str.equals("wrap") ? 0 : 1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int k(java.lang.String r7) {
        /*
            r6 = this;
            int r0 = r7.hashCode()
            r1 = 4
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            switch(r0) {
                case -1881872635: goto L35;
                case -1720785339: goto L2b;
                case -1364013995: goto L21;
                case 1384876188: goto L17;
                case 1744442261: goto Ld;
                default: goto Lc;
            }
        Lc:
            goto L3f
        Ld:
            java.lang.String r0 = "flex_end"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L3f
            r7 = r5
            goto L40
        L17:
            java.lang.String r0 = "flex_start"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L3f
            r7 = r2
            goto L40
        L21:
            java.lang.String r0 = "center"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L3f
            r7 = r4
            goto L40
        L2b:
            java.lang.String r0 = "baseline"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L3f
            r7 = r3
            goto L40
        L35:
            java.lang.String r0 = "stretch"
            boolean r7 = r7.equals(r0)
            if (r7 == 0) goto L3f
            r7 = r1
            goto L40
        L3f:
            r7 = -1
        L40:
            if (r7 == 0) goto L4c
            if (r7 == r5) goto L4b
            if (r7 == r4) goto L4a
            if (r7 == r3) goto L49
            return r1
        L49:
            return r3
        L4a:
            return r4
        L4b:
            return r5
        L4c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zh.w.k(java.lang.String):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int v(java.lang.String r8) {
        /*
            r7 = this;
            int r0 = r8.hashCode()
            r1 = 5
            r2 = 0
            r3 = 2
            r4 = 3
            r5 = 4
            r6 = 1
            switch(r0) {
                case -1881872635: goto L40;
                case -1364013995: goto L36;
                case -932331738: goto L2c;
                case 1384876188: goto L22;
                case 1682480591: goto L18;
                case 1744442261: goto Le;
                default: goto Ld;
            }
        Ld:
            goto L4a
        Le:
            java.lang.String r0 = "flex_end"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L4a
            r8 = r6
            goto L4b
        L18:
            java.lang.String r0 = "space_between"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L4a
            r8 = r5
            goto L4b
        L22:
            java.lang.String r0 = "flex_start"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L4a
            r8 = r2
            goto L4b
        L2c:
            java.lang.String r0 = "space_around"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L4a
            r8 = r4
            goto L4b
        L36:
            java.lang.String r0 = "center"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L4a
            r8 = r3
            goto L4b
        L40:
            java.lang.String r0 = "stretch"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L4a
            r8 = r1
            goto L4b
        L4a:
            r8 = -1
        L4b:
            if (r8 == 0) goto L5a
            if (r8 == r6) goto L59
            if (r8 == r3) goto L58
            if (r8 == r4) goto L57
            if (r8 == r5) goto L56
            return r1
        L56:
            return r4
        L57:
            return r5
        L58:
            return r3
        L59:
            return r6
        L5a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zh.w.v(java.lang.String):int");
    }

    private int zy(String str) {
        str.getClass();
        switch (str) {
            case "center":
                return 2;
            case "space_around":
                return 4;
            case "space_between":
                return 3;
            case "flex_end":
                return 1;
            default:
                return 0;
        }
    }

    public int gu(String str) {
        str.getClass();
        switch (str) {
            case "column_reverse":
                return 3;
            case "column":
                return 2;
            case "row_reverse":
                return 1;
            default:
                return 0;
        }
    }

    @Override // com.byazt.xs.hp, com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        ((FlexboxLayout) this.f27788w).setFlexDirection(this.gb);
        ((FlexboxLayout) this.f27788w).setFlexWrap(this.xv);
        ((FlexboxLayout) this.f27788w).setJustifyContent(this.pg);
        ((FlexboxLayout) this.f27788w).setAlignItems(this.f28465h);
        ((FlexboxLayout) this.f27788w).setAlignContent(this.ad);
    }

    @Override // com.byazt.xs.hp
    public hp.C0411hp s() {
        return new hp(this);
    }

    @Override // com.byazt.xs.jx
    /* renamed from: su, reason: merged with bridge method [inline-methods] */
    public FlexboxLayout hp() {
        FlexboxLayout flexboxLayout = new FlexboxLayout(this.f27777l);
        flexboxLayout.hp(this);
        return flexboxLayout;
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "alignItems":
                this.f28465h = k(str2);
                break;
            case "flexDirection":
                this.gb = gu(str2);
                break;
            case "alignContent":
                this.ad = v(str2);
                break;
            case "flexWrap":
                this.xv = jl(str2);
                break;
            case "justifyContent":
                this.pg = zy(str2);
                break;
        }
    }
}
