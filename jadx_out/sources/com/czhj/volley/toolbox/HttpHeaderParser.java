package com.czhj.volley.toolbox;

import android.text.TextUtils;
import com.czhj.volley.Cache;
import com.czhj.volley.Header;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyLog;
import com.sigmob.sdk.downloader.core.c;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public class HttpHeaderParser {

    /* renamed from: a, reason: collision with root package name */
    static final String f29642a = "Content-Type";

    /* renamed from: b, reason: collision with root package name */
    private static final String f29643b = "ISO-8859-1";

    /* renamed from: c, reason: collision with root package name */
    private static final String f29644c = "EEE, dd MMM yyyy HH:mm:ss zzz";

    public static String a(long j2) {
        return a().format(new Date(j2));
    }

    public static String getHeader(Map<String, String> map, String str) {
        return map.get(str);
    }

    public static boolean isGzipContent(Map<String, String> map) {
        return TextUtils.equals(getHeader(map, "Content-Encoding"), "gzip");
    }

    public static boolean isSupportRange(Map<String, String> map) {
        if (TextUtils.equals(getHeader(map, c.f37370i), "bytes")) {
            return true;
        }
        String header = getHeader(map, c.f37367f);
        return header != null && header.startsWith("bytes");
    }

    public static Cache.Entry parseCacheHeaders(NetworkResponse networkResponse) {
        long j2;
        boolean z2;
        long j3;
        long j4;
        long j5;
        long dateAsEpoch;
        long j6;
        long j7;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = networkResponse.headers;
        String str = map.get("Date");
        long dateAsEpoch2 = str != null ? parseDateAsEpoch(str) : 0L;
        String str2 = map.get("Cache-Control");
        int i2 = 0;
        if (str2 != null) {
            String[] strArrSplit = str2.split(",", 0);
            z2 = false;
            j3 = 0;
            j4 = 0;
            while (i2 < strArrSplit.length) {
                String strTrim = strArrSplit[i2].trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j3 = Long.parseLong(strTrim.substring(8));
                    } catch (Throwable unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j4 = Long.parseLong(strTrim.substring(23));
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    z2 = true;
                }
                i2++;
            }
            j2 = 0;
            i2 = 1;
        } else {
            j2 = 0;
            z2 = false;
            j3 = 0;
            j4 = 0;
        }
        String str3 = map.get("Expires");
        long dateAsEpoch3 = str3 != null ? parseDateAsEpoch(str3) : j2;
        String str4 = map.get("Last-Modified");
        if (str4 != null) {
            j5 = jCurrentTimeMillis;
            dateAsEpoch = parseDateAsEpoch(str4);
        } else {
            j5 = jCurrentTimeMillis;
            dateAsEpoch = j2;
        }
        String str5 = map.get("ETag");
        if (i2 != 0) {
            long j8 = (j3 * 1000) + j5;
            j7 = z2 ? j8 : (j4 * 1000) + j8;
            j6 = j8;
        } else {
            j6 = (dateAsEpoch2 <= j2 || dateAsEpoch3 < dateAsEpoch2) ? j2 : (dateAsEpoch3 - dateAsEpoch2) + j5;
            j7 = j6;
        }
        Cache.Entry entry = new Cache.Entry();
        entry.data = networkResponse.data;
        entry.etag = str5;
        entry.softTtl = j6;
        entry.ttl = j7;
        entry.serverDate = dateAsEpoch2;
        entry.lastModified = dateAsEpoch;
        entry.responseHeaders = map;
        entry.allResponseHeaders = networkResponse.allHeaders;
        return entry;
    }

    public static String parseCharset(Map<String, String> map) {
        return parseCharset(map, f29643b);
    }

    public static long parseDateAsEpoch(String str) {
        try {
            return a().parse(str).getTime();
        } catch (ParseException e2) {
            VolleyLog.e(e2, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    private static SimpleDateFormat a() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(f29644c, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }

    public static String parseCharset(Map<String, String> map, String str) {
        String str2 = map.get("Content-Type");
        if (str2 != null) {
            String[] strArrSplit = str2.split(";", 0);
            for (int i2 = 1; i2 < strArrSplit.length; i2++) {
                String[] strArrSplit2 = strArrSplit[i2].trim().split("=", 0);
                if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                    return strArrSplit2[1];
                }
            }
        }
        return str;
    }

    public static List<Header> a(Map<String, String> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(new Header(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    public static Map<String, String> a(List<Header> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (Header header : list) {
            treeMap.put(header.getName(), header.getValue());
        }
        return treeMap;
    }
}
