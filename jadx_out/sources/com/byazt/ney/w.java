package com.byazt.ney;

import android.text.TextUtils;
import com.byazt.gp.eb;
import com.byazt.zg.hq;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1539, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w extends hp {

    /* renamed from: w, reason: collision with root package name */
    public static volatile w f23555w;

    /* renamed from: j, reason: collision with root package name */
    public final Map<String, double[]> f23556j;
    public final Map<String, String> jx;

    private w() {
        super("gm_label_v_v_s");
        this.jx = new ConcurrentHashMap();
        this.f23556j = new ConcurrentHashMap();
        l();
    }

    public static w j() {
        if (f23555w == null) {
            synchronized (w.class) {
                try {
                    if (f23555w == null) {
                        f23555w = new w();
                    }
                } finally {
                }
            }
        }
        return f23555w;
    }

    public static String jx(int i2) {
        com.byazt.tgw.jx jxVar;
        if (com.byazt.di.l.l().qu() && (jxVar = com.byazt.di.l.l().ea().get(String.valueOf(i2))) != null) {
            return jxVar.hp();
        }
        return null;
    }

    public static String w() throws JSONException {
        if (!com.byazt.di.l.l().qu()) {
            return null;
        }
        Set<Map.Entry<String, com.byazt.tgw.jx>> setEntrySet = com.byazt.di.l.l().ea().entrySet();
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, com.byazt.tgw.jx> entry : setEntrySet) {
            String key = entry.getKey();
            com.byazt.tgw.jx value = entry.getValue();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.putOpt("label_name", value.hp());
                jSONObject2.putOpt("timestamp", value.l());
                jSONObject2.putOpt("lower_bound", Double.valueOf(value.a()));
                jSONObject2.putOpt("upper_bound", Double.valueOf(value.w()));
                jSONObject.putOpt(hp.hp(Integer.parseInt(key)), jSONObject2);
            } catch (Exception unused) {
            }
        }
        return jSONObject.toString();
    }

    public void hp(int i2, double d2) {
        if (com.byazt.di.l.l().qu()) {
            hp(2, String.valueOf(i2), 1, d2);
        }
    }

    public Map<String, JSONObject> l(int i2) {
        if (!com.byazt.di.l.l().qu()) {
            return new HashMap();
        }
        HashMap map = new HashMap();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = null;
        for (Map.Entry<String, double[]> entry : (i2 == 2 ? this.f23556j : l(this.jx)).entrySet()) {
            String key = entry.getKey();
            double[] value = entry.getValue();
            try {
                if (!TextUtils.isEmpty(key)) {
                    Map<String, JSONObject> mapHp = hp(key, value);
                    JSONObject jSONObject3 = mapHp.get("config_req_label_value");
                    JSONObject jSONObject4 = mapHp.get("event_label_value");
                    if (jSONObject4 != null) {
                        jSONObject.putOpt(key, jSONObject4);
                    }
                    if (jSONObject3 != null) {
                        if (jSONObject2 == null) {
                            jSONObject2 = new JSONObject();
                        }
                        jSONObject2.putOpt(key, jSONObject3);
                    }
                }
            } catch (Exception unused) {
            }
        }
        map.put("event_label_value_root", jSONObject);
        if (jSONObject2 != null) {
            map.put("config_req_label_value_root", jSONObject2);
        }
        j(i2);
        return map;
    }

    private Map<String, JSONObject> hp(String str, double[] dArr) throws JSONException {
        HashMap map = new HashMap();
        String strHp = hp(dArr);
        JSONObject jSONObject = null;
        try {
            if (!strHp.equals("-1")) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.putOpt("input", l(strHp));
                    jSONObject2.putOpt("timestamp", String.valueOf(System.currentTimeMillis()));
                } catch (JSONException unused) {
                }
                jSONObject = jSONObject2;
            }
        } catch (JSONException unused2) {
        }
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        try {
            jSONObject4.putOpt("ecpm", strHp);
            jSONObject4.putOpt("timestamp", String.valueOf(System.currentTimeMillis()));
            jSONObject3.putOpt("ecpm_info", jSONObject4);
        } catch (JSONException unused3) {
        }
        map.put("config_req_label_value", jSONObject);
        map.put("event_label_value", jSONObject3);
        return map;
    }

    private void j(int i2) {
        if (i2 == 2) {
            this.f23556j.clear();
            return;
        }
        this.jx.clear();
        com.byazt.ctq.jx jxVar = this.f23553l;
        if (jxVar != null) {
            jxVar.clear();
        }
    }

    public void hp(JSONObject jSONObject, JSONObject jSONObject2) {
        if (com.byazt.di.l.l().qu() && jSONObject2 != null) {
            try {
                jSONObject.putOpt("label_inputs", jSONObject2);
            } catch (JSONException unused) {
            }
        }
    }

    public void hp(JSONObject jSONObject) {
        if (com.byazt.di.l.l().qu()) {
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry<String, com.byazt.tgw.jx> entry : com.byazt.di.l.l().ea().entrySet()) {
                String key = entry.getKey();
                com.byazt.tgw.jx value = entry.getValue();
                if (value != null) {
                    try {
                        jSONObject2.putOpt(key, hp(value));
                    } catch (JSONException unused) {
                    }
                }
            }
            if (jSONObject != null) {
                jSONObject2.length();
            }
            try {
                jSONObject.putOpt("last_label_outputs", jSONObject2);
            } catch (JSONException unused2) {
            }
        }
    }

    private Map<String, double[]> l(Map<String, String> map) {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        if (map != null && map.size() != 0) {
            Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
            while (it.hasNext()) {
                try {
                    String value = it.next().getValue();
                    if (!TextUtils.isEmpty(value)) {
                        String[] strArrSplit = value.split("_");
                        String str = strArrSplit[0];
                        String str2 = strArrSplit[1];
                        String str3 = strArrSplit[2];
                        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                            if (com.byazt.di.l.l().hp(System.currentTimeMillis() - Long.parseLong(strArrSplit[2]))) {
                                double[] dArr = (double[]) concurrentHashMap.get(str);
                                if (dArr == null) {
                                    dArr = new double[2];
                                }
                                dArr[0] = dArr[0] + 1.0d;
                                dArr[1] = dArr[1] + Double.parseDouble(str2);
                                concurrentHashMap.put(str, dArr);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        return concurrentHashMap;
    }

    public void hp(boolean z2, com.byazt.lsx.j jVar, JSONObject jSONObject, Map<String, Object> map) {
        jVar.hp(MediationConstant.KEY_REASON, Integer.valueOf(!z2 ? 1 : 0));
        if (map != null) {
            l(jSONObject);
            if (jSONObject != null) {
                map.put("label", jSONObject);
            }
        }
    }

    @Override // com.byazt.ney.hp
    public JSONObject hp(com.byazt.tgw.jx jxVar) throws JSONException {
        if (jxVar == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("label_name", jxVar.hp());
            jSONObject.putOpt("label_id", Integer.valueOf(jxVar.jx()));
            jSONObject.putOpt("label_version", jxVar.j());
            jSONObject.putOpt("upper_bound", Double.valueOf(jxVar.w()));
            jSONObject.putOpt("lower_bound", Double.valueOf(jxVar.a()));
            jSONObject.putOpt("timestamp", jxVar.l());
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private void l(JSONObject jSONObject) throws JSONException {
        Map<String, com.byazt.tgw.jx> mapEa = com.byazt.di.l.l().ea();
        if (mapEa.size() > 0 && jSONObject == null) {
            jSONObject = new JSONObject();
        }
        for (Map.Entry<String, com.byazt.tgw.jx> entry : mapEa.entrySet()) {
            String key = entry.getKey();
            com.byazt.tgw.jx value = entry.getValue();
            if (value != null) {
                try {
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(String.valueOf(key));
                    if (jSONObjectOptJSONObject == null) {
                        jSONObjectOptJSONObject = new JSONObject();
                        jSONObject.put(String.valueOf(key), jSONObjectOptJSONObject);
                        jSONObjectOptJSONObject.put("ecpm_info", new JSONObject());
                    }
                    jSONObjectOptJSONObject.putOpt("label_info", hp(value));
                    jSONObjectOptJSONObject.putOpt("ecpm_ttl", Integer.valueOf(com.byazt.di.l.l().an()));
                } catch (JSONException unused) {
                }
            }
        }
    }

    public void hp(Map<String, ConcurrentHashMap<String, List<eb>>> map) {
        int adType;
        ConcurrentHashMap<String, List<eb>> value;
        if (!com.byazt.di.l.l().qu() || map == null || map.isEmpty()) {
            return;
        }
        for (Map.Entry<String, ConcurrentHashMap<String, List<eb>>> entry : map.entrySet()) {
            String key = entry.getKey();
            ConcurrentHashMap<String, List<eb>> value2 = entry.getValue();
            if (value2 != null) {
                Iterator<Map.Entry<String, List<eb>>> it = value2.entrySet().iterator();
                while (it.hasNext()) {
                    List<eb> value3 = it.next().getValue();
                    if (value3 != null && !value3.isEmpty() && value3.get(0) != null && value3.get(0).hp != null) {
                        adType = value3.get(0).hp.getAdType();
                        break;
                    }
                }
                adType = 0;
            } else {
                adType = 0;
            }
            com.byazt.tgw.l lVarHp = com.byazt.dl.j.hp().hp(key, adType, 101);
            if (lVarHp != null && lVarHp.q() == 1 && (value = entry.getValue()) != null) {
                Iterator<Map.Entry<String, List<eb>>> it2 = value.entrySet().iterator();
                while (it2.hasNext()) {
                    List<eb> value4 = it2.next().getValue();
                    if (value4 != null && !value4.isEmpty() && value4.get(0) != null && value4.get(0).hp != null) {
                        hq.hp(value4);
                        eb ebVar = value4.get(0);
                        l(ebVar.hp.getAdType(), ebVar.hp.getCpm());
                    }
                }
            }
        }
        com.byazt.bcj.l.hp(com.byazt.di.l.l()).hp(2, (JSONObject) null);
    }

    @Override // com.byazt.ney.hp
    public boolean l(String str, JSONObject jSONObject, Map<String, Object> map) throws JSONException {
        com.byazt.tgw.jx jxVar = com.byazt.di.l.l().ea().get(str);
        if (jxVar == null) {
            return false;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject.put(str, jSONObject2);
            jSONObject2.putOpt("label_info", hp(jxVar));
            jSONObject2.putOpt("ecpm_ttl", Integer.valueOf(com.byazt.di.l.l().an()));
            return true;
        } catch (JSONException unused) {
            return false;
        }
    }

    public void l(int i2, double d2) {
        if (com.byazt.di.l.l().qu()) {
            String strValueOf = String.valueOf(i2);
            double[] dArr = this.f23556j.get(strValueOf);
            if (dArr == null) {
                dArr = new double[2];
            }
            dArr[0] = dArr[0] + 1.0d;
            dArr[1] = dArr[1] + d2;
            this.f23556j.put(strValueOf, dArr);
        }
    }

    @Override // com.byazt.ney.hp
    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !str.startsWith("cpm_key_")) {
            return;
        }
        this.jx.put(str, str2);
    }

    @Override // com.byazt.ney.hp
    public Map<String, String> hp() {
        return this.jx;
    }

    @Override // com.byazt.ney.hp
    public void hp(String str, int i2, String str2) {
        if (i2 == 2) {
            this.jx.put(str, str2);
        }
    }
}
