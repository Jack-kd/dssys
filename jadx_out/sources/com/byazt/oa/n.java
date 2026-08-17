package com.byazt.oa;

import android.net.Uri;
import android.text.TextUtils;
import android.util.LruCache;
import com.anythink.core.common.d.i;
import com.byazt.oa.gu;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 149, MediaPlayer.MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS})
/* loaded from: classes3.dex */
public class n {

    /* renamed from: j, reason: collision with root package name */
    public final String f23905j;
    public final gu.hp jx;

    /* renamed from: l, reason: collision with root package name */
    public final LruCache<String, jx> f23906l;
    public final Map<String, List<l>> hp = new ConcurrentHashMap();

    /* renamed from: w, reason: collision with root package name */
    public volatile boolean f23907w = false;

    @com.byazt.kj.hp(hp = {0, 1, 149, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SKIP_FIND_UNNECESSARY_STREAM})
    public static class hp extends IllegalStateException {
        public hp(String str) {
            super(str);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 149, 1276})
    public static final class jx {
        public cx hp = cx.PUBLIC;

        /* renamed from: l, reason: collision with root package name */
        public Set<String> f23909l = new HashSet();
        public Set<String> jx = new HashSet();
    }

    @com.byazt.kj.hp(hp = {0, 1, 149, 1166})
    public static final class l {
        public Pattern hp;

        /* renamed from: j, reason: collision with root package name */
        public List<String> f23910j;
        public List<String> jx;

        /* renamed from: l, reason: collision with root package name */
        public cx f23911l;

        private l() {
        }
    }

    @WorkerThread
    public n(String str, int i2, gu.hp hpVar, final Executor executor, JSONObject jSONObject) throws JSONException {
        this.f23905j = str;
        if (i2 <= 0) {
            this.f23906l = new LruCache<>(16);
        } else {
            this.f23906l = new LruCache<>(i2);
        }
        this.jx = hpVar;
        if (jSONObject != null) {
            update(jSONObject);
        } else {
            j(str);
            new Object() { // from class: com.byazt.oa.n.1
            };
        }
    }

    private static String j(String str) {
        return "com.bytedance.ies.web.jsbridge2.PermissionConfig.".concat(String.valueOf(str));
    }

    private List<l> jx(String str) throws hp {
        if (this.f23907w) {
            return this.hp.get(str);
        }
        throw new hp("Permission config is outdated!");
    }

    private static String l(String str) {
        String[] strArrSplit;
        int length;
        if (str == null || (length = (strArrSplit = str.split("[.]")).length) < 2) {
            return null;
        }
        if (length == 2) {
            return str;
        }
        return strArrSplit[length - 2] + i.f2495E + strArrSplit[length - 1];
    }

    public jx hp(String str, Set<String> set) {
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        String authority = uri.getAuthority();
        String string = new Uri.Builder().scheme(scheme).authority(authority).path(uri.getPath()).toString();
        jx jxVar = new jx();
        if (authority == null || authority.isEmpty()) {
            jxVar.hp = cx.PUBLIC;
            return jxVar;
        }
        for (String str2 : set) {
            if (authority.equals(str2) || authority.endsWith(i.f2495E.concat(String.valueOf(str2)))) {
                jxVar.hp = cx.PRIVATE;
                return jxVar;
            }
        }
        jx jxVar2 = this.f23906l.get(string);
        return jxVar2 != null ? jxVar2 : hp(string);
    }

    public void update(JSONObject jSONObject) throws JSONException {
        hp(jSONObject);
        j(this.f23905j);
    }

    @WorkerThread
    private static l l(JSONObject jSONObject) throws JSONException {
        l lVar = new l();
        lVar.hp = Pattern.compile(jSONObject.getString("pattern"));
        lVar.f23911l = cx.hp(jSONObject.getString("group"));
        lVar.jx = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("included_methods");
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                lVar.jx.add(jSONArrayOptJSONArray.getString(i2));
            }
        }
        lVar.f23910j = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("excluded_methods");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i3 = 0; i3 < jSONArrayOptJSONArray2.length(); i3++) {
                lVar.f23910j.add(jSONArrayOptJSONArray2.getString(i3));
            }
        }
        return lVar;
    }

    @WorkerThread
    private void hp(JSONObject jSONObject) throws JSONException {
        this.hp.clear();
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("content");
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONArray jSONArray = jSONObject2.getJSONArray(next);
                LinkedList linkedList = new LinkedList();
                this.hp.put(next, linkedList);
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    linkedList.add(l(jSONArray.getJSONObject(i2)));
                }
            }
        } catch (JSONException e2) {
            q.l("Parse configurations failed, response: " + jSONObject.toString(), e2);
        }
        this.f23907w = true;
    }

    private jx hp(String str) throws hp {
        jx jxVar = new jx();
        Uri uri = Uri.parse(str);
        String scheme = uri.getScheme();
        String authority = uri.getAuthority();
        String strL = l(authority);
        if (!TextUtils.isEmpty(scheme) && !TextUtils.isEmpty(authority) && strL != null) {
            List<l> listJx = jx(strL);
            if (listJx == null) {
                return jxVar;
            }
            for (l lVar : listJx) {
                if (lVar.hp.matcher(str).find()) {
                    if (lVar.f23911l.compareTo(jxVar.hp) >= 0) {
                        jxVar.hp = lVar.f23911l;
                    }
                    jxVar.f23909l.addAll(lVar.jx);
                    jxVar.jx.addAll(lVar.f23910j);
                }
            }
            this.f23906l.put(str, jxVar);
            return jxVar;
        }
        jxVar.hp = cx.PUBLIC;
        return jxVar;
    }
}
