package com.byazt.my;

import android.content.Context;
import android.text.TextUtils;
import android.widget.EditText;
import com.byazt.xs.jx;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 662, 28})
/* loaded from: classes3.dex */
public class hp extends jx<EditText> {
    public int ad;
    public int db;
    public int gb;
    public String gh;

    /* renamed from: h, reason: collision with root package name */
    public int f23324h;
    public int hp;

    /* renamed from: i, reason: collision with root package name */
    public String f23325i;
    public String pg;
    public float xv;

    /* renamed from: z, reason: collision with root package name */
    public String f23326z;

    public hp(Context context) {
        super(context);
        this.hp = 1;
        this.f23324h = Integer.MAX_VALUE;
        this.db = 2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int gu(java.lang.String r5) {
        /*
            r4 = this;
            int r0 = r5.hashCode()
            r1 = 2
            r2 = 3
            r3 = 1
            switch(r0) {
                case -1034364087: goto L33;
                case 3556653: goto L29;
                case 96619420: goto L1f;
                case 106642798: goto L15;
                case 1216985755: goto Lb;
                default: goto La;
            }
        La:
            goto L3d
        Lb:
            java.lang.String r0 = "password"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L3d
            r5 = 0
            goto L3e
        L15:
            java.lang.String r0 = "phone"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L3d
            r5 = r3
            goto L3e
        L1f:
            java.lang.String r0 = "email"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L3d
            r5 = r2
            goto L3e
        L29:
            java.lang.String r0 = "text"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L3d
            r5 = 4
            goto L3e
        L33:
            java.lang.String r0 = "number"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L3d
            r5 = r1
            goto L3e
        L3d:
            r5 = -1
        L3e:
            if (r5 == 0) goto L4c
            if (r5 == r3) goto L4b
            if (r5 == r1) goto L4a
            if (r5 == r2) goto L47
            return r3
        L47:
            r5 = 32
            return r5
        L4a:
            return r1
        L4b:
            return r2
        L4c:
            r5 = 128(0x80, float:1.8E-43)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.my.hp.gu(java.lang.String):int");
    }

    private int jl(String str) {
        str.getClass();
        switch (str) {
            case "center":
                return 17;
            case "left":
                return 3;
            case "right":
                return 5;
            default:
                return 2;
        }
    }

    @Override // com.byazt.xs.jx
    /* renamed from: eb, reason: merged with bridge method [inline-methods] */
    public EditText hp() {
        UGEditText uGEditText = new UGEditText(this.f27777l);
        uGEditText.hp(this);
        return uGEditText;
    }

    @Override // com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
        ((EditText) this.f27788w).setInputType(this.hp);
        ((EditText) this.f27788w).setText(this.gh);
        ((EditText) this.f27788w).setTextSize(1, this.xv);
        ((EditText) this.f27788w).setTextColor(this.gb);
        ((EditText) this.f27788w).setLines(this.ad);
        ((EditText) this.f27788w).setMaxLines(this.f23324h);
        ((EditText) this.f27788w).setGravity(this.db);
        ((EditText) this.f27788w).setHint(this.f23325i);
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "textAlign":
                this.db = jl(str2);
                break;
            case "textColor":
                this.gb = com.byazt.xa.hp.hp(str2);
                break;
            case "textStyle":
                this.pg = str2;
                break;
            case "textSize":
                this.xv = Float.parseFloat(str2);
                break;
            case "hint":
                this.f23325i = str2;
                break;
            case "text":
                this.gh = str2;
                break;
            case "lines":
                this.ad = Integer.parseInt(str2);
                break;
            case "maxLines":
                this.f23324h = Integer.parseInt(str2);
                break;
            case "ellipsize":
                this.f23326z = str2;
                break;
            case "inputType":
                this.hp = gu(str2);
                break;
        }
    }
}
