package com.anythink.core.common.h;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class ba extends w<bc> {

    /* renamed from: a, reason: collision with root package name */
    public static final int f3886a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f3887b = 2;
    private String aA;
    private String ak;
    private String al;
    private String am;
    private String an;
    private String ao;
    private String ap;
    private String aq;
    private String ar;
    private String as;
    private String at;
    private long au;
    private int av;
    private String aw;
    private String ax;
    private String ay;
    private String az;

    /* renamed from: c, reason: collision with root package name */
    public int f3888c;

    /* renamed from: d, reason: collision with root package name */
    public long f3889d;

    /* renamed from: e, reason: collision with root package name */
    String f3890e = "";

    private String P() {
        return this.aA;
    }

    private String Q() {
        return this.aw;
    }

    private String R() {
        return this.ax;
    }

    private String V() {
        return this.ak;
    }

    private String W() {
        return this.al;
    }

    private String X() {
        return this.am;
    }

    private String Y() {
        return this.an;
    }

    private String Z() {
        return this.ao;
    }

    private String aa() {
        return this.ap;
    }

    private String ab() {
        return this.aq;
    }

    private String ac() {
        return this.ar;
    }

    private String ad() {
        return this.as;
    }

    private String ae() {
        return this.at;
    }

    private int af() {
        return this.f3888c;
    }

    private long ag() {
        return this.f3889d;
    }

    private long ah() {
        return this.au;
    }

    public final void S(String str) {
        this.ax = str;
    }

    public final void T(String str) {
        this.ay = str;
    }

    public final void U(String str) {
        this.az = str;
    }

    @Override // com.anythink.core.common.h.w
    public final int a() {
        return 1;
    }

    @Override // com.anythink.core.common.h.w
    public final /* synthetic */ List b(y yVar) {
        boolean z2;
        bc bcVar = (bc) yVar;
        ArrayList arrayList = new ArrayList();
        StringBuffer stringBuffer = new StringBuffer();
        if (TextUtils.equals(String.valueOf(bcVar.n()), "0") && !TextUtils.isEmpty(this.f4473v)) {
            arrayList.add(this.f4473v);
        }
        if (TextUtils.equals(String.valueOf(bcVar.n()), "2")) {
            String strM = bcVar.m();
            if (!TextUtils.isEmpty(this.f4473v)) {
                arrayList.add(this.f4473v);
            }
            String strD = d(bcVar);
            if (!TextUtils.isEmpty(strD)) {
                arrayList.add(strD);
            }
            if (arrayList.size() == 0) {
                stringBuffer.append(strM);
                stringBuffer.append(" url,");
            }
        }
        if (TextUtils.equals(String.valueOf(bcVar.n()), "1")) {
            if (TextUtils.isEmpty(this.f4468q)) {
                stringBuffer.append("icon_u,");
                z2 = false;
            } else {
                arrayList.add(this.f4468q);
                z2 = true;
            }
            if (TextUtils.isEmpty(this.f4470s)) {
                stringBuffer.append("full_u,");
                z2 = false;
            } else {
                arrayList.add(this.f4470s);
            }
            if (TextUtils.isEmpty(this.f4473v)) {
                stringBuffer.append("video_u,");
                z2 = false;
            } else {
                arrayList.add(this.f4473v);
            }
        } else {
            z2 = true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(bcVar.n());
        if (TextUtils.equals(sb.toString(), "3")) {
            if (TextUtils.isEmpty(this.f4468q)) {
                stringBuffer.append("icon_u,");
                z2 = false;
            } else {
                arrayList.add(this.f4468q);
            }
            if (TextUtils.isEmpty(this.f4470s)) {
                stringBuffer.append("full_u,");
                z2 = false;
            } else {
                arrayList.add(this.f4470s);
            }
            if (this.f4435A == 1) {
                if (TextUtils.isEmpty(this.f4473v)) {
                    stringBuffer.append("video_u,");
                    z2 = false;
                } else {
                    arrayList.add(this.f4473v);
                }
            }
        }
        if (TextUtils.equals(String.valueOf(bcVar.n()), "4")) {
            if (!TextUtils.isEmpty(this.f4473v)) {
                arrayList.add(this.f4473v);
                if (!TextUtils.isEmpty(this.f4470s)) {
                    arrayList.add(this.f4470s);
                }
            } else if (TextUtils.isEmpty(this.f4470s)) {
                stringBuffer.append("full_u,");
                z2 = false;
            } else {
                arrayList.add(this.f4470s);
            }
        }
        if (z2) {
            return arrayList;
        }
        this.f3890e = stringBuffer.substring(0, stringBuffer.length() - 1);
        return null;
    }

    @Override // com.anythink.core.common.h.w
    public final /* synthetic */ List c(y yVar) {
        bc bcVar = (bc) yVar;
        ArrayList arrayList = new ArrayList();
        if (TextUtils.equals(String.valueOf(bcVar.n()), "2")) {
            String strD = d(bcVar);
            if (!TextUtils.isEmpty(strD) && TextUtils.equals(strD, this.f4470s) && !TextUtils.isEmpty(this.f4468q)) {
                arrayList.add(this.f4468q);
            }
        }
        return arrayList;
    }

    @Override // com.anythink.core.common.h.w
    public final String h() {
        return this.f3890e;
    }

    private String S() {
        return this.ay;
    }

    private String T() {
        return this.az;
    }

    private int U() {
        return this.av;
    }

    private String af(String str) {
        try {
            JSONObject jSONObject = new JSONObject(this.aA);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                str = str.replaceAll("\\{" + next + "\\}", jSONObject.optString(next));
            }
        } catch (Throwable unused) {
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    @Override // com.anythink.core.common.h.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String d(com.anythink.core.common.h.bc r4) {
        /*
            r3 = this;
            int r0 = r4.n()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            java.lang.String r1 = "2"
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L7c
            java.lang.String r4 = r4.m()
            int r0 = r4.hashCode()
            r1 = 1
            r2 = 2
            switch(r0) {
                case -559799608: goto L3c;
                case 1507809730: goto L32;
                case 1507809854: goto L28;
                case 1622564786: goto L1e;
                default: goto L1d;
            }
        L1d:
            goto L46
        L1e:
            java.lang.String r0 = "728x90"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L46
            r4 = r2
            goto L47
        L28:
            java.lang.String r0 = "320x90"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L46
            r4 = 0
            goto L47
        L32:
            java.lang.String r0 = "320x50"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L46
            r4 = 3
            goto L47
        L3c:
            java.lang.String r0 = "300x250"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L46
            r4 = r1
            goto L47
        L46:
            r4 = -1
        L47:
            if (r4 == 0) goto L6e
            if (r4 == r1) goto L63
            if (r4 == r2) goto L58
            java.lang.String r4 = r3.aw
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L79
            java.lang.String r4 = r3.aw
            return r4
        L58:
            java.lang.String r4 = r3.az
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L79
            java.lang.String r4 = r3.az
            return r4
        L63:
            java.lang.String r4 = r3.ay
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L79
            java.lang.String r4 = r3.ay
            return r4
        L6e:
            java.lang.String r4 = r3.ax
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L79
            java.lang.String r4 = r3.ax
            return r4
        L79:
            java.lang.String r4 = r3.f4470s
            return r4
        L7c:
            java.lang.String r4 = ""
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.h.ba.d(com.anythink.core.common.h.bc):java.lang.String");
    }

    public final void V(String str) {
        this.ak = str;
    }

    public final void W(String str) {
        this.al = str;
    }

    public final void X(String str) {
        this.am = str;
    }

    public final void Y(String str) {
        this.an = str;
    }

    public final void Z(String str) {
        this.ao = str;
    }

    public final void a(String str) {
        this.aA = str;
    }

    public final void aa(String str) {
        this.ap = str;
    }

    public final void ab(String str) {
        this.aq = str;
    }

    public final void ac(String str) {
        this.ar = str;
    }

    public final void ad(String str) {
        this.as = str;
    }

    public final void ae(String str) {
        this.at = str;
    }

    public final void a(int i2) {
        this.av = i2;
    }

    public final void a(long j2) {
        this.au = j2;
    }

    public final boolean a(bc bcVar) {
        return bcVar == null || System.currentTimeMillis() - this.au > bcVar.t();
    }

    private List<String> c(bc bcVar) {
        ArrayList arrayList = new ArrayList();
        if (TextUtils.equals(String.valueOf(bcVar.n()), "2")) {
            String strD = d(bcVar);
            if (!TextUtils.isEmpty(strD) && TextUtils.equals(strD, this.f4470s) && !TextUtils.isEmpty(this.f4468q)) {
                arrayList.add(this.f4468q);
            }
        }
        return arrayList;
    }

    public final void b(String str) {
        this.aw = str;
    }

    private void b(int i2) {
        this.f3888c = i2;
    }

    private void b(long j2) {
        this.f3889d = j2;
    }

    private List<String> b(bc bcVar) {
        boolean z2;
        ArrayList arrayList = new ArrayList();
        StringBuffer stringBuffer = new StringBuffer();
        if (TextUtils.equals(String.valueOf(bcVar.n()), "0") && !TextUtils.isEmpty(this.f4473v)) {
            arrayList.add(this.f4473v);
        }
        if (TextUtils.equals(String.valueOf(bcVar.n()), "2")) {
            String strM = bcVar.m();
            if (!TextUtils.isEmpty(this.f4473v)) {
                arrayList.add(this.f4473v);
            }
            String strD = d(bcVar);
            if (!TextUtils.isEmpty(strD)) {
                arrayList.add(strD);
            }
            if (arrayList.size() == 0) {
                stringBuffer.append(strM);
                stringBuffer.append(" url,");
            }
        }
        if (TextUtils.equals(String.valueOf(bcVar.n()), "1")) {
            if (!TextUtils.isEmpty(this.f4468q)) {
                arrayList.add(this.f4468q);
                z2 = true;
            } else {
                stringBuffer.append("icon_u,");
                z2 = false;
            }
            if (!TextUtils.isEmpty(this.f4470s)) {
                arrayList.add(this.f4470s);
            } else {
                stringBuffer.append("full_u,");
                z2 = false;
            }
            if (!TextUtils.isEmpty(this.f4473v)) {
                arrayList.add(this.f4473v);
            } else {
                stringBuffer.append("video_u,");
                z2 = false;
            }
        } else {
            z2 = true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(bcVar.n());
        if (TextUtils.equals(sb.toString(), "3")) {
            if (!TextUtils.isEmpty(this.f4468q)) {
                arrayList.add(this.f4468q);
            } else {
                stringBuffer.append("icon_u,");
                z2 = false;
            }
            if (!TextUtils.isEmpty(this.f4470s)) {
                arrayList.add(this.f4470s);
            } else {
                stringBuffer.append("full_u,");
                z2 = false;
            }
            if (this.f4435A == 1) {
                if (!TextUtils.isEmpty(this.f4473v)) {
                    arrayList.add(this.f4473v);
                } else {
                    stringBuffer.append("video_u,");
                    z2 = false;
                }
            }
        }
        if (TextUtils.equals(String.valueOf(bcVar.n()), "4")) {
            if (TextUtils.isEmpty(this.f4473v)) {
                if (!TextUtils.isEmpty(this.f4470s)) {
                    arrayList.add(this.f4470s);
                } else {
                    stringBuffer.append("full_u,");
                    z2 = false;
                }
            } else {
                arrayList.add(this.f4473v);
                if (!TextUtils.isEmpty(this.f4470s)) {
                    arrayList.add(this.f4470s);
                }
            }
        }
        if (z2) {
            return arrayList;
        }
        this.f3890e = stringBuffer.substring(0, stringBuffer.length() - 1);
        return null;
    }
}
