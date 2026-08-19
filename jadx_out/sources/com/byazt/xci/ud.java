package com.byazt.xci;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 591})
/* loaded from: classes3.dex */
public class ud {

    /* renamed from: l, reason: collision with root package name */
    public static final Set<jx> f27555l = new CopyOnWriteArraySet();
    public static boolean hp = false;
    public static final Object jx = new Object();

    public interface hp {
        void hp(jx jxVar);

        void l(jx jxVar);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 2305})
    public static class j {
        public final String hp;
        public final List<l> jx = new ArrayList();

        /* renamed from: l, reason: collision with root package name */
        public final String f27557l;

        public j(JSONObject jSONObject) {
            this.hp = jSONObject.optString("resource_url");
            this.f27557l = jSONObject.optString("content_hash");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("channel_resource_list");
            if (jSONArrayOptJSONArray != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null) {
                        this.jx.add(new l(jSONObjectOptJSONObject));
                    }
                }
            }
        }

        public String hp() {
            return this.hp;
        }

        public JSONObject j() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("resource_url", this.hp);
                jSONObject.put("content_hash", this.f27557l);
                JSONArray jSONArray = new JSONArray();
                Iterator<l> it = this.jx.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().jx());
                }
                jSONObject.put("channel_resource_list", jSONArray);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }

        public List<l> jx() {
            return this.jx;
        }

        public String l() {
            return this.f27557l;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, AVMDLDataLoader.KeyIsMarkedFileIOSpeed})
    public static class jx {
        public final String hp;
        public final List<j> jx = new ArrayList();

        /* renamed from: l, reason: collision with root package name */
        public final String f27558l;

        public jx(JSONObject jSONObject) {
            this.hp = jSONObject.optString("channel");
            this.f27558l = jSONObject.optString("prefix");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("resource");
            if (jSONArrayOptJSONArray != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null) {
                        this.jx.add(new j(jSONObjectOptJSONObject));
                    }
                }
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                jx jxVar = (jx) obj;
                if (!Objects.equals(this.hp, jxVar.hp) || !Objects.equals(this.f27558l, jxVar.f27558l)) {
                    return false;
                }
                j jVarJx = jx();
                j jVarJx2 = jxVar.jx();
                if (jVarJx != null && jVarJx2 != null) {
                    return Objects.equals(jVarJx.hp(), jVarJx2.hp()) && Objects.equals(jVarJx.l(), jVarJx2.l());
                }
                if (jVarJx == jVarJx2) {
                    return true;
                }
            }
            return false;
        }

        public List<j> getResources() {
            return this.jx;
        }

        public int hashCode() {
            String str = this.hp;
            int iHashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f27558l;
            int iHashCode2 = iHashCode + (str2 != null ? str2.hashCode() : 0);
            j jVarJx = jx();
            if (jVarJx == null) {
                return iHashCode2;
            }
            String strHp = jVarJx.hp();
            String strL = jVarJx.l();
            return (((iHashCode2 * 31) + (strHp != null ? strHp.hashCode() : 0)) * 31) + (strL != null ? strL.hashCode() : 0);
        }

        public String j() {
            String str = this.hp;
            if (jx() == null) {
                return str;
            }
            return str + "$" + com.byazt.ymw.a.l(jx().l());
        }

        public j jx() {
            if (this.jx.isEmpty()) {
                return null;
            }
            return this.jx.get(0);
        }

        public JSONObject w() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("channel", this.hp);
                jSONObject.put("prefix", this.f27558l);
                JSONArray jSONArray = new JSONArray();
                Iterator<j> it = this.jx.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().j());
                }
                jSONObject.put("resource", jSONArray);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }

        public String hp() {
            return this.hp;
        }

        public String l() {
            return this.f27558l;
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR, 2303})
    public static class l {

        /* renamed from: a, reason: collision with root package name */
        public final String f27559a;
        public final long hp;

        /* renamed from: j, reason: collision with root package name */
        public final String f27560j;
        public final String jx;

        /* renamed from: l, reason: collision with root package name */
        public final String f27561l;

        /* renamed from: w, reason: collision with root package name */
        public final String f27562w;

        public l(JSONObject jSONObject) {
            this.hp = jSONObject.optLong("size", 0L);
            this.f27561l = jSONObject.optString(TKDownloadReason.KSAD_TK_MD5);
            this.jx = jSONObject.optString("content_hash");
            this.f27560j = jSONObject.optString("url");
            this.f27562w = jSONObject.optString("mime_type");
            this.f27559a = jSONObject.optString("file_name");
        }

        public String hp() {
            return this.f27562w;
        }

        public JSONObject jx() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("size", this.hp);
                jSONObject.put(TKDownloadReason.KSAD_TK_MD5, this.f27561l);
                jSONObject.put("content_hash", this.jx);
                jSONObject.put("mime_type", this.f27562w);
                jSONObject.put("file_name", this.f27559a);
                jSONObject.put("url", this.f27560j);
            } catch (JSONException unused) {
            }
            return jSONObject;
        }

        public String l() {
            return this.f27559a;
        }
    }

    public static void hp(JSONObject jSONObject, hp hpVar) {
        if (jSONObject == null) {
            return;
        }
        com.byazt.zn.kg.hp().hp(hpVar);
        hp = jSONObject.optBoolean("h5_cache_resources_enable", false);
        l(jSONObject, hpVar);
    }

    private static void jx(com.byazt.ctq.w wVar) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        final JSONObject jSONObject = new JSONObject();
        try {
            Set<jx> set = f27555l;
            jSONObject.put("res_length", set.size());
            JSONArray jSONArray2 = new JSONArray();
            for (jx jxVar : set) {
                jSONArray.put(jxVar.w());
                StringBuilder sb = new StringBuilder();
                sb.append(jxVar.hp);
                sb.append("$");
                sb.append(jxVar.f27558l);
                sb.append("$");
                sb.append(jxVar.jx() == null ? "" : jxVar.jx().hp());
                jSONArray2.put(sb.toString());
            }
            jSONObject.put("res_infos", jSONArray2);
            com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.xci.ud.2
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() {
                    com.byazt.jlb.l lVarHp = com.byazt.jlb.l.l().hp("h5_resource_report");
                    lVarHp.l(jSONObject.toString());
                    return lVarHp;
                }
            }, "h5_resource_report");
            wVar.put("h5_cache_resources", jSONArray.toString());
        } catch (OutOfMemoryError e2) {
            com.byazt.lf.k.hp().hp("h5_resource_oom", jSONObject, e2);
        } catch (JSONException unused) {
        }
    }

    private static void l(JSONObject jSONObject, final hp hpVar) {
        if (hp) {
            final HashSet hashSet = new HashSet();
            String str = "h5_cache_resources";
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("h5_cache_resources");
            if (jSONArrayOptJSONArray != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null) {
                        hashSet.add(new jx(jSONObjectOptJSONObject));
                    }
                }
            }
            com.byazt.dnb.s.hp(new com.byazt.uid.eb(str) { // from class: com.byazt.xci.ud.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.zn.kg.hp().hp(hashSet, hpVar);
                }
            });
        }
    }

    public static Set<jx> hp() {
        return f27555l;
    }

    public static void hp(com.byazt.ctq.w wVar) {
        synchronized (jx) {
            try {
                hp = wVar.get("h5_cache_resources_enable", false);
                JSONArray jSONArray = new JSONArray(wVar.get("h5_cache_resources", ""));
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null) {
                        f27555l.add(new jx(jSONObjectOptJSONObject));
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void l(com.byazt.ctq.w wVar) {
        wVar.put("h5_cache_resources_enable", hp);
    }

    public static void l(com.byazt.ctq.w wVar, jx jxVar) {
        synchronized (jx) {
            f27555l.remove(jxVar);
            jx(wVar);
        }
    }

    public static void hp(com.byazt.ctq.w wVar, jx jxVar) {
        synchronized (jx) {
            f27555l.add(jxVar);
            jx(wVar);
        }
    }
}
