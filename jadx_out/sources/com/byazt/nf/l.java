package com.byazt.nf;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.view.GravityCompat;
import com.baidu.mobads.sdk.internal.a;
import com.byazt.xa.s;
import com.byazt.xs.jx;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AVNOSYNC_REPORT_THRES, 34})
/* loaded from: classes3.dex */
public class l extends jx<UGTextView> {
    public int ad;
    public int db;
    public boolean fu;
    public int gb;
    public int gh;
    public float gy;

    /* renamed from: h, reason: collision with root package name */
    public int f23564h;
    public String hp;

    /* renamed from: i, reason: collision with root package name */
    @Deprecated
    public TextUtils.TruncateAt f23565i;
    public float jb;

    @Deprecated
    public float ld;

    @Deprecated
    public float ly;
    public float nc;
    public float pf;
    public float pg;
    public TextUtils.TruncateAt qa;
    public float tn;
    public float tr;
    public int vx;
    public float xv;

    /* renamed from: z, reason: collision with root package name */
    public int f23566z;

    public l(Context context) {
        super(context);
        this.gb = -16777216;
        this.xv = 12.0f;
        this.pg = -1.0f;
        this.ad = Integer.MAX_VALUE;
        this.db = GravityCompat.START;
        this.qa = TextUtils.TruncateAt.END;
        this.nc = -1.0f;
        this.jb = 400.0f;
    }

