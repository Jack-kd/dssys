package com.meishu.sdk.meishu_ad.view.player.media.datasouce.download;

import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes4.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap<String, b> f32805a = new ConcurrentHashMap<>();

    public static class a implements f {

        /* renamed from: a, reason: collision with root package name */
        public final String f32806a;

        public a(String str) {
            this.f32806a = str;
        }

        @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f
        public void a(long j2) {
        }

        @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f
        public void b() {
            try {
                h.f32805a.remove(this.f32806a);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f
        public void a(long j2, int i2) {
        }

        @Override // com.meishu.sdk.meishu_ad.view.player.media.datasouce.download.f
        public void a() {
            try {
                h.f32805a.remove(this.f32806a);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
