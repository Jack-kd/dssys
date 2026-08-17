package com.byazt.w;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.dg.AdDownloadController;
import com.byazt.dg.AdDownloadEventConfig;
import com.byazt.dg.AdDownloadModel;
import com.byazt.yy.DownloadController;
import com.byazt.yy.DownloadEventConfig;
import com.byazt.yy.DownloadModel;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes3.dex */
public class w implements com.byazt.zv.hp {
    public long hp;

    /* renamed from: j, reason: collision with root package name */
    public DownloadController f26872j;
    public DownloadEventConfig jx;

    /* renamed from: l, reason: collision with root package name */
    public DownloadModel f26873l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.zv.l f26874w;

    public w() {
    }

    @Override // com.byazt.zv.hp
    public String a() {
        if (this.f26873l.getDeepLink() != null) {
            return this.f26873l.getDeepLink().getOpenUrl();
        }
        return null;
    }

    public boolean b() {
        DownloadModel downloadModel;
        if (this.hp == 0 || (downloadModel = this.f26873l) == null || this.jx == null || this.f26872j == null) {
            return true;
        }
        return downloadModel.isAd() && this.hp <= 0;
    }

    @Override // com.byazt.zv.hp
    public DownloadController cx() {
        return this.f26872j;
    }

    public boolean di() {
        if (b()) {
            return false;
        }
        if (!this.f26873l.isAd()) {
            return this.f26873l instanceof AdDownloadModel;
        }
        DownloadModel downloadModel = this.f26873l;
        return (downloadModel instanceof AdDownloadModel) && !TextUtils.isEmpty(downloadModel.getLogExtra()) && (this.jx instanceof AdDownloadEventConfig) && (this.f26872j instanceof AdDownloadController);
    }

    @Override // com.byazt.zv.hp
    public String e() {
        return this.jx.getClickButtonTag();
    }

    @Override // com.byazt.zv.hp
    public JSONObject eb() {
        return this.f26873l.getExtra();
    }

    @Override // com.byazt.zv.hp
    public int ec() {
        return 0;
    }

    @Override // com.byazt.zv.hp
    public JSONObject gu() {
        return this.jx.getParamsJson();
    }

    @Override // com.byazt.zv.hp
    public String hp() {
        return this.f26873l.getDownloadUrl();
    }

    @Override // com.byazt.zv.hp
    public String j() {
        return this.f26873l.getLogExtra();
    }

    @Override // com.byazt.zv.hp
    public long jl() {
        return this.f26873l.getExtraValue();
    }

    @Override // com.byazt.zv.hp
    public boolean jx() {
        return this.f26873l.isAd();
    }

    @Override // com.byazt.zv.hp
    public List<String> k() {
        return this.f26873l.getClickTrackUrl();
    }

    @Override // com.byazt.zv.hp
    public long l() {
        return this.f26873l.getId();
    }

    @Override // com.byazt.zv.hp
    public DownloadModel n() {
        return this.f26873l;
    }

    @Override // com.byazt.zv.hp
    public DownloadEventConfig ns() {
        return this.jx;
    }

    @Override // com.byazt.zv.hp
    public String q() {
        return this.jx.getRefer();
    }

    @Override // com.byazt.zv.hp
    public int s() {
        if (this.f26872j.getDownloadMode() == 2) {
            return 2;
        }
        return this.f26873l.getFunnelType();
    }

    @Override // com.byazt.zv.hp
    public int sz() {
        return this.jx.getDownloadScene();
    }

    @Override // com.byazt.zv.hp
    public JSONObject u() {
        return this.jx.getExtraJson();
    }

    @Override // com.byazt.zv.hp
    public Object v() {
        return this.jx.getExtraEventObject();
    }

    @Override // com.byazt.zv.hp
    public JSONObject vv() {
        return this.f26873l.getDownloadSettings();
    }

    @Override // com.byazt.zv.hp
    public String w() {
        return this.f26873l.getPackageName();
    }

    @Override // com.byazt.zv.hp
    public boolean xs() {
        return this.f26872j.enableNewActivity();
    }

    @Override // com.byazt.zv.hp
    public boolean zy() {
        return this.jx.isEnableV3Event();
    }

    public w(long j2, @NonNull DownloadModel downloadModel, @NonNull DownloadEventConfig downloadEventConfig, @NonNull DownloadController downloadController) {
        this.hp = j2;
        this.f26873l = downloadModel;
        this.jx = downloadEventConfig;
        this.f26872j = downloadController;
    }
}
