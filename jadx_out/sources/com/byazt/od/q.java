package com.byazt.od;

import android.content.Context;

@com.byazt.kj.hp(hp = {0, 1, 1768, 150})
/* loaded from: classes3.dex */
public class q extends hp {

    /* renamed from: j, reason: collision with root package name */
    public String f23964j;

    /* renamed from: w, reason: collision with root package name */
    public String f23965w;

    public q(Context context, com.byazt.jb.hp hpVar, String str, String str2, String str3) {
        super(context, hpVar, str);
        this.f23964j = str2;
        this.f23965w = str3;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a2  */
    @Override // com.byazt.od.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.content.Intent l() {
        /*
            r10 = this;
            com.byazt.jb.hp r0 = r10.f23962l
            java.lang.String r1 = "s"
            java.lang.String r0 = r0.jx(r1)
            com.byazt.jb.hp r1 = r10.f23962l
            java.lang.String r2 = "ak"
            java.lang.String r1 = r1.jx(r2)
            java.lang.String r1 = com.byazt.wm.jx.hp(r1, r0)
            com.byazt.jb.hp r2 = r10.f23962l
            java.lang.String r3 = "am"
            java.lang.String r2 = r2.jx(r3)
            java.lang.String r2 = com.byazt.wm.jx.hp(r2, r0)
            com.byazt.jb.hp r3 = r10.f23962l
            java.lang.String r4 = "an"
            java.lang.String r3 = r3.jx(r4)
            java.lang.String r3 = com.byazt.wm.jx.hp(r3, r0)
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            r5 = 0
            if (r4 != 0) goto Ld3
            java.lang.String r4 = ","
            java.lang.String[] r6 = r3.split(r4)
            int r6 = r6.length
            r7 = 2
            if (r6 == r7) goto L3f
            goto Ld3
        L3f:
            java.lang.String[] r3 = r3.split(r4)
            com.byazt.jb.hp r6 = r10.f23962l
            java.lang.String r8 = "al"
            java.lang.String r6 = r6.jx(r8)
            java.lang.String r6 = com.byazt.wm.jx.hp(r6, r0)
            com.byazt.jb.hp r8 = r10.f23962l
            java.lang.String r9 = "ao"
            java.lang.String r8 = r8.jx(r9)
            java.lang.String r0 = com.byazt.wm.jx.hp(r8, r0)
            boolean r8 = android.text.TextUtils.isEmpty(r0)
            if (r8 != 0) goto Ld3
            java.lang.String[] r8 = r0.split(r4)
            int r8 = r8.length
            if (r8 == r7) goto L69
            goto Ld3
        L69:
            java.lang.String[] r0 = r0.split(r4)
            com.byazt.jb.hp r4 = r10.f23962l
            java.lang.String r7 = "download_dir"
            org.json.JSONObject r4 = r4.j(r7)
            if (r4 == 0) goto Lab
            java.lang.String r5 = "dir_name"
            java.lang.String r4 = r4.optString(r5)
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 != 0) goto L97
            java.lang.String r5 = "%s"
            boolean r5 = r4.contains(r5)
            if (r5 == 0) goto L97
            java.lang.String r5 = r10.f23965w     // Catch: java.lang.Throwable -> L97
            java.lang.Object[] r5 = new java.lang.Object[]{r5}     // Catch: java.lang.Throwable -> L97
            java.lang.String r4 = java.lang.String.format(r4, r5)     // Catch: java.lang.Throwable -> L97
        L95:
            r5 = r4
            goto L9a
        L97:
            java.lang.String r4 = r10.f23965w
            goto L95
        L9a:
            int r4 = r5.length()
            r7 = 255(0xff, float:3.57E-43)
            if (r4 <= r7) goto Lab
            int r4 = r5.length()
            int r4 = r4 - r7
            java.lang.String r5 = r6.substring(r4)
        Lab:
            android.content.Intent r4 = new android.content.Intent
            r4.<init>(r1)
            r1 = 0
            r7 = r0[r1]
            r8 = 1
            r0 = r0[r8]
            r4.putExtra(r7, r0)
            java.lang.String r0 = r10.f23964j
            r4.putExtra(r2, r0)
            r4.putExtra(r6, r5)
            r0 = r3[r1]
            r1 = r3[r8]
            int r1 = java.lang.Integer.parseInt(r1)
            r4.putExtra(r0, r1)
            r0 = 268468224(0x10008000, float:2.5342157E-29)
            r4.addFlags(r0)
            return r4
        Ld3:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.od.q.l():android.content.Intent");
    }
}
