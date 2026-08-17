package com.byazt.vk;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.anythink.core.common.m.AbstractC1114b;
import com.byazt.fs.w;
import com.byazt.mg.a;
import com.byazt.mg.j;
import com.byazt.pg.r;
import com.byazt.ya.l;
import com.byazt.ymw.u;
import com.byazt.zt.jx;
import com.sigmob.sdk.downloader.core.c;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import org.fourthline.cling.model.ServiceReference;
import org.fourthline.cling.model.types.BytesRange;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1564, 28})
/* loaded from: classes3.dex */
public final class hp {

    /* renamed from: l, reason: collision with root package name */
    public static final Handler f26574l = new Handler(Looper.getMainLooper());
    public static final Charset hp = Charset.forName("UTF-8");

    @com.byazt.kj.hp(hp = {0, 1, 1564, 82})
    /* renamed from: com.byazt.vk.hp$1, reason: invalid class name */
    public static class AnonymousClass1 implements FilenameFilter {
        public Pattern hp = Pattern.compile("^cpu[0-9]+$");

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.hp.matcher(str).matches();
        }
    }

    public static void hp(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static String l(int i2, int i3) {
        if (i2 >= 0 && i3 > 0) {
            return i2 + "-" + i3;
        }
        if (i2 > 0) {
            return i2 + "-";
        }
        if (i2 >= 0 || i3 <= 0) {
            return null;
        }
        return "-" + i3;
    }

    public static void hp(RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null) {
            try {
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean hp(String str) {
        if (str != null) {
            return str.startsWith("http://") || str.startsWith("https://");
        }
        return false;
    }

    public static int hp(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return i2;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static boolean l(String str) {
        if (str != null) {
            return str.startsWith("video/") || "application/octet-stream".equals(str) || "binary/octet-stream".equals(str);
        }
        return false;
    }

    public static boolean l() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static String hp(int i2, int i3) {
        String strL = l(i2, i3);
        if (strL == null) {
            return null;
        }
        return BytesRange.PREFIX + strL;
    }

    public static void l(Runnable runnable) {
        if (runnable != null) {
            if (l()) {
                runnable.run();
            } else {
                f26574l.post(runnable);
            }
        }
    }

    public static List<String> hp(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (hp(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public static String l(List<a.l> list) {
        if (list != null && list.size() != 0) {
            StringBuilder sb = new StringBuilder();
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                a.l lVar = list.get(i2);
                if (lVar != null) {
                    sb.append(lVar.hp);
                    sb.append(": ");
                    sb.append(lVar.f22972l);
                    sb.append("\r\n");
                }
            }
            return sb.toString();
        }
        return "";
    }

    public static int hp() {
        return Math.max(Runtime.getRuntime().availableProcessors(), 1);
    }

    public static int hp(com.byazt.fs.hp hpVar) {
        int iLastIndexOf;
        if (hpVar == null) {
            return -1;
        }
        if (hpVar.hp() == 200) {
            return hp(hpVar.hp(c.f37366e, null), -1);
        }
        if (hpVar.hp() == 206) {
            String strHp = hpVar.hp(c.f37367f, null);
            if (!TextUtils.isEmpty(strHp) && (iLastIndexOf = strHp.lastIndexOf(ServiceReference.DELIMITER)) >= 0 && iLastIndexOf < strHp.length() - 1) {
                return hp(strHp.substring(iLastIndexOf + 1), -1);
            }
        }
        return -1;
    }

    public static String l(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            StringBuilder sb = new StringBuilder();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append((Object) entry.getKey());
                sb.append(": ");
                sb.append((Object) entry.getValue());
                sb.append("\r\n");
            }
            return sb.toString();
        }
        return "";
    }

    public static String hp(com.byazt.fs.hp hpVar, boolean z2, boolean z3) {
        String strHp;
        if (hpVar == null) {
            if (j.f22987w) {
                u.l("TAG_PROXY_Response", "response null");
            }
            return "response null";
        }
        if (!hpVar.l()) {
            if (j.f22987w) {
                u.l("TAG_PROXY_Response", "response code: " + hpVar.hp());
            }
            return "response code: " + hpVar.hp();
        }
        String strHp2 = hpVar.hp(AbstractC1114b.f5589g, null);
        if (!l(strHp2)) {
            if (j.f22987w) {
                u.l("TAG_PROXY_Response", "Content-Type: " + strHp2);
            }
            return "Content-Type: " + strHp2;
        }
        int iHp = hp(hpVar);
        if (iHp <= 0) {
            if (j.f22987w) {
                u.l("TAG_PROXY_Response", "Content-Length: " + iHp);
            }
            return "Content-Length: " + iHp;
        }
        if (z2 && ((strHp = hpVar.hp(c.f37370i, null)) == null || !strHp.contains("bytes"))) {
            if (j.f22987w) {
                u.l("TAG_PROXY_Response", "Accept-Ranges: " + strHp);
            }
            return "Accept-Ranges: " + strHp;
        }
        if (!z3 || hpVar.j() != null) {
            return null;
        }
        if (j.f22987w) {
            u.l("TAG_PROXY_Response", "response body null");
        }
        return "response body null";
    }

    public static void hp(Runnable runnable) {
        if (runnable != null) {
            if (l()) {
                ((r) com.byazt.ym.j.getService("thread_service")).executeFastTask(runnable);
                l lVar = j.hp;
            } else {
                runnable.run();
                l lVar2 = j.hp;
            }
        }
    }

    public static List<a.l> hp(List<a.l> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        if (j.f22987w) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                list.get(i2);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (a.l lVar : list) {
            if ("Host".equals(lVar.hp) || "Keep-Alive".equals(lVar.hp) || "Connection".equals(lVar.hp) || "Proxy-Connection".equals(lVar.hp)) {
                arrayList.add(lVar);
            }
        }
        list.removeAll(arrayList);
        if (j.f22987w) {
            int size2 = list.size();
            for (int i3 = 0; i3 < size2; i3++) {
                list.get(i3);
            }
        }
        return list;
    }

    public static List<a.l> hp(Map<String, String> map) {
        if (map != null && !map.isEmpty()) {
            try {
                Set<Map.Entry<String, String>> setEntrySet = map.entrySet();
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, String> entry : setEntrySet) {
                    arrayList.add(new a.l(entry.getKey(), entry.getValue()));
                }
                return arrayList;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static com.byazt.zt.hp hp(com.byazt.fs.hp hpVar, jx jxVar, String str, int i2) {
        String strL;
        String str2;
        com.byazt.zt.hp hpVarQuery = jxVar.query(str, i2);
        if (hpVarQuery == null) {
            int iHp = hp(hpVar);
            String strHp = hpVar.hp(AbstractC1114b.f5589g, null);
            if (iHp > 0 && !TextUtils.isEmpty(strHp)) {
                w wVarW = hpVar.w();
                String string = "";
                if (wVarW == null) {
                    strL = "";
                    str2 = strL;
                } else {
                    str2 = wVarW.f20096l;
                    strL = l(wVarW.f20097w);
                }
                String strL2 = l(hpVar.jx());
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("requestUrl", str2);
                    jSONObject.put("requestHeaders", strL);
                    jSONObject.put("responseHeaders", strL2);
                    string = jSONObject.toString();
                } catch (Throwable unused) {
                }
                com.byazt.zt.hp hpVar2 = new com.byazt.zt.hp(str, strHp, iHp, i2, string);
                jxVar.insert(hpVar2);
                return hpVar2;
            }
        }
        return hpVarQuery;
    }
}