    private TextUtils.TruncateAt gu(String str) {
        str.getClass();
        switch (str) {
            case "center":
                this.f23565i = TextUtils.TruncateAt.MIDDLE;
                break;
            case "end":
                this.f23565i = TextUtils.TruncateAt.END;
                break;
            case "start":
                this.f23565i = TextUtils.TruncateAt.START;
                break;
            default:
                this.f23565i = null;
                break;
        }
        return this.f23565i;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int k(java.lang.String r6) {
        /*
            r5 = this;
            int r0 = r6.hashCode()
            r1 = -1178781136(0xffffffffb9bd3a30, float:-3.6092242E-4)
            r2 = 2
            r3 = 0
            r4 = 1
            if (r0 == r1) goto L2b
            r1 = -1039745817(0xffffffffc206bce7, float:-33.684475)
            if (r0 == r1) goto L21
            r1 = 3029637(0x2e3a85, float:4.245426E-39)
            if (r0 == r1) goto L17
            goto L35
        L17:
            java.lang.String r0 = "bold"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L35
            r6 = r3
            goto L36
        L21:
            java.lang.String r0 = "normal"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L35
            r6 = r2
            goto L36
        L2b:
            java.lang.String r0 = "italic"
            boolean r6 = r6.equals(r0)
            if (r6 == 0) goto L35
            r6 = r4
            goto L36
        L35:
            r6 = -1
        L36:
            if (r6 == 0) goto L3c
            if (r6 == r4) goto L3b
            return r3
        L3b:
            return r2
        L3c:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.nf.l.k(java.lang.String):int");
    }

    private void s() {
        ((UGTextView) this.f27788w).setLineSpacing(0.0f, this.nc);
    }

    private void su() {
        float f2 = this.nc;
        if (f2 <= 3.0f) {
            ((UGTextView) this.f27788w).setLineSpacing(0.0f, f2);
            return;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            int iRound = Math.round(s.hp(this.f27777l, (f2 - (this.xv * 1.2f)) / 2.0f));
            int paddingTop = ((UGTextView) this.f27788w).getPaddingTop() + iRound;
            int paddingBottom = ((UGTextView) this.f27788w).getPaddingBottom() + iRound;
            T t2 = this.f27788w;
            ((UGTextView) t2).setPadding(((UGTextView) t2).getPaddingLeft(), paddingTop, ((UGTextView) this.f27788w).getPaddingRight(), paddingBottom);
            ((UGTextView) this.f27788w).setLineHeight(Math.round(s.hp(this.f27777l, this.nc)));
        }
    }

    private int u(String str) {
        str.getClass();
        switch (str) {
            case "underline":
                return 8;
            case "strikethrough":
                return 16;
            case "none":
            default:
                return Integer.MAX_VALUE;
        }
    }

    private int v(String str) {
        str.getClass();
        switch (str) {
            case "center":
                return 17;
            case "center_vertical":
                return 16;
            case "left":
                return 3;
            case "right":
                return 5;
            case "center_horizontal":
                return 1;
            default:
                return 3;
        }
    }

    private TextUtils.TruncateAt zy(String str) {
        if (TextUtils.equals(str, a.f10877a)) {
            return null;
        }
        return TextUtils.TruncateAt.END;
    }

    public void a(int i2) {
        this.gh = i2;
        if (i2 == Integer.MAX_VALUE) {
            return;
        }
        ((UGTextView) this.f27788w).setPaintFlags(i2);
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public UGTextView hp() {
        UGTextView uGTextView = new UGTextView(this.f27777l);
        uGTextView.hp(this);
        return uGTextView;
    }

    public void jl(String str) {
        this.hp = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (TextUtils.equals("null", str)) {
            this.hp = "";
        }
        ((UGTextView) this.f27788w).setText(this.hp);
    }

    @Override // com.byazt.xs.jx
    public void l() {
        super.l();
        if (TextUtils.equals("null", this.hp)) {
            this.hp = "";
        }
        jl(this.hp);
        ((UGTextView) this.f27788w).setTextSize(1, this.xv);
        ((UGTextView) this.f27788w).setTextColor(this.gb);
        ((UGTextView) this.f27788w).setLines(this.f23566z);
        ((UGTextView) this.f27788w).setMaxLines(this.ad);
        ((UGTextView) this.f27788w).setGravity(this.db);
        ((UGTextView) this.f27788w).setIncludeFontPadding(false);
        ((UGTextView) this.f27788w).setMinTextSize(s.hp(this.f27777l, this.pg));
        a(this.gh);
        if (hq()) {
            hp(this.qa);
        } else {
            hp(this.f23565i);
        }
        if (this.nc > 0.0f) {
            if (hq()) {
                su();
            } else {
                s();
            }
        }
        int i2 = Build.VERSION.SDK_INT;
        ((UGTextView) this.f27788w).setBreakStrategy(0);
        if (!hq()) {
            ((UGTextView) this.f27788w).setShadowLayer(this.tr, this.ld, this.ly, this.vx);
        } else if (this.fu) {
            if (this.tr <= 0.0f) {
                this.tr = 1.0E-5f;
            }
            ((UGTextView) this.f27788w).setShadowLayer(this.tr, this.gy, this.tn, this.vx);
        }
        int i3 = this.f23564h;
        if (i3 == 1) {
            ((UGTextView) this.f27788w).setTypeface(Typeface.DEFAULT, i3);
        } else if (i2 >= 28) {
            ((UGTextView) this.f27788w).setTypeface(Typeface.create(Typeface.DEFAULT, (int) this.jb, i3 == 2));
        } else if (this.jb >= 500.0f) {
            ((UGTextView) this.f27788w).setTypeface(Typeface.DEFAULT, 1);
        }
        if (s.hp(this.f27777l, this.xv) > 0.0f) {
            ((UGTextView) this.f27788w).setLetterSpacing(this.pf / s.hp(this.f27777l, this.xv));
        }
    }

    public void hp(TextUtils.TruncateAt truncateAt) {
        if (truncateAt == null) {
            return;
        }
        ((UGTextView) this.f27788w).setEllipsize(truncateAt);
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "shadowRadius":
            case "shadowBlur":
                this.tr = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "shadowColor":
                this.vx = com.byazt.xa.hp.hp(str2);
                this.fu = true;
                break;
            case "shadowOffsetX":
                this.gy = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 0.0f));
                break;
            case "shadowOffsetY":
                this.tn = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 0.0f));
                break;
            case "textAlign":
                this.db = v(str2);
                break;
            case "textColor":
                this.gb = com.byazt.xa.hp.hp(str2);
                break;
            case "textStyle":
                this.f23564h = k(str2);
                break;
            case "textSize":
                this.xv = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "textDecoration":
                this.gh = u(str2);
                break;
            case "shadowDx":
                this.ld = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "shadowDy":
                this.ly = com.byazt.xa.jx.hp(str2, 0.0f);
                break;
            case "fontWeight":
                float fHp = com.byazt.xa.jx.hp(str2, -1.0f);
                this.jb = fHp;
                if (fHp < 1.0f || fHp > 1000.0f) {
                    this.jb = 400.0f;
                    break;
                }
                break;
            case "lineHeight":
                this.nc = com.byazt.xa.jx.hp(str2, 1.0f);
                break;
            case "text":
                this.hp = str2;
                break;
            case "lines":
                this.f23566z = com.byazt.xa.jx.hp(str2, 0);
                break;
            case "ellipsis":
                this.qa = zy(str2);
                break;
            case "minTextSize":
                this.pg = com.byazt.xa.jx.hp(str2, -1.0f);
                break;
            case "maxLines":
                int iHp = com.byazt.xa.jx.hp(str2, Integer.MAX_VALUE);
                this.ad = iHp > 0 ? iHp : Integer.MAX_VALUE;
                break;
            case "ellipsize":
                this.f23565i = gu(str2);
                break;
            case "letterSpacing":
                this.pf = s.hp(this.f27777l, com.byazt.xa.jx.hp(str2, 0.0f));
                break;
        }
    }
}
