package com.byazt.yj;

import android.text.TextUtils;
import android.widget.TextView;
import com.byazt.yj.l;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1283, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu {
    public static final Set<String> hp = Collections.unmodifiableSet(new HashSet(Arrays.asList("dislike", "close", "close-fill", "webview-close")));

    /* renamed from: l, reason: collision with root package name */
    public static String f27956l;

    /* JADX WARN: Removed duplicated region for block: B:218:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x03f7 A[Catch: Exception -> 0x0407, TryCatch #4 {Exception -> 0x0407, blocks: (B:219:0x03ec, B:221:0x03f7, B:225:0x0400), top: B:265:0x03ec }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.byazt.yj.l.jx hp(java.lang.String r22, java.lang.String r23, java.lang.String r24, boolean r25, boolean r26, int r27, com.byazt.nw.s r28, double r29, int r31, double r32, java.lang.String r34, com.byazt.fub.zy r35) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 1124
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.yj.gu.hp(java.lang.String, java.lang.String, java.lang.String, boolean, boolean, int, com.byazt.nw.s, double, int, double, java.lang.String, com.byazt.fub.zy):com.byazt.yj.l$jx");
    }

    public static double l(String str) {
        try {
            return Double.parseDouble(new JSONObject(str).optString("fontSize"));
        } catch (Throwable unused) {
            return 0.0d;
        }
    }

    public static int[] l(String str, float f2, boolean z2) {
        try {
            TextView textView = new TextView(com.byazt.wkx.j.getContext());
            textView.setTextSize(f2);
            textView.setText(str);
            textView.setIncludeFontPadding(false);
            if (z2) {
                textView.setSingleLine();
            }
            textView.measure(-2, -2);
            return new int[]{textView.getMeasuredWidth() + 2, textView.getMeasuredHeight() + 2};
        } catch (Exception unused) {
            return new int[]{0, 0};
        }
    }

    public static boolean l() {
        return !TextUtils.isEmpty(f27956l);
    }

    public static String hp(String str) {
        String[] strArrSplit;
        return (TextUtils.isEmpty(str) || (strArrSplit = str.split("adx:")) == null || strArrSplit.length < 2) ? "" : strArrSplit[1];
    }

    private static l.jx hp(l.jx jxVar, String str, String str2, String str3) {
        if (str.contains("union")) {
            jxVar.hp = 0.0f;
            jxVar.f27964l = 0.0f;
            return jxVar;
        }
        if (TextUtils.isEmpty(str3)) {
            str3 = hp(str);
        }
        if (TextUtils.isEmpty(str3)) {
            jxVar.hp = 0.0f;
            jxVar.f27964l = 0.0f;
            return jxVar;
        }
        return hp(str3, str2);
    }

    public static l.jx hp(String str, String str2) {
        return hp(str, str2, false);
    }

    public static l.jx hp(String str, String str2, boolean z2) {
        l.jx jxVar = new l.jx();
        try {
            JSONObject jSONObject = new JSONObject(str2);
            int[] iArrHp = hp(str, (float) l(str2), z2);
            jxVar.hp = iArrHp[0];
            jxVar.f27964l = iArrHp[1];
            if (jSONObject.optDouble("lineHeight", 1.0d) == 0.0d) {
                jxVar.f27964l = 0.0f;
            }
        } catch (Exception unused) {
        }
        return jxVar;
    }

    public static int[] hp(String str, float f2, boolean z2) {
        int[] iArrL = l(str, f2, z2);
        return new int[]{com.byazt.sq.s.l(com.byazt.wkx.j.getContext(), iArrL[0]), com.byazt.sq.s.l(com.byazt.wkx.j.getContext(), iArrL[1])};
    }

    public static String hp() {
        return f27956l;
    }
}
