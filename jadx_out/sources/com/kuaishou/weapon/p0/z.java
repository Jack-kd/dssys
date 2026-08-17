package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class z {

    /* renamed from: e, reason: collision with root package name */
    private Set<String> f31460e = new HashSet();

    /* renamed from: f, reason: collision with root package name */
    private Set<String> f31461f = new HashSet();

    /* renamed from: g, reason: collision with root package name */
    private Set<String> f31462g = new HashSet();

    /* renamed from: h, reason: collision with root package name */
    private Set<String> f31463h = new HashSet();

    /* renamed from: a, reason: collision with root package name */
    private String f31456a = i.a("f118f1f9431de3a626df48d7302911", "0820");

    /* renamed from: b, reason: collision with root package name */
    private String f31457b = i.a("f118f1ef4616f3fc27d1", "0820");

    /* renamed from: c, reason: collision with root package name */
    private String f31458c = i.a("f118f1e84f0bf5ba3bd1579c6d35", "0820");

    /* renamed from: d, reason: collision with root package name */
    private String f31459d = i.a("fc03e7a44510", "0820");

    public JSONArray a(Context context) throws Throwable {
        BufferedReader bufferedReader;
        HashSet hashSet;
        HashSet hashSet2;
        String packageName;
        int iIndexOf;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new FileReader("/proc/self/maps"));
            try {
                hashSet = new HashSet();
                hashSet2 = new HashSet();
                hashSet2.add("/system/fr");
                hashSet2.add("/system/em");
                hashSet2.add("/apex/com.");
                hashSet2.add("/data/dalv");
                hashSet2.add("/system/li");
                hashSet2.add("/vendor/li");
                hashSet2.add("/system/ve");
                packageName = context.getPackageName();
            } catch (Exception unused) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException unused2) {
                    }
                }
                return null;
            } catch (Throwable th) {
                th = th;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception unused4) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (TextUtils.isEmpty(packageName)) {
            try {
                bufferedReader.close();
            } catch (IOException unused5) {
            }
            return null;
        }
        this.f31460e.clear();
        this.f31461f.clear();
        this.f31462g.clear();
        this.f31463h.clear();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            if (line.endsWith(".apk") || line.endsWith(".jar") || line.endsWith(".dex") || line.endsWith(".odex") || line.endsWith(".so")) {
                if (!line.contains("gson.jar") && !line.contains("volley.jar") && !line.contains("FwkPlugin") && (iIndexOf = line.indexOf(47)) >= 0) {
                    String strSubstring = line.substring(iIndexOf);
                    if (strSubstring.contains(this.f31456a) || strSubstring.contains(this.f31457b) || strSubstring.contains(this.f31458c)) {
                        this.f31460e.add(strSubstring);
                    } else {
                        if (strSubstring.contains(this.f31459d) && !strSubstring.contains("libart.so") && !strSubstring.contains("libart64.so")) {
                            this.f31463h.add(strSubstring);
                        }
                        if (!strSubstring.contains("es/.0/") && !strSubstring.contains("app_DvaPlugin") && !strSubstring.contains("/system_ext/") && (!strSubstring.contains(packageName) || strSubstring.contains("odex_cache") || strSubstring.contains("app_"))) {
                            String strSubstring2 = strSubstring.length() > 10 ? strSubstring.substring(0, 10) : strSubstring;
                            if (!strSubstring.contains("FeatureFramework") && !strSubstring.contains("GmsConfigOverlay") && !strSubstring.contains("/system/app/") && !strSubstring.contains("/system/vendor/lib/") && !strSubstring.contains("/hw_") && !strSubstring.contains("/system/product/lib")) {
                                if (strSubstring.contains("mokee-") || strSubstring.contains("mokee.")) {
                                    this.f31461f.add(strSubstring);
                                } else if (strSubstring.contains("lineageos-") || strSubstring.contains("lineageos.") || strSubstring.contains("Hook") || strSubstring.contains("hook")) {
                                    this.f31462g.add(strSubstring);
                                } else if (strSubstring.contains("posedBridge") || !hashSet2.contains(strSubstring2)) {
                                    hashSet.add(strSubstring);
                                    if (hashSet.size() > 15 || this.f31460e.size() > 10 || this.f31461f.size() > 10 || this.f31462g.size() > 10) {
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (hashSet.size() > 0) {
            JSONArray jSONArray = new JSONArray((Collection) hashSet);
            try {
                bufferedReader.close();
            } catch (IOException unused6) {
            }
            return jSONArray;
        }
        bufferedReader.close();
        return null;
    }

    public Set<String> b() {
        try {
            Set<String> set = this.f31462g;
            if (set == null || set.size() <= 0) {
                return null;
            }
            return this.f31462g;
        } catch (Exception unused) {
            return null;
        }
    }

    public Set<String> c() {
        try {
            Set<String> set = this.f31463h;
            if (set == null || set.size() <= 0) {
                return null;
            }
            return this.f31463h;
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject d() throws JSONException {
        try {
            Set<String> set = this.f31460e;
            if (set == null || set.size() <= 0) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            for (String str : this.f31460e) {
                if (str.contains(this.f31456a)) {
                    jSONObject.put("0", 1);
                } else if (str.contains(this.f31457b)) {
                    jSONObject.put("1", 1);
                } else if (str.contains(this.f31458c)) {
                    jSONObject.put("2", 1);
                }
            }
            if (jSONObject.length() > 0) {
                return jSONObject;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public Set e() {
        try {
            HashSet hashSet = new HashSet();
            Set<String> set = this.f31460e;
            if (set == null || set.size() <= 0) {
                return null;
            }
            for (String str : this.f31460e) {
                if (str.endsWith("dex")) {
                    hashSet.add(str);
                }
                if (hashSet.size() > 5) {
                    break;
                }
            }
            if (hashSet.size() > 0) {
                return hashSet;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public int a() {
        try {
            Set<String> set = this.f31461f;
            if (set == null || set.size() <= 0) {
                return 0;
            }
            return this.f31461f.size();
        } catch (Exception unused) {
            return 0;
        }
    }
}
