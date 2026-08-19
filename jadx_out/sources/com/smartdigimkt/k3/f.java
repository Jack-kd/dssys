package com.smartdigimkt.k3;

/* loaded from: classes5.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final String f41371a;

    /* renamed from: b, reason: collision with root package name */
    public static final String f41372b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f41373c;

    /* renamed from: d, reason: collision with root package name */
    public static final String f41374d;

    static {
        StringBuilder sb = new StringBuilder();
        String str = com.smartdigimkt.c5.o.f39801g;
        String strA = com.smartdigimkt.f.i.a(sb, str, "_verify");
        f41371a = strA;
        String strA2 = com.smartdigimkt.p.a.a(str, "_redownload");
        f41372b = strA2;
        String strA3 = com.smartdigimkt.p.a.a(str, "_allow_install_in_bg");
        f41373c = strA3;
        StringBuilder sb2 = new StringBuilder("CREATE TABLE IF NOT EXISTS download_task(unique_id TEXT ,click_id TEXT ,request_id TEXT ,offer_id TEXT ,pkg_name TEXT ,url TEXT ,title TEXT ,deeplink_click_action TEXT ,icon_url TEXT ,deeplink_url TEXT ,file_path TEXT ,placement_id TEXT ,ad_source_id TEXT ,network_firm_id TEXT ,app_name TEXT ,download_failed_scene_list TEXT ,dsp_id TEXT ,action_offer_download_tk TEXT ,app_desc TEXT ,");
        sb2.append(strA);
        sb2.append(" INTEGER ,enable_use_webview_ua INTEGER ,download_type INTEGER ,notification_type INTEGER ,int_open_switch INTEGER ,int_open_time INTEGER ,offer_source_type INTEGER ,part_count INTEGER ,enable_part_download INTEGER ,download_start_timestamp INTEGER ,download_end_timestamp INTEGER ,status INTEGER ,is_upload_installed_agentevent INTEGER ,progress INTEGER ,file_size INTEGER ,");
        sb2.append(strA2);
        sb2.append(" INTEGER ,");
        f41374d = com.smartdigimkt.f.i.a(sb2, strA3, " INTEGER ,offer_cache_time INTEGER ,downloading_scene INTEGER ,recover_download_scene INTEGER)");
    }
}
