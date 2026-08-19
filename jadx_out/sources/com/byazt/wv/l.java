package com.byazt.wv;

import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.byazt.gr.hp;
import com.byazt.ir.j;
import com.byazt.ir.jx;
import com.byazt.jz.sz;
import com.byazt.jz.vv;
import com.byazt.sq.e;
import com.byazt.uid.eb;
import com.byazt.wx.w;
import com.byazt.ymw.a;
import com.byazt.ymw.s;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE, 34})
/* loaded from: classes3.dex */
public class l extends jx {
    public static volatile l hp;
    public static volatile File jx;

    /* renamed from: w, reason: collision with root package name */
    public static AtomicReference<com.byazt.nqo.l> f27140w = new AtomicReference<>(null);

    /* renamed from: l, reason: collision with root package name */
    public AtomicBoolean f27142l = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f27141j = new AtomicBoolean(false);

    public static l l() {
        if (hp == null) {
            synchronized (l.class) {
                try {
                    if (hp == null) {
                        hp = new l();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() throws IOException {
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2 = null;
        try {
            if (f27140w.get() != null) {
                return;
            }
            File file = new File(hp(), "package_ugen_temp.json");
            long length = file.length();
            Long lValueOf = Long.valueOf(length);
            if (length > 0 && file.exists() && file.isFile()) {
                byte[] bArr = new byte[lValueOf.intValue()];
                fileInputStream = new FileInputStream(file);
                try {
                    fileInputStream.read(bArr);
                    f27140w.set(com.byazt.nqo.l.l(new JSONObject(new String(bArr, "utf-8"))));
                    fileInputStream2 = fileInputStream;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        u.hp("PlayComponentEngineCacheManager", "version init error", th);
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                                return;
                            } catch (IOException unused) {
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th3) {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th3;
                    }
                }
            }
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (IOException unused3) {
                }
            }
        } catch (Throwable th4) {
            fileInputStream = null;
            th = th4;
        }
    }

    public void a() {
        try {
            w();
            File fileHp = hp();
            if (fileHp == null || !fileHp.exists()) {
                return;
            }
            if (fileHp.getParentFile() != null) {
                s.jx(fileHp.getParentFile());
            } else {
                s.jx(fileHp);
            }
        } catch (Throwable unused) {
        }
    }

    public void eb() {
        com.byazt.nqo.l lVar = f27140w.get();
        if (lVar == null || !lVar.a()) {
            return;
        }
        boolean zHp = hp(lVar.getResources());
        if (!zHp) {
            w();
        }
        this.f27141j.set(zHp);
    }

    public void j() {
        try {
            if (this.f27142l.get()) {
                return;
            }
            boolean z2 = true;
            this.f27142l.set(true);
            com.byazt.nqo.l lVar = new com.byazt.nqo.l(sz.hp().hp(2));
            com.byazt.nqo.l lVar2 = f27140w.get();
            if (!lVar.a()) {
                this.f27142l.set(false);
                return;
            }
            if (!jx.hp(lVar2, lVar.jx())) {
                this.f27142l.set(false);
                return;
            }
            vv.a().post(new Runnable() { // from class: com.byazt.wv.l.2
                @Override // java.lang.Runnable
                public void run() {
                    w.hp().l();
                }
            });
            List<hp.C0258hp> listL = l(lVar, lVar2);
            if (listL == null) {
                z2 = false;
            }
            if (listL == null) {
                this.f27142l.set(false);
            }
            if (z2 && hp(lVar.getResources())) {
                f27140w.set(lVar);
                jx.hp(hp(), f27140w.get(), "package_ugen_temp.json");
                l(listL);
            }
            eb();
            this.f27142l.set(false);
        } catch (Throwable unused) {
        }
    }

    public void jx() {
        com.byazt.uid.w.hp(new eb("enginecache-init") { // from class: com.byazt.wv.l.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    l.this.q();
                    l.this.eb();
                    l.this.j();
                } catch (Throwable unused) {
                }
            }
        });
    }

    public boolean s() {
        AtomicBoolean atomicBoolean = this.f27141j;
        return atomicBoolean != null && atomicBoolean.get();
    }

    public void w() {
        jx.l(hp(), f27140w.get(), "package_ugen_temp.json");
        f27140w.set(null);
    }

    @Override // com.byazt.ir.jx
    public File hp() {
        if (jx == null) {
            try {
                File file = new File(new File(j.hp(), "tt_ugen_pkg"), "engine");
                file.mkdirs();
                jx = file;
            } catch (Throwable th) {
                u.hp("PlayComponentEngineCacheManager", "ge", th);
            }
        }
        return jx;
    }

    private File l(String str) throws IOException {
        com.byazt.nqo.l lVar;
        if (!s() || (lVar = f27140w.get()) == null) {
            return null;
        }
        Iterator<hp.C0258hp> it = lVar.getResources().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            hp.C0258hp next = it.next();
            if (next.hp() != null && next.hp().equals(str)) {
                File file = new File(hp(), a.l(next.hp()));
                String strHp = a.hp(file);
                if (next.l() == null || !next.l().equals(strHp)) {
                    break;
                }
                return file;
            }
        }
        return null;
    }

    public WebResourceResponse hp(WebView webView, e.hp hpVar, String str) {
        File fileL;
        try {
            if (TextUtils.isEmpty(str) || hpVar == e.hp.IMAGE || (fileL = l(str)) == null) {
                return null;
            }
            return new WebResourceResponse(hpVar.getType(), "utf-8", new FileInputStream(fileL));
        } catch (Throwable th) {
            u.hp("PlayComponentEngineCacheManager", "grwe", th);
            return null;
        }
    }
}
