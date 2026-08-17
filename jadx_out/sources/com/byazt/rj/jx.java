package com.byazt.rj;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.core.view.PointerIconCompat;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.byazt.gg.a;
import com.byazt.jkd.gu;
import com.byazt.jz.sz;
import com.byazt.ot.a;
import com.byazt.ot.j;
import com.byazt.ot.w;
import com.byazt.rsz.l;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.umeng.analytics.pro.cl;
import com.umeng.analytics.pro.g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_ZOOM_OUT, 30})
/* loaded from: classes3.dex */
public class jx {

    /* renamed from: a, reason: collision with root package name */
    public static String f25207a;
    public static String eb;

    /* renamed from: j, reason: collision with root package name */
    public static long f25208j;

    /* renamed from: w, reason: collision with root package name */
    public static long f25211w;
    public static AtomicInteger hp = new AtomicInteger(0);

    /* renamed from: l, reason: collision with root package name */
    public static int f25209l = -1;
    public static int jx = -1;

    /* renamed from: s, reason: collision with root package name */
    public static volatile int f25210s = 0;

    @com.byazt.kj.hp(hp = {0, 1, PointerIconCompat.TYPE_ZOOM_OUT, 20})
    /* renamed from: com.byazt.rj.jx$4, reason: invalid class name */
    public static class AnonymousClass4 implements com.byazt.ot.jx {
        public final /* synthetic */ Map hp;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ StringBuilder f25214j;
        public final /* synthetic */ JSONArray jx;

        /* renamed from: l, reason: collision with root package name */
        public final /* synthetic */ AtomicBoolean f25215l;

        public AnonymousClass4(Map map, AtomicBoolean atomicBoolean, JSONArray jSONArray, StringBuilder sb) {
            this.hp = map;
            this.f25215l = atomicBoolean;
            this.jx = jSONArray;
            this.f25214j = sb;
        }

