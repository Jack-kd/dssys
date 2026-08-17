package com.sigmob.sdk.downloader.core;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.StatFs;
import android.util.Log;
import com.sigmob.sdk.base.n;
import com.sigmob.sdk.base.o;
import com.sigmob.sdk.downloader.core.breakpoint.h;
import com.sigmob.sdk.downloader.core.breakpoint.i;
import com.sigmob.sdk.downloader.core.breakpoint.j;
import com.sigmob.sdk.downloader.core.connection.a;
import com.sigmob.sdk.downloader.core.connection.b;
import com.sigmob.sdk.downloader.core.connection.c;
import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.downloader.g;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final String f37362a = "HEAD";

    /* renamed from: b, reason: collision with root package name */
    public static final String f37363b = "Range";

    /* renamed from: c, reason: collision with root package name */
    public static final String f37364c = "If-Match";

    /* renamed from: d, reason: collision with root package name */
    public static final String f37365d = "User-Agent";

    /* renamed from: e, reason: collision with root package name */
    public static final String f37366e = "Content-Length";

    /* renamed from: f, reason: collision with root package name */
    public static final String f37367f = "Content-Range";

    /* renamed from: g, reason: collision with root package name */
    public static final String f37368g = "Etag";

    /* renamed from: h, reason: collision with root package name */
    public static final String f37369h = "Transfer-Encoding";

    /* renamed from: i, reason: collision with root package name */
    public static final String f37370i = "Accept-Ranges";

    /* renamed from: j, reason: collision with root package name */
    public static final String f37371j = "Content-Disposition";

    /* renamed from: k, reason: collision with root package name */
    public static final String f37372k = "chunked";

    /* renamed from: l, reason: collision with root package name */
    public static final int f37373l = -1;

    /* renamed from: m, reason: collision with root package name */
    public static final int f37374m = 416;

    /* renamed from: n, reason: collision with root package name */
    private static b f37375n = new a();

    public static class a implements b {
        @Override // com.sigmob.sdk.downloader.core.c.b
        public void a(String str, String str2) {
        }

        @Override // com.sigmob.sdk.downloader.core.c.b
        public void b(String str, String str2) {
        }

        @Override // com.sigmob.sdk.downloader.core.c.b
        public void c(String str, String str2) {
        }

        @Override // com.sigmob.sdk.downloader.core.c.b
        public void a(String str, String str2, Exception exc) {
        }
    }

    public interface b {
        void a(String str, String str2);

        void a(String str, String str2, Exception exc);

        void b(String str, String str2);

        void c(String str, String str2);
    }

    public static long a(StatFs statFs) {
        return statFs.getAvailableBytes();
    }

    public static long b(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            b("Util", "parseContentLength failed parse for '" + str + "'");
            return -1L;
        }
    }

    public static long c(Uri uri) {
        uri.getAuthority();
        Cursor cursorQuery = g.j().h().getContentResolver().query(uri, null, null, null, null);
        if (cursorQuery == null) {
            return 0L;
        }
        try {
            cursorQuery.moveToFirst();
            int columnIndex = cursorQuery.getColumnIndex("_size");
            if (columnIndex >= 0) {
                return cursorQuery.getLong(columnIndex);
            }
            return 0L;
        } finally {
            cursorQuery.close();
        }
    }

    public static long d(String str) throws NumberFormatException {
        if (str != null && str.length() != 0) {
            try {
                Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/\\d+").matcher(str);
                if (matcher.find()) {
                    return (Long.parseLong(matcher.group(2)) - Long.parseLong(matcher.group(1))) + 1;
                }
            } catch (Exception e2) {
                a("Util", "parse content-length from content-range failed " + e2);
            }
        }
        return -1L;
    }

    private static String e(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return str.replaceAll("\\.\\./", "_");
    }

    public static j a(Context context) {
        try {
            return (j) i.class.getDeclaredConstructor(Context.class).newInstance(context);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
            return new h();
        }
    }

    public static b b() {
        return f37375n;
    }

    public static a.b c() {
        String name = b.a.class.getName();
        try {
            if (o.a().Z()) {
                return (a.b) Class.forName(name).getDeclaredConstructor(null).newInstance(null);
            }
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException unused) {
        }
        return new c.b();
    }

    public static j a(j jVar) {
        try {
            jVar = (j) jVar.getClass().getMethod("createRemitSelf", null).invoke(jVar, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
        b("Util", "Get final download store is " + jVar);
        return jVar;
    }

    public static void b(String str, String str2) {
        b bVar = f37375n;
        if (bVar != null) {
            bVar.b(str, str2);
        }
    }

    public static void c(String str, String str2) {
        b bVar = f37375n;
        if (bVar != null) {
            bVar.c(str, str2);
        }
    }

    public static File a(File file) {
        File parentFile = file.getParentFile();
        return parentFile == null ? new File(ServiceReference.DELIMITER) : parentFile;
    }

    public static void b(Map<String, List<String>> map, com.sigmob.sdk.downloader.core.connection.a aVar) {
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            Iterator<String> it = entry.getValue().iterator();
            while (it.hasNext()) {
                aVar.a(key, it.next());
            }
        }
    }

    public static boolean c(String str) {
        return g.j().h().checkCallingOrSelfPermission(str) == 0;
    }

    public static String a(long j2, boolean z2) {
        int i2 = z2 ? 1000 : 1024;
        if (j2 < i2) {
            return j2 + " B";
        }
        double d2 = j2;
        double d3 = i2;
        int iLog = (int) (Math.log(d2) / Math.log(d3));
        StringBuilder sb = new StringBuilder();
        sb.append((z2 ? "kMGTPE" : "KMGTPE").charAt(iLog - 1));
        sb.append(z2 ? "" : "i");
        return String.format(Locale.ENGLISH, "%.1f %sB", Double.valueOf(d2 / Math.pow(d3, iLog)), sb.toString());
    }

    public static boolean b(ConnectivityManager connectivityManager) {
        if (connectivityManager == null) {
            a("Util", "failed to get connectivity manager!");
            return true;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static String a(String str) {
        byte[] bArrDigest;
        try {
            bArrDigest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            bArrDigest = null;
        }
        if (bArrDigest == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArrDigest.length * 2);
        for (byte b3 : bArrDigest) {
            int i2 = b3 & 255;
            if (i2 < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i2));
        }
        return sb.toString();
    }

    public static boolean b(Uri uri) {
        return uri.getScheme().equals(n.f36463z);
    }

    public static ThreadFactory a(final String str, final boolean z2) {
        return new ThreadFactory() { // from class: com.sigmob.sdk.downloader.core.c.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, str);
                thread.setDaemon(z2);
                return thread;
            }
        };
    }

    public static void a() {
        f37375n = null;
    }

    public static void a(com.sigmob.sdk.downloader.core.breakpoint.a aVar) {
        if (aVar.a() >= 0 && aVar.a() <= aVar.d()) {
            return;
        }
        a("resetBlockIfDirty", "block is dirty so have to reset: " + aVar);
        aVar.f();
    }

    public static void a(b bVar) {
        f37375n = bVar;
    }

    public static void a(com.sigmob.sdk.downloader.core.connection.a aVar) {
    }

    public static void a(f fVar, com.sigmob.sdk.downloader.core.breakpoint.c cVar, long j2, boolean z2) {
        int iA = g.j().g().a(z2) ? g.j().g().a(fVar, j2) : 1;
        cVar.f();
        long j3 = iA;
        long j4 = j2 / j3;
        long j5 = 0;
        int i2 = 0;
        long j6 = 0;
        while (i2 < iA) {
            j5 += j6;
            j6 = i2 == 0 ? (j2 % j3) + j4 : j4;
            cVar.a(new com.sigmob.sdk.downloader.core.breakpoint.a(j5, j6));
            i2++;
        }
    }

    public static void a(String str, String str2) {
        b bVar = f37375n;
        if (bVar != null) {
            bVar.a(str, str2);
        }
    }

    public static void a(String str, String str2, Exception exc) {
        b bVar = f37375n;
        if (bVar != null) {
            bVar.a(str, str2, exc);
        } else {
            Log.e(str, str2, exc);
        }
    }

    public static void a(Map<String, List<String>> map) throws IOException {
        if (map.containsKey(f37364c) || map.containsKey(f37363b)) {
            throw new IOException("If-Match and Range only can be handle by internal!");
        }
    }

    public static void a(Map<String, List<String>> map, com.sigmob.sdk.downloader.core.connection.a aVar) throws IOException {
        a(map);
        b(map, aVar);
    }

    public static boolean a(long j2, long j3) {
        return j2 == j3;
    }

    public static boolean a(ConnectivityManager connectivityManager) {
        if (connectivityManager == null) {
            a("Util", "failed to get connectivity manager!");
            return true;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo == null || activeNetworkInfo.getType() != 1;
    }

    public static boolean a(Uri uri) {
        return uri.getScheme().equals("content");
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }
}
