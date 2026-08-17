package com.byazt.kz;

import com.byazt.nke.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_300, 38})
/* loaded from: classes3.dex */
public class j<T> implements u {

    /* renamed from: a, reason: collision with root package name */
    public int f22264a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.nke.s f22265e;
    public Map<String, String> eb;
    public int gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public T f22266j;
    public T jx;

    /* renamed from: l, reason: collision with root package name */
    public String f22267l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f22268q;

    /* renamed from: s, reason: collision with root package name */
    public boolean f22269s;

    /* renamed from: w, reason: collision with root package name */
    public int f22270w;

    @Override // com.byazt.nke.u
    public String getCacheKey() {
        return this.hp;
    }

    @Override // com.byazt.nke.u
    public int getFileSize() {
        return this.gu;
    }

    @Override // com.byazt.nke.u
    public Map<String, String> getHeaders() {
        return this.eb;
    }

    @Override // com.byazt.nke.u
    public int getHeight() {
        return this.f22264a;
    }

    @Override // com.byazt.nke.u
    public com.byazt.nke.s getHttpTime() {
        return this.f22265e;
    }

    @Override // com.byazt.nke.u
    public T getOriginResult() {
        return this.f22266j;
    }

    @Override // com.byazt.nke.u
    public T getResult() {
        return this.jx;
    }

    @Override // com.byazt.nke.u
    public String getUrl() {
        return this.f22267l;
    }

    @Override // com.byazt.nke.u
    public int getWidth() {
        return this.f22270w;
    }

    public j hp(jx jxVar, T t2) {
        this.jx = t2;
        this.hp = jxVar.getMemoryCacheKey();
        this.f22267l = jxVar.getUrl();
        this.f22270w = jxVar.getWidth();
        this.f22264a = jxVar.getHeight();
        this.f22268q = jxVar.s();
        this.f22265e = jxVar.e();
        this.gu = jxVar.gu();
        return this;
    }

    @Override // com.byazt.nke.u
    public boolean isGif() {
        return this.f22269s;
    }

    @Override // com.byazt.nke.u
    public boolean isLocal() {
        return this.f22268q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.byazt.nke.u
    public void setResult(Object obj) {
        this.f22266j = this.jx;
        this.jx = obj;
    }

    public j hp(jx jxVar, T t2, Map<String, String> map, boolean z2) {
        this.eb = map;
        this.f22269s = z2;
        return hp(jxVar, t2);
    }
}