        @Override // com.byazt.ot.jx
        public void hp(com.byazt.rsz.hp hpVar) {
            this.hp.put(hpVar.s().hp(), Long.valueOf(System.currentTimeMillis()));
            hpVar.hp(new j() { // from class: com.byazt.rj.jx.4.1
                @Override // com.byazt.ot.j
                public w jx() {
                    return new w() { // from class: com.byazt.rj.jx.4.1.2
                        @Override // com.byazt.ot.w
                        public void hp(com.byazt.rsz.hp hpVar2, Map<String, Object> map) throws JSONException {
                            try {
                                com.byazt.psp.hp hpVarS = hpVar2.s();
                                String strHp = hpVarS.hp();
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put(NotificationCompat.CATEGORY_EVENT, strHp);
                                jSONObject.put("status", true);
                                Long l2 = (Long) AnonymousClass4.this.hp.remove(strHp);
                                if (l2 != null) {
                                    jSONObject.put("duration", System.currentTimeMillis() - l2.longValue());
                                }
                                jx.hp(map, jSONObject);
                                AnonymousClass4.this.f25215l.set(true);
                                AnonymousClass4.this.jx.put(jSONObject);
                                if (TextUtils.isEmpty(hpVarS.l())) {
                                    return;
                                }
                                AnonymousClass4.this.f25214j.append(Uri.parse(hpVarS.l()).getHost());
                            } catch (JSONException unused) {
                            }
                        }

                        @Override // com.byazt.ot.w
                        public void hp(com.byazt.rsz.hp hpVar2, Map<String, Object> map, final com.byazt.ppg.hp hpVar3) throws JSONException {
                            if (hpVar3 != null) {
                                try {
                                    jx.hp(map, new com.byazt.ex.hp() { // from class: com.byazt.rj.jx.4.1.2.1
                                        @Override // com.byazt.ex.hp
                                        public int hp() {
                                            return hpVar3.hp();
                                        }

                                        @Override // com.byazt.ex.hp
                                        public String l() {
                                            return hpVar3.l();
                                        }
                                    });
                                } catch (JSONException unused) {
                                    return;
                                }
                            }
                            String strHp = hpVar2.s().hp();
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put(NotificationCompat.CATEGORY_EVENT, strHp);
                            jSONObject.put("status", false);
                            Long l2 = (Long) AnonymousClass4.this.hp.remove(strHp);
                            if (l2 != null) {
                                jSONObject.put("duration", System.currentTimeMillis() - l2.longValue());
                            }
                            jx.hp(map, jSONObject);
                            AnonymousClass4.this.jx.put(jSONObject);
                        }
                    };
                }

                @Override // com.byazt.ot.j
                public a l() {
                    return new a() { // from class: com.byazt.rj.jx.4.1.1
                        @Override // com.byazt.ot.a
                        public JSONObject hp(JSONObject jSONObject, com.byazt.rsz.hp hpVar2) throws JSONException {
                            Map<String, Object> mapHp = hpVar2.hp();
                            if (mapHp != null) {
                                try {
                                    JSONObject jSONObject2 = new JSONObject();
                                    for (Map.Entry<String, Object> entry : mapHp.entrySet()) {
                                        jSONObject2.put(entry.getKey(), entry.getValue());
                                    }
                                    jSONObject.put("u_context", jSONObject2);
                                } catch (JSONException unused) {
                                }
                            }
                            return jSONObject;
                        }

                        @Override // com.byazt.ot.a
                        public Map<String, Object> hp(Map<String, Object> map, com.byazt.rsz.hp hpVar2) {
                            return Collections.EMPTY_MAP;
                        }

                        @Override // com.byazt.ot.a
                        public String hp(String str, com.byazt.rsz.hp hpVar2) {
                            return "";
                        }
                    };
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(String str) throws JSONException {
        f25209l = 100008;
        long jCurrentTimeMillis = System.currentTimeMillis() - f25211w;
        f25208j = jCurrentTimeMillis;
        l(f25209l, jx, jCurrentTimeMillis);
        eb(str);
    }

    private static void eb(String str) throws JSONException {
        String strRm;
        String strAj;
        JSONObject jSONObjectL;
        f25209l = -1;
        gu guVarL = sz.l();
        if (guVarL != null && (jSONObjectL = l((strRm = guVarL.rm()), (strAj = guVarL.aj()), str)) != null && jSONObjectL.length() > 0) {
            jx = 2;
            f25207a = strRm;
            eb = strAj;
            long jCurrentTimeMillis = System.currentTimeMillis() - f25211w;
            f25208j = jCurrentTimeMillis;
            l(f25209l, jx, jCurrentTimeMillis);
            jx(jSONObjectL);
            return;
        }
        JSONObject jSONObjectJx = jx();
        if (jSONObjectJx == null || jSONObjectJx.length() <= 0) {
            hp.set(3);
            l(f25209l, jx, f25208j);
            return;
        }
        jx = 0;
        eb = "uc_dsl/uc_dsl.bin";
        long jCurrentTimeMillis2 = System.currentTimeMillis() - f25211w;
        f25208j = jCurrentTimeMillis2;
        l(f25209l, jx, jCurrentTimeMillis2);
        jx(jSONObjectJx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void jx(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null || jSONObject.length() <= 0) {
            jSONObject = jx();
        }
        if (jSONObject == null || jSONObject.length() <= 0) {
            hp.set(3);
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("template_info");
        if (jSONObjectOptJSONObject != null) {
            f25210s = jSONObjectOptJSONObject.optInt(cl.f49059n);
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("event_template");
        if (jSONObjectOptJSONObject2 == null || jSONObjectOptJSONObject2.length() <= 0) {
            hp.set(3);
        } else {
            com.byazt.psp.l.INSTANCE.hp(jSONObjectOptJSONObject2);
            hp.set(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.byazt.ctq.w w(String str) {
        return com.byazt.ry.j.l(str, "uchain_data");
    }

    public static boolean l() {
        return hp() >= 3000;
    }

    private static JSONObject l(String str, String str2, String str3) {
        if ((TextUtils.isEmpty(str2) && TextUtils.isEmpty(str)) || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String str4 = w(str3).get(str, "");
            if (TextUtils.isEmpty(str4)) {
                return null;
            }
            String strJx = com.byazt.ymw.hp.jx(str4);
            jx = 2;
            f25207a = str;
            eb = str2;
            return new JSONObject(strJx);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void hp(String str, String str2, final String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            str = "95d9ae8de4e66aaf458fdd49879c67fa";
            str2 = "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/uchain/20108/uchain_dsl.bin";
        }
        f25207a = str;
        eb = str2;
        f25211w = System.currentTimeMillis();
        JSONObject jSONObjectL = l(f25207a, eb, str3);
        if (jSONObjectL != null && jSONObjectL.length() > 0) {
            jx = 2;
            long jCurrentTimeMillis = System.currentTimeMillis() - f25211w;
            f25208j = jCurrentTimeMillis;
            l(f25209l, jx, jCurrentTimeMillis);
            jx(jSONObjectL);
            return;
        }
        com.byazt.ap.hp hpVarW = com.byazt.cm.w.hp().l().w();
        if (hpVarW == null) {
            hp.set(3);
            return;
        }
        hpVarW.hp(eb);
        final String str4 = f25207a;
        final String str5 = eb;
        hpVarW.hp(new com.byazt.mnb.hp() { // from class: com.byazt.rj.jx.1
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) throws JSONException {
                int unused = jx.jx = 1;
                String unused2 = jx.f25207a = str4;
                String unused3 = jx.eb = str5;
                if (lVar != null) {
                    try {
                        if (lVar.q()) {
                            JSONObject jSONObjectHp = com.byazt.lca.a.hp(lVar.gu(), "uchain_dsl");
                            long unused4 = jx.f25208j = System.currentTimeMillis() - jx.f25211w;
                            if (jSONObjectHp != null && jSONObjectHp.length() > 0) {
                                jx.l(jx.f25209l, jx.jx, jx.f25208j);
                                jx.jx(jSONObjectHp);
                                jx.w(str3).put(str4, com.byazt.ymw.hp.l(jSONObjectHp.toString()));
                                return;
                            }
                            jx.a(str3);
                            return;
                        }
                    } catch (Throwable unused5) {
                        jx.a(str3);
                        return;
                    }
                }
                jx.a(str3);
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) throws JSONException {
                int unused = jx.jx = 1;
                jx.a(str3);
            }
        });
    }

    public static JSONObject jx() {
        try {
            return new JSONObject("{\"template_info\":{\"version\":\"2.1.8\"},\"event_template\":{\"clickEvent\":{\"main\":\"open_sass_live\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"open_sass_live\",\"scheme\":\"uchain://open_sass_live?ad_id=${ad_id}&ad_info=${ad_info}&log_extra=${ext}&coupon=${coupon}&ec_schema=${ec_schema}&ecom_live_params=${ecom_live_params}&live_interaction_type=${live_interaction_type}&live_room_id=${live_room_id}&deep_link=${deep_link}&landing_type=${landing_type}&saas_info=${saas_info}\",\"priority\":1,\"condition\":\"${coupon!=null || (ec_schema!=null&&ec_schema!='') || (live_room_id!=null&&live_room_id!='')}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[{\"name\":\"open_miniapp\"}]}},{\"name\":\"open_miniapp\",\"scheme\":\"uchain://open_miniapp?ad_id=${ad_id}&ad_info=${ad_info}&log_extra=${ext}&wc_miniapp_info=${wc_miniapp_info}&target_url=${target_url}\",\"condition\":\"${wc_miniapp_info!=null}\",\"priority\":2,\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[{\"condition\":\"${(is_video_lp==true||if_both_open==1)&&deep_link==null&&ulink==null}\",\"name\":\"open_landing_page\"},{\"condition\":\"${deep_link!=null||ulink!=null||(is_video_lp!=true&&if_both_open==0)}\",\"name\":\"open_scheme\"}]}},{\"name\":\"open_landing_page\",\"scheme\":\"uchain://open_landing_page?ad_id=${ad_id}&ad_info=${ad_info}&log_extra=${ext}&interaction_type=${interaction_type}&title=${title!=null?title:'广告'}&url=${target_url}&button_text=${button_text!=null?button_text:'立即下载'}&gecko_id=${gecko_id}&block_auto_open=${block_auto_open}&ugeno=${ugeno}&page_render_type=${page_render_type}&session_params=${session_params}&dylite_info=${dylite_info}&filter_words=${filter_words}&video=${video}&app_info=${app}&use_media_video_player=${use_media_video_player}&source=${source}&title=${title}&image_mode=${image_mode}&landing_page_conf=${landing_page_conf}&image=${image}&landing_scroll_percentage=${landing_scroll_percentage}&sdk_derive_info=${sdk_derive_info}&dynamic_join_type=${dynamic_join_type}&audio=${audio}&disable_video_join=${disable_video_join}&disable_top_bar=${disable_top_bar}&disable_rtn_button=${disable_rtn_button}&disable_safe_area=${disable_safe_area}&gnd_prefetch_timing=${gnd_prefetch_timing}&gnd_prefetch_cache_key=${gnd_prefetch_cache_key}&direct_landing_page_info=${direct_landing_page_info}&reward_browse_type=${reward_browse_type}&voice_control=${voice_control}&orientation=${orientation}&video_voice_control=${video_voice_control}&if_lpua_package=${if_lpua_package}\",\"priority\":4,\"condition\":\"${interaction_type==3||ext.interaction_type==3}\",\"params\":{},\"next\":[{\"condition\":\"${if_both_open==1&&(is_video_lp!=true||app.appleid==null||app.appleid=='0')}\",\"name\":\"download\"}],\"callback\":{\"success\":[],\"fail\":[]}},{\"name\":\"open_scheme\",\"scheme\":\"uchain://open_scheme?ad_id=${ad_id}&ad_info=${ad_info}&log_extra=${ext}&interaction_type=${interaction_type}&deep_link=${deep_link}&ulink=${ulink}&ulink_priority=${ulink_priority}&sub_convert_link=${sub_convert_link}&app_info=${app}&block_auto_open=${block_auto_open}\",\"priority\":3,\"condition\":\"${deep_link!=null||ulink!=null}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[{\"condition\":\"${(deep_link!=null&&deep_link.fallback_type==1)||(deep_link==null&&(interaction_type==3||ext.interaction_type==3))}\",\"name\":\"open_landing_page\"},{\"condition\":\"${(deep_link!=null&&deep_link.fallback_type==2)||(deep_link==null&&(interaction_type==4||ext.interaction_type==4))}\",\"name\":\"download\"}]}},{\"name\":\"download\",\"scheme\":\"uchain://download?ad_id=${ad_id}&ad_info=${ad_info}&log_extra=${ext}&app_info=${app}&download_conf=${download_conf}&appstore_jump_type=${appstore_jump_type}&market_url=${market_url}&download_sdk_conf=${download_sdk_conf}&icon=${icon}&interaction_type=${interaction_type}&skan=${skan}\",\"priority\":5,\"condition\":\"${exist(app.download_url, download_url) != null && exist(app.download_url, download_url) != '' && (interaction_type==4||ext.interaction_type==4)}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[{\"condition\":\"${if_both_open==0}\",\"name\":\"open_landing_page\"}]}}]},\"ugen_view_visibility_tracker\":{\"main\":\"report_event\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"report_event\",\"scheme\":\"uchain://report_event?label=ugen_view_visibility&ad_id=${ad_id}&log_extra=${ext}&ugen_id=${ugen_event_params.ugen_id}&visibility=${ugen_event_params.visibility}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"video_rate\":{\"main\":\"video\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"video\",\"scheme\":\"uchain://video?action=rate&identifier=${ad_info}&rate=1.0\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"video_pause\":{\"main\":\"video\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"video\",\"scheme\":\"uchain://video?action=pause&identifier=${ad_info}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"video_play\":{\"main\":\"video\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"video\",\"scheme\":\"uchain://video?action=play&identifier=${ad_info}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"video_replay\":{\"main\":\"video\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"video\",\"scheme\":\"uchain://video?action=replay&identifier=${ad_info}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"openPolicy\":{\"main\":\"open_policy\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"open_policy\",\"scheme\":\"uchain://open_policy?ad_info=${ad_info}&adx_name=${adx_name}&filter_words=${filter_words}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"continue_watch\":{\"main\":\"reward_continue\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"reward_continue\",\"scheme\":\"uchain://reward_continue\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"exit_watch\":{\"main\":\"close_reward\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"close_reward\",\"scheme\":\"uchain://close_reward\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]},\"reward_again\":{\"main\":\"reward_again\",\"lazyLoad\":\"0\",\"events\":[{\"name\":\"reward_again\",\"scheme\":\"uchain://reward_again?pression_sessions=${play_again.pression_sessions}&play_again_rit=${play_again.play_again_rit}&log_extra=${ext}\",\"params\":{},\"next\":[],\"callback\":{\"success\":[],\"fail\":[]}}]}}}");
        } catch (Exception unused) {
            return null;
        }
    }

    private static mp jx(Map<String, Object> map) {
        if (map == null || !map.containsKey("material_meta")) {
            return null;
        }
        return (mp) map.get("material_meta");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l(final int i2, final int i3, final long j2) {
        com.byazt.lf.l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.rj.jx.3
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() {
                JSONObject jSONObject = new JSONObject();
                try {
                    int i4 = i2;
                    if (i4 != -1) {
                        jSONObject.put("dsl_error_code", i4);
                    }
                    jSONObject.put("dsl_url", jx.eb);
                    jSONObject.put("dsl_md5", jx.f25207a);
                    jSONObject.put("dsl_load_type", i3);
                    jSONObject.put("dsl_load_time", j2);
                    jSONObject.put("dsl_stats_id", UUID.randomUUID());
                } catch (Throwable unused) {
                }
                return com.byazt.jlb.l.l().hp("uchain_stats_tracker").l(jSONObject.toString());
            }
        }, "uchain_stats_tracker", true);
    }

    public static boolean l(Map<String, Object> map) {
        if (map == null) {
            return false;
        }
        Object obj = map.get("has_show_dl_factors");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    public static String hp(JSONObject jSONObject) {
        com.byazt.psp.jx jxVarHp = com.byazt.psp.l.INSTANCE.hp("clickEvent");
        if (jxVarHp == null) {
            return "";
        }
        ArrayList arrayList = new ArrayList(jxVarHp.hp().values());
        Collections.sort(arrayList, new Comparator<com.byazt.psp.hp>() { // from class: com.byazt.rj.jx.2
            @Override // java.util.Comparator
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public int compare(com.byazt.psp.hp hpVar, com.byazt.psp.hp hpVar2) {
                return hpVar.w() - hpVar2.w();
            }
        });
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            Object obj = arrayList.get(i2);
            i2++;
            com.byazt.psp.hp hpVar = (com.byazt.psp.hp) obj;
            if (com.byazt.psp.jx.hp(hpVar.jx(), jSONObject, new HashMap())) {
                String strL = hpVar.l();
                if (!TextUtils.isEmpty(strL)) {
                    return Uri.parse(strL).getHost();
                }
            }
        }
        return "";
    }

    public static int hp() {
        return f25210s;
    }

    public static void hp(mp mpVar, Map<String, Object> map, String str, HashMap<String, Object> map2, String str2, HashMap<String, Object> map3, long j2) throws JSONException {
        if (hp.get() != 2) {
            f25211w = System.currentTimeMillis();
            eb(mpVar == null ? null : mpVar.xq());
        }
        if (mpVar == null) {
            return;
        }
        long jCurrentTimeMillis = j2 > 0 ? System.currentTimeMillis() - j2 : -1L;
        JSONObject jSONObjectIj = mpVar.ij();
        try {
            for (Map.Entry<String, Object> entry : map3.entrySet()) {
                jSONObjectIj.put(entry.getKey(), entry.getValue());
            }
        } catch (JSONException unused) {
        }
        UUID uuidRandomUUID = UUID.randomUUID();
        JSONArray jSONArray = new JSONArray();
        HashMap map4 = new HashMap();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        StringBuilder sb = new StringBuilder("");
        hp(str, jSONObjectIj, map2, new AnonymousClass4(map4, atomicBoolean, jSONArray, sb), (JSONObject) null);
        if (map != null) {
            map.put("uchain_event_id", uuidRandomUUID);
        }
        com.byazt.jdb.j.l(mpVar, hp(sb.toString(), mpVar));
        hp(uuidRandomUUID, str, jSONArray, mpVar, str2, j2 > 0 ? System.currentTimeMillis() - j2 : -1L, jCurrentTimeMillis, atomicBoolean.get());
    }

    public static int hp(String str, mp mpVar) {
        int i2 = 4;
        if ("download".equals(str)) {
            String strKs = mpVar.ks();
            if (mpVar.v() != null && !TextUtils.isEmpty(mpVar.v().j())) {
                strKs = mpVar.v().j();
            }
            if (ky.l(strKs)) {
                return 4;
            }
            i2 = 2;
            if (TextUtils.isEmpty(mpVar.b()) && mpVar.nf() != 2 && !com.byazt.dnb.l.hp(mpVar)) {
                return 1;
            }
        }
        return i2;
    }

    private static void hp(UUID uuid, String str, JSONArray jSONArray, mp mpVar, String str2, long j2, long j3, boolean z2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uchain_event_id", uuid);
            jSONObject.put("pre_uchain", j3);
            jSONObject.put("duration", j2);
            jSONObject.put("run_status", z2);
            jSONObject.put(cl.f49059n, hp());
            jSONObject.put(str, jSONArray);
            jSONObject.put("slot_type", ky.jl(mpVar));
            com.byazt.jdb.j.l(mpVar, str2, "uchain_event_tracker", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public static boolean hp(Map<String, Object> map) {
        if (map == null) {
            return false;
        }
        Object obj = map.get("is_feed_register_direct_download");
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return false;
    }

    public static void hp(mp mpVar, HashMap<String, Object> map, com.byazt.ci.jx jxVar) throws JSONException {
        JSONObject jSONObjectIj;
        ky.wv();
        if (jxVar == null || mpVar == null) {
            return;
        }
        String strHp = jxVar.hp("type");
        if (TextUtils.isEmpty(strHp)) {
            return;
        }
        jSONObjectIj = mpVar.ij();
        strHp.getClass();
        switch (strHp) {
            case "1":
                String strHp2 = jxVar.hp("name");
                if (!TextUtils.isEmpty(strHp2)) {
                    hp(strHp2, jSONObjectIj, map);
                    break;
                }
                break;
            case "2":
                String strHp3 = jxVar.hp("data");
                if (!TextUtils.isEmpty(strHp3)) {
                    try {
                        JSONObject jSONObject = new JSONObject(strHp3);
                        hp(jSONObject.keys().next(), jSONObjectIj, map, (com.byazt.ot.jx) null, jSONObject);
                        break;
                    } catch (JSONException unused) {
                        return;
                    }
                }
                break;
            case "3":
                String strHp4 = jxVar.hp(NativeModel.JSON_KEY_SCHEME);
                if (!TextUtils.isEmpty(strHp4)) {
                    new l.hp(strHp4, 2).hp(jSONObjectIj).hp(map).hp().hp();
                    break;
                }
                break;
        }
    }

    public static void hp(mp mpVar, HashMap<String, Object> map, a.hp hpVar) throws JSONException {
        JSONObject jSONObjectIj;
        ky.wv();
        if (hpVar.jx() == null || mpVar == null) {
            return;
        }
        Object obj = hpVar.jx().get("type");
        String strValueOf = "";
        String strValueOf2 = obj != null ? String.valueOf(obj) : "";
        if (TextUtils.isEmpty(strValueOf2)) {
            return;
        }
        jSONObjectIj = mpVar.ij();
        switch (strValueOf2) {
            case "1":
                Object obj2 = hpVar.jx().get("name");
                if (obj2 != null) {
                    strValueOf = String.valueOf(obj2);
                }
                if (!TextUtils.isEmpty(strValueOf)) {
                    hp(strValueOf, jSONObjectIj, map);
                    break;
                }
                break;
            case "2":
                Object obj3 = hpVar.jx().get("data");
                if (obj3 != null) {
                    strValueOf = String.valueOf(obj3);
                }
                if (!TextUtils.isEmpty(strValueOf)) {
                    try {
                        JSONObject jSONObject = new JSONObject(strValueOf);
                        hp(jSONObject.keys().next(), jSONObjectIj, map, (com.byazt.ot.jx) null, jSONObject);
                        break;
                    } catch (JSONException unused) {
                        return;
                    }
                }
                break;
            case "3":
                Object obj4 = hpVar.jx().get(NativeModel.JSON_KEY_SCHEME);
                if (obj4 != null) {
                    strValueOf = String.valueOf(obj4);
                }
                if (!TextUtils.isEmpty(strValueOf)) {
                    new l.hp(strValueOf, 2).hp(jSONObjectIj).hp(map).hp().hp();
                    break;
                }
                break;
        }
    }

    public static void hp(String str, JSONObject jSONObject, Map<String, Object> map, final w wVar) {
        ky.wv();
        new l.hp(str, 3).hp(jSONObject).hp(map).hp(new com.byazt.ot.jx() { // from class: com.byazt.rj.jx.5
            @Override // com.byazt.ot.jx
            public void hp(com.byazt.rsz.hp hpVar) {
                hpVar.hp(new j() { // from class: com.byazt.rj.jx.5.1
                    @Override // com.byazt.ot.j
                    public w jx() {
                        return wVar;
                    }

                    @Override // com.byazt.ot.j
                    public com.byazt.ot.a l() {
                        return null;
                    }
                });
            }
        }).hp().hp();
    }

    public static void hp(com.byazt.yrp.hp hpVar, JSONObject jSONObject, Map<String, Object> map, Map<String, Object> map2) {
        if (hpVar == null || jSONObject == null) {
            return;
        }
        com.byazt.kxp.hp hpVarHp = com.byazt.kxp.hp.hp();
        List<String> listL = com.byazt.kxp.hp.l(hpVar.getClass());
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                if (entry.getValue() != null) {
                    if (hpVar.hp() != null && hpVar.hp().containsKey(key)) {
                        map4.put(hpVar.hp().get(key), entry.getValue());
                    }
                    map3.put(key, entry.getValue());
                }
            }
        }
        hp(jSONObject, (Map<String, Object>) map4);
        for (String str : listL) {
            if (!TextUtils.isEmpty(str)) {
                map3.put(str, hp.hp(jSONObject, str));
            }
        }
        if (map2 != null) {
            map3.putAll(map2);
        }
        hpVarHp.hp(hpVar, map3);
    }

    public static void hp(JSONObject jSONObject, Map<String, Object> map) throws JSONException {
        if (jSONObject == null || map == null || map.isEmpty()) {
            return;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            hp(jSONObject, entry.getKey(), entry.getValue());
        }
    }

    private static void hp(JSONObject jSONObject, String str, Object obj) throws JSONException {
        String[] strArrSplit = str.split("\\.");
        for (int i2 = 0; i2 < strArrSplit.length - 1; i2++) {
            try {
                String str2 = strArrSplit[i2];
                if (!jSONObject.has(str2)) {
                    return;
                }
                jSONObject = jSONObject.getJSONObject(str2);
            } catch (Exception unused) {
                return;
            }
        }
        String str3 = strArrSplit[strArrSplit.length - 1];
        if (jSONObject.has(str3)) {
            jSONObject.put(str3, obj);
        }
    }

    public static mp hp(Object obj, Map<String, Object> map) {
        if (obj instanceof mp) {
            return (mp) obj;
        }
        return jx(map);
    }

    public static void hp(Map<String, Object> map, com.byazt.ex.hp hpVar) {
        if (map != null) {
            map.put("status_code", Integer.valueOf(hpVar.hp()));
            map.put("status_msg", hpVar.l());
        }
    }

    public static void hp(Map<String, Object> map, JSONObject jSONObject) throws JSONException {
        if (map == null || !l()) {
            return;
        }
        try {
            jSONObject.put("status_code", map.get("status_code"));
        } catch (JSONException unused) {
        }
    }

    public static void hp(mp mpVar, Context context, String str, Map<String, Object> map, w wVar) {
        HashMap map2 = new HashMap();
        if (map != null) {
            map2.putAll(map);
        }
        map2.put("material_meta", mpVar);
        map2.put(g.f49337X, context);
        map2.put("event_tag", str);
        map2.put("landing_page_source", Integer.valueOf(ky.j(str)));
        hp("open_landing_page", mpVar.ij(), map2, wVar);
    }

    public static void hp(String str, JSONObject jSONObject, Map<String, Object> map) {
        hp(str, jSONObject, map, (com.byazt.ot.jx) null, (JSONObject) null);
    }

    public static void hp(String str, JSONObject jSONObject, Map<String, Object> map, com.byazt.ot.jx jxVar, JSONObject jSONObject2) throws JSONException {
        ky.wv();
        try {
            jSONObject.put("u_setting", sz.l().mz());
        } catch (JSONException unused) {
        }
        new l.hp(str).hp(jSONObject).hp(map).hp(jxVar).l(jSONObject2).hp().hp();
    }
}
