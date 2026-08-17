package com.byazt.t;

import android.net.Uri;
import android.text.TextUtils;
import com.byazt.yy.DownloadModel;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@com.byazt.kj.hp(hp = {0, 1, 311, 54})
/* loaded from: classes3.dex */
public class a {
    public final ConcurrentHashMap<String, String> hp;

    /* renamed from: l, reason: collision with root package name */
    public final ConcurrentHashMap<String, String> f25623l;

    @com.byazt.kj.hp(hp = {0, 1, 311, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL})
    public static class hp {
        public static a hp = new a();
    }

    public static a hp() {
        return hp.hp;
    }

    private String jx(String str) {
        try {
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            String lastPathSegment = uri.getLastPathSegment();
            if (TextUtils.equals("https", scheme) && lastPathSegment.endsWith(".apk")) {
                this.hp.put(str, lastPathSegment);
                return lastPathSegment;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public void l(String str) {
        Iterator<Map.Entry<String, String>> it = this.f25623l.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            if (TextUtils.equals(next.getValue(), str)) {
                it.remove();
                this.hp.remove(next.getKey());
            }
        }
    }

    private a() {
        this.hp = new ConcurrentHashMap<>();
        this.f25623l = new ConcurrentHashMap<>();
    }

    public void hp(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str) || this.f25623l.containsKey(str2)) {
            return;
        }
        this.f25623l.put(str2, str);
    }

    public String hp(String str) {
        if (TextUtils.isEmpty(str) || this.f25623l.isEmpty() || !this.f25623l.containsKey(str)) {
            return null;
        }
        String strJx = jx(str);
        if (this.hp.containsValue(strJx)) {
            for (Map.Entry<String, String> entry : this.hp.entrySet()) {
                if (TextUtils.equals(entry.getValue(), strJx)) {
                    String str2 = this.f25623l.get(entry.getKey());
                    this.f25623l.put(str, str2);
                    if (!this.hp.containsKey(str)) {
                        this.hp.put(str, strJx);
                    }
                    return str2;
                }
            }
        }
        return this.f25623l.get(str);
    }

    public String hp(DownloadModel downloadModel) throws NoSuchAlgorithmException {
        String strJx = jx(downloadModel.getDownloadUrl());
        if (strJx == null || TextUtils.isEmpty(strJx)) {
            return null;
        }
        String strW = com.byazt.xq.a.w(strJx + downloadModel.getPackageName());
        this.f25623l.put(downloadModel.getDownloadUrl(), strW);
        return strW;
    }
}
