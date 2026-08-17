package com.byazt.zn;

import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.f.f;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE})
/* loaded from: classes3.dex */
public final class o {

    /* renamed from: l, reason: collision with root package name */
    public static AtomicBoolean f28558l = new AtomicBoolean(true);
    public static volatile Map<String, Boolean> hp = new ConcurrentHashMap();

    @com.byazt.kj.hp(hp = {0, 1, 442, 1405})
    public static final class hp {
        public static final com.byazt.ow.w hp = com.byazt.ym.a.getKVStore("tt_scheme_check_list_cache");
    }

    private o() {
    }

    public static void hp(String str, Boolean bool) {
        String string;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (bool == null) {
            string = "";
        } else {
            try {
                string = bool.toString();
            } catch (Throwable unused) {
                return;
            }
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(f.a.f3244d, string);
        jSONObject.put("time", System.currentTimeMillis());
        hp.hp.put(str, jSONObject.toString());
        f28558l.set(true);
    }

    public static Map<String, Boolean> l(long j2) {
        HashMap map = new HashMap();
        try {
            Map all = hp.hp.getAll();
            if (all != null && !all.isEmpty()) {
                for (Map.Entry entry : all.entrySet()) {
                    JSONObject jSONObject = new JSONObject(entry.getValue().toString());
                    long jCurrentTimeMillis = System.currentTimeMillis() - jSONObject.getLong("time");
                    String str = (String) entry.getKey();
                    if (jCurrentTimeMillis > 259200000) {
                        hp(str);
                    } else if (jCurrentTimeMillis <= j2) {
                        map.put(str, Boolean.valueOf(Boolean.parseBoolean(jSONObject.get(f.a.f3244d).toString())));
                    }
                }
                if (hp == null) {
                    hp = new ConcurrentHashMap();
                } else {
                    hp.clear();
                }
                hp.putAll(map);
            }
        } catch (Throwable unused) {
        }
        return map;
    }

    public static Map<String, Boolean> hp(long j2) {
        try {
            if (f28558l.get()) {
                synchronized (o.class) {
                    try {
                        if (f28558l.get()) {
                            Map<String, Boolean> mapL = l(j2);
                            f28558l.set(false);
                            return mapL;
                        }
                    } finally {
                    }
                }
            }
            return new HashMap(hp);
        } catch (Throwable unused) {
            return new HashMap();
        }
    }

    private static JSONObject l(String str) {
        String str2 = hp.hp.get(str, "");
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            return new JSONObject(str2);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Boolean hp(String str, long j2) {
        JSONObject jSONObjectL;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            jSONObjectL = l(str);
        } catch (Throwable unused) {
        }
        if (jSONObjectL == null) {
            return null;
        }
        if (System.currentTimeMillis() - jSONObjectL.getLong("time") <= j2) {
            return Boolean.valueOf(Boolean.parseBoolean(jSONObjectL.getString(f.a.f3244d)));
        }
        return null;
    }

    private static void hp(String str) {
        hp.hp.remove(str);
    }

    public static String hp(Uri uri) {
        if (uri == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(uri.getScheme());
        sb.append("://");
        sb.append(uri.getHost());
        int port = uri.getPort();
        if (port > 0) {
            sb.append(":");
            sb.append(port);
        }
        String path = uri.getPath();
        if (!TextUtils.isEmpty(path)) {
            sb.append(path);
        }
        return sb.toString();
    }
}
