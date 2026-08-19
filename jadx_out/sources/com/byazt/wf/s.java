package com.byazt.wf;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.na.k;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

@com.byazt.kj.hp(hp = {0, 1, 416, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s {
    public static volatile s hp;
    public Context jx;

    /* renamed from: j, reason: collision with root package name */
    public int f26894j = 30;

    /* renamed from: l, reason: collision with root package name */
    public final k<String, Boolean> f26895l = new k<String, Boolean>(30) { // from class: com.byazt.wf.s.1
        @Override // com.byazt.na.k
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public int l(String str, Boolean bool) {
            return 1;
        }

        @Override // com.byazt.na.k
        public void hp(boolean z2, String str, Boolean bool, Boolean bool2) {
            super.hp(z2, (boolean) str, bool, bool2);
            if (z2) {
                s.this.w(str);
            }
        }
    };

    private s() {
    }

    public static String j(String str) {
        return TextUtils.isEmpty(str) ? "" : com.byazt.ymw.a.l(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(String str) {
        File fileL;
        if (this.jx == null || TextUtils.isEmpty(str) || (fileL = com.byazt.rz.l.l(this.jx)) == null) {
            return;
        }
        File file = new File(fileL, "tt_lottie_imgcac" + File.separator + str);
        if (file.exists() && file.isDirectory()) {
            com.byazt.ymw.s.jx(file);
        }
    }

    public String jx(String str) {
        File fileL;
        if (this.jx == null || TextUtils.isEmpty(str) || (fileL = com.byazt.rz.l.l(this.jx)) == null) {
            return null;
        }
        return new File(fileL, "tt_lottie_imgcac" + File.separator + j(str)).getAbsolutePath();
    }

    public void l(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strJ = j(str);
        if (this.f26895l.hp((k<String, Boolean>) strJ, 5) || this.f26895l.hp((k<String, Boolean>) strJ) == null) {
            return;
        }
        this.f26895l.hp((k<String, Boolean>) strJ, (String) Boolean.TRUE);
        l();
    }

    public static s hp() {
        if (hp == null) {
            synchronized (s.class) {
                try {
                    if (hp == null) {
                        hp = new s();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx() {
        String[] strArrSplit;
        l lVarL = a.hp().l();
        if (lVarL == null) {
            return;
        }
        String strHp = lVarL.hp("lottie_url_caches", "csj_lottie_zip_url_cache", null);
        if (TextUtils.isEmpty(strHp) || (strArrSplit = strHp.split(",")) == null || strArrSplit.length <= 0) {
            return;
        }
        for (String str : strArrSplit) {
            if (!TextUtils.isEmpty(str)) {
                this.f26895l.hp((k<String, Boolean>) str, (String) Boolean.TRUE);
            }
        }
    }

    private void l() {
        l lVarL = a.hp().l();
        if (lVarL == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.f26895l.hp().keySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        lVarL.l("lottie_url_caches", "csj_lottie_zip_url_cache", TextUtils.join(",", arrayList));
    }

    public void hp(Context context) {
        if (context == null || this.jx != null) {
            return;
        }
        this.jx = context.getApplicationContext();
        com.byazt.uid.w.l(new com.byazt.uid.eb("lotizipurl") { // from class: com.byazt.wf.s.2
            @Override // java.lang.Runnable
            public void run() {
                s.this.jx();
            }
        });
    }

    public void hp(int i2) {
        if (i2 > 0) {
            this.f26894j = i2;
            this.f26895l.hp(i2);
        }
    }

    public void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String strJ = j(str);
        if (this.f26895l.hp((k<String, Boolean>) strJ, 5)) {
            return;
        }
        this.f26895l.hp((k<String, Boolean>) strJ, (String) Boolean.TRUE);
        l();
    }
}
