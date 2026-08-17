package com.byazt.yy;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 580, 38})
@Deprecated
/* loaded from: classes3.dex */
public class j implements DownloadEventConfig {

    /* renamed from: a, reason: collision with root package name */
    public String f28327a;

    /* renamed from: e, reason: collision with root package name */
    public String f28328e;
    public String eb;
    public String gu;
    public String hp;

    /* renamed from: j, reason: collision with root package name */
    public String f28329j;
    public Object jl;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f28330k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f28331l;

    /* renamed from: q, reason: collision with root package name */
    public String f28332q;

    /* renamed from: s, reason: collision with root package name */
    public String f28333s;

    /* renamed from: u, reason: collision with root package name */
    public String f28334u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f28335v;

    /* renamed from: w, reason: collision with root package name */
    public String f28336w;
    public String xs;
    public boolean zy;

    @com.byazt.kj.hp(hp = {0, 1, 580, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public String f28337a;

        /* renamed from: e, reason: collision with root package name */
        public String f28338e;
        public String eb;
        public String gu;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f28339j;
        public Object jl;
        public String jx;

        /* renamed from: k, reason: collision with root package name */
        public boolean f28340k;

        /* renamed from: l, reason: collision with root package name */
        public boolean f28341l;

        /* renamed from: q, reason: collision with root package name */
        public String f28342q;

        /* renamed from: s, reason: collision with root package name */
        public String f28343s;

        /* renamed from: u, reason: collision with root package name */
        public String f28344u;

        /* renamed from: v, reason: collision with root package name */
        public boolean f28345v;

        /* renamed from: w, reason: collision with root package name */
        public String f28346w;
        public String xs;
        public boolean zy;

        public j hp() {
            return new j(this);
        }
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public String getClickButtonTag() {
        return this.hp;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public String getClickContinueLabel() {
        return this.f28327a;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public String getClickInstallLabel() {
        return this.eb;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public String getClickItemTag() {
        return null;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public String getClickLabel() {
        return this.jx;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public String getClickPauseLabel() {
        return this.f28336w;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public String getClickStartLabel() {
        return this.f28329j;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public int getDownloadScene() {
        return 0;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public Object getExtraEventObject() {
        return this.jl;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public JSONObject getExtraJson() {
        return null;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public JSONObject getParamsJson() {
        return null;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public String getRefer() {
        return this.xs;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public String getStorageDenyLabel() {
        return this.f28328e;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public boolean isEnableClickEvent() {
        return this.f28331l;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public boolean isEnableV3Event() {
        return this.zy;
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public void setDownloadScene(int i2) {
    }

    @Override // com.byazt.yy.DownloadEventConfig
    public void setRefer(String str) {
    }

    public j() {
    }

    private j(hp hpVar) {
        this.hp = hpVar.hp;
        this.f28331l = hpVar.f28341l;
        this.jx = hpVar.jx;
        this.f28329j = hpVar.f28339j;
        this.f28336w = hpVar.f28346w;
        this.f28327a = hpVar.f28337a;
        this.eb = hpVar.eb;
        this.f28333s = hpVar.f28343s;
        this.f28332q = hpVar.f28342q;
        this.f28328e = hpVar.f28338e;
        this.gu = hpVar.gu;
        this.jl = hpVar.jl;
        this.zy = hpVar.zy;
        this.f28330k = hpVar.f28340k;
        this.f28335v = hpVar.f28345v;
        this.f28334u = hpVar.f28344u;
        this.xs = hpVar.xs;
    }
}
