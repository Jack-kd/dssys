package com.kuaishou.weapon.p0;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.text.TextUtils;
import com.anythink.core.api.ErrorCode;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;

/* loaded from: classes4.dex */
public class am {

    /* renamed from: a, reason: collision with root package name */
    private static final String f30811a = "tun";

    /* renamed from: b, reason: collision with root package name */
    private static final String f30812b = "ppp";

    /* renamed from: c, reason: collision with root package name */
    private static int f30813c;

    public static boolean a(Context context) {
        NetworkCapabilities networkCapabilities;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork())) != null) {
                if (networkCapabilities.hasTransport(4)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static String b(Context context) {
        JSONArray jSONArrayA;
        try {
            jSONArrayA = a();
        } catch (Throwable unused) {
        }
        return jSONArrayA != null ? jSONArrayA.toString() : a(context) ? "[\"con\"]" : "";
    }

    public static int c() {
        return f30813c;
    }

    public static String d() {
        StringBuilder sb = new StringBuilder();
        try {
            f30813c = 0;
            KeyStore keyStore = KeyStore.getInstance("AndroidCAStore");
            if (keyStore != null) {
                keyStore.load(null, null);
                Enumeration<String> enumerationAliases = keyStore.aliases();
                while (enumerationAliases.hasMoreElements()) {
                    f30813c++;
                    X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(enumerationAliases.nextElement());
                    if (x509Certificate.getIssuerDN().getName().contains(ErrorCode.adSourceLoadCappingError) || x509Certificate.getIssuerDN().getName().contains(ErrorCode.loadCappingError_Global) || x509Certificate.getIssuerDN().getName().contains("HttpCanary") || x509Certificate.getIssuerDN().getName().contains("macbook") || x509Certificate.getIssuerDN().getName().contains("proxy") || x509Certificate.getIssuerDN().getName().contains("Proxy") || x509Certificate.getIssuerDN().getName().contains(com.baidu.mobads.sdk.internal.ax.f11061a) || x509Certificate.getIssuerDN().getName().contains("github")) {
                        sb.append(x509Certificate.getIssuerDN().getName());
                        sb.append("|");
                    }
                }
            }
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
        } catch (Throwable unused) {
        }
        return sb.toString();
    }

    public static JSONArray a() throws IOException {
        BufferedReader bufferedReader;
        JSONArray jSONArray = new JSONArray();
        DataInputStream dataInputStream = null;
        try {
            DataInputStream dataInputStream2 = new DataInputStream(Runtime.getRuntime().exec("cat /proc/net/route").getInputStream());
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream2));
                try {
                    HashSet hashSet = new HashSet();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        String strA = bm.a(line);
                        if (strA.contains(f30811a) || strA.contains(f30812b)) {
                            hashSet.add(strA.split("\t")[0]);
                        }
                    }
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(it.next());
                    }
                    try {
                        dataInputStream2.close();
                    } catch (IOException unused) {
                    }
                } catch (Throwable unused2) {
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        try {
                            dataInputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    return jSONArray;
                }
            } catch (Throwable unused4) {
                bufferedReader = null;
            }
        } catch (Throwable unused5) {
            bufferedReader = null;
        }
        try {
            bufferedReader.close();
        } catch (IOException unused6) {
        }
        return jSONArray;
    }

    public static String b() {
        String property = System.getProperty("http.proxyHost");
        return TextUtils.isEmpty(property) ? "" : property;
    }
}
