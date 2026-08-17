package com.beizi.fusion;

import android.graphics.Color;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public abstract class qo {

    public static abstract class a extends ClickableSpan {

        /* renamed from: a, reason: collision with root package name */
        private final String f15829a;

        /* renamed from: b, reason: collision with root package name */
        private final String f15830b;

        public a(String str, String str2) {
            this.f15829a = str;
            this.f15830b = str2;
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(Color.parseColor(this.f15830b));
            textPaint.setUnderlineText(false);
        }
    }

    public static double a(String str, double d2) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Double.parseDouble(str);
            } catch (NumberFormatException unused) {
            }
        }
        return d2;
    }

    public static String b(String str) {
        try {
            String path = new URL(str).getPath();
            return path.substring(path.lastIndexOf(ServiceReference.DELIMITER) + 1);
        } catch (MalformedURLException unused) {
            if (!str.contains("?")) {
                return str.substring(str.lastIndexOf(ServiceReference.DELIMITER) + 1);
            }
            String strSubstring = str.substring(0, str.indexOf("?"));
            return strSubstring.substring(strSubstring.lastIndexOf(ServiceReference.DELIMITER) + 1);
        }
    }

    public static String c(String str) {
        String strB = b(str);
        return strB.contains(com.anythink.core.common.d.i.f2495E) ? strB.substring(strB.lastIndexOf(com.anythink.core.common.d.i.f2495E) + 1) : strB;
    }

    public static boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return ul.a(str, "#[a-fA-F\\d]{6}") || ul.a(str, "#[a-fA-F\\d]{8}");
    }

    public static boolean e(String str) {
        try {
            new URL(str);
            return true;
        } catch (MalformedURLException unused) {
            return false;
        }
    }

    public static boolean f(String str) {
        return !TextUtils.isEmpty(str) && str.contains("%");
    }

    public static double g(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0.0d;
        }
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return 0.0d;
        }
    }

    public static float h(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0.0f;
        }
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return 0.0f;
        }
    }

    public static int i(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static long j(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    public static float k(String str) {
        if (TextUtils.isEmpty(str) || !str.contains("%")) {
            return 0.0f;
        }
        return h(str.substring(0, str.indexOf("%")).trim()) / 100.0f;
    }

    public static String a(long j2, String str) {
        return new SimpleDateFormat(str, Locale.getDefault()).format(new Date(j2));
    }

    public static String a(long j2) {
        return a(j2, "yyyy-MM-dd HH:MM:SS");
    }

    public static String a(List list, String str) {
        if (list == null || list.isEmpty()) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            sb.append(((hd) it.next()).toJsonString());
            sb.append(",");
        }
        if (sb.length() > 1) {
            sb.setCharAt(sb.length() - 1, ']');
        } else {
            sb.append("]");
        }
        return sb.toString();
    }

    public static Set a(List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            hashSet.add(((hd) it.next()).toJsonString());
        }
        return hashSet;
    }

    public static String a(String str) {
        if (str.isEmpty()) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == '\t') {
                sb.append("\\t");
            } else if (cCharAt == '\n') {
                sb.append("\\n");
            } else if (cCharAt == '\r') {
                sb.append("\\r");
            } else if (cCharAt == '\"') {
                sb.append("\\\"");
            } else if (cCharAt != '\\') {
                sb.append(cCharAt);
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static SpannableString a(String str, a... aVarArr) {
        SpannableString spannableString = new SpannableString(str);
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                int iIndexOf = str.indexOf(aVar.f15829a);
                spannableString.setSpan(aVar, iIndexOf, aVar.f15829a.length() + iIndexOf, 33);
            }
        }
        return spannableString;
    }

    public static String a(String str, boolean z2) {
        return (z2 && str.startsWith("http://")) ? str.replace("http://", "https://") : str;
    }
}
