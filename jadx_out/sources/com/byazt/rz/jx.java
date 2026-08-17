package com.byazt.rz;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.rz.q;
import com.byazt.rz.s;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.io.File;
import java.util.List;
import java.util.function.Function;
import org.fourthline.cling.model.ServiceReference;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX, 30})
/* loaded from: classes3.dex */
public class jx {
    public static final String hp;

    @SuppressLint({"StaticFieldLeak"})
    public static volatile jx jx;

    /* renamed from: l, reason: collision with root package name */
    public static final String f25415l;

    /* renamed from: a, reason: collision with root package name */
    public s.hp f25416a;
    public volatile boolean eb;

    /* renamed from: j, reason: collision with root package name */
    public final Context f25417j;

    /* renamed from: w, reason: collision with root package name */
    public final Function<SparseArray<Object>, Object> f25418w = new q.jx();

    static {
        StringBuilder sb = new StringBuilder();
        String str = File.separator;
        sb.append(str);
        sb.append("next");
        hp = sb.toString();
        f25415l = str + "tmp";
    }

    private jx(Context context) {
        this.f25417j = context;
    }

    private File jx() {
        return new File(hp(), hp);
    }

    private File l() {
        return new File(hp(), f25415l);
    }

    public static jx hp(Context context) {
        if (jx == null) {
            synchronized (jx.class) {
                try {
                    if (jx == null) {
                        jx = new jx(context);
                    }
                } finally {
                }
            }
        }
        return jx;
    }

    public void hp(List<s.hp> list) {
        if (list == null || list.isEmpty()) {
            w.hp("plugin_download", "plugin is empty");
            return;
        }
        s.hp hpVar = list.get(0);
        this.f25416a = hpVar;
        if (TextUtils.isEmpty(hpVar.jx)) {
            return;
        }
        String str = this.f25416a.hp + "-" + this.f25416a.f25439l + "-" + this.f25416a.f25436a + "-" + this.f25416a.eb + ".apk";
        File fileJx = jx();
        File file = new File(fileJx, str);
        if (file.exists()) {
            w.hp("plugin_download", "plugin file already exists");
            com.byazt.ik.a.l("FileDownloadTask", "Plugin file already exists.");
            this.f25416a.f25440q = file.getAbsolutePath();
            s.hp hpVar2 = this.f25416a;
            hpVar2.f25437e = hpVar2.f25439l < 7643;
            hp(true, hpVar2.hp, hpVar2.toString());
            return;
        }
        File fileL = l();
        if (!fileJx.exists()) {
            fileJx.mkdirs();
        }
        if (!fileL.exists()) {
            fileL.mkdirs();
        }
        hp(this.f25416a.jx, fileJx.getAbsolutePath(), fileL.getAbsolutePath(), str);
    }

    private void hp(String str, String str2, String str3, String str4) {
        if (this.eb) {
            com.byazt.ik.a.l("FileDownloadTask", "Downloading...");
            return;
        }
        this.eb = true;
        try {
            File file = new File(str2 + ServiceReference.DELIMITER + str4);
            if (file.exists()) {
                file.delete();
            }
            com.byazt.bg.jx.hp().hp(str, str2, str4, new EventListener() { // from class: com.byazt.rz.jx.1
                @Override // com.bykv.vk.openvk.api.proto.EventListener
                public ValueSet onEvent(int i2, Result result) {
                    jx.this.eb = false;
                    if (i2 != 0) {
                        String strMessage = result.message();
                        w.hp("plugin_download", "download failed: ".concat(String.valueOf(strMessage)));
                        com.byazt.ik.a.w("FileDownloadTask", "Download failed. ".concat(String.valueOf(strMessage)));
                        jx jxVar = jx.this;
                        jxVar.hp(false, jxVar.f25416a.hp, jx.this.f25416a.toString());
                        return null;
                    }
                    w.hp("plugin_download", "download success");
                    jx.this.f25416a.f25440q = result.message();
                    com.byazt.ik.a.l("FileDownloadTask", "Download end." + jx.this.f25416a.f25440q);
                    jx.this.f25416a.f25437e = jx.this.f25416a.f25439l < 7643;
                    jx jxVar2 = jx.this;
                    jxVar2.hp(true, jxVar2.f25416a.hp, jx.this.f25416a.toString());
                    return null;
                }
            });
            w.hp("plugin_download", "start download");
            com.byazt.ik.a.l("FileDownloadTask", "Download start.");
        } catch (Throwable th) {
            w.hp("plugin_download", "download error: ".concat(String.valueOf(th)));
            com.byazt.ik.a.w("FileDownloadTask", "Download file error: ".concat(String.valueOf(th)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(boolean z2, String str, String str2) {
        ValueSet valueSetL = com.byazt.xi.jx.hp().hp(-999900, z2 ? 0 : 1004).hp(-999903, z2).hp(-999902, com.byazt.xi.jx.hp().hp(2, str2).hp(3, str).l().sparseArray()).l();
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 1);
        sparseArray.put(-99999985, Void.class);
        sparseArray.put(-99999979, valueSetL.sparseArray());
        this.f25418w.apply(sparseArray);
    }

    private File hp() {
        return l.hp(this.f25417j, "tt_pangle_bykv_file", 0);
    }
}
