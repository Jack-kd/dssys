package com.byazt.zn;

import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import com.byazt.xci.ud;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME})
/* loaded from: classes3.dex */
public class kg {
    public static volatile kg hp;
    public final Set<String> jx = Collections.synchronizedSet(new HashSet());

    /* renamed from: l, reason: collision with root package name */
    public String f28529l;

    @com.byazt.kj.hp(hp = {0, 1, 442, 2434})
    public static class hp {
        public final String hp;

        /* renamed from: l, reason: collision with root package name */
        public final AtomicInteger f28533l = new AtomicInteger(0);
        public final AtomicInteger jx = new AtomicInteger(0);

        public hp(String str) {
            this.hp = str;
        }

        public void hp() {
            this.f28533l.incrementAndGet();
        }

        public int j() {
            return this.f28533l.get();
        }

        public String jx() {
            return this.hp;
        }

        public void l() {
            this.jx.incrementAndGet();
        }

        public int w() {
            return this.jx.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String jx(String str) {
        File file = new File(l(), str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    private void l(File file) {
        try {
            if (file.exists()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (file.setLastModified(jCurrentTimeMillis)) {
                    return;
                }
                file.renameTo(file);
                if (file.lastModified() < jCurrentTimeMillis) {
                    new Date(file.lastModified());
                    file.getAbsolutePath();
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static kg hp() {
        if (hp == null) {
            synchronized (kg.class) {
                try {
                    if (hp == null) {
                        hp = new kg();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private String l() {
        if (TextUtils.isEmpty(this.f28529l)) {
            try {
                File file = new File(com.byazt.ymw.eb.l(com.byazt.jz.sz.getContext(), false, null), "tt_web_resource");
                if (!file.exists()) {
                    file.mkdirs();
                }
                this.f28529l = file.getAbsolutePath();
            } catch (Throwable th) {
                com.byazt.ymw.u.l("WebCacheResourceManager", "init root path error: ".concat(String.valueOf(th)));
            }
        }
        return this.f28529l;
    }

    public void hp(Set<ud.jx> set, ud.hp hpVar) {
        l(set, hpVar);
        Iterator<ud.jx> it = set.iterator();
        while (it.hasNext()) {
            hp(it.next(), hpVar);
        }
    }

    private void hp(final ud.jx jxVar, final ud.hp hpVar) {
        File[] fileArrListFiles;
        ud.jx jxVarL;
        ud.j jVarJx = jxVar.jx();
        if (jVarJx == null) {
            return;
        }
        final String strHp = jVarJx.hp();
        if (this.jx.contains(strHp)) {
            return;
        }
        File file = new File(l());
        if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    String name = file2.getName();
                    String strSubstring = name.substring(0, name.indexOf("$"));
                    String strSubstring2 = name.substring(name.indexOf("$") + 1);
                    if (!strSubstring.equals(jxVar.hp())) {
                        continue;
                    } else {
                        if (strSubstring2.equals(com.byazt.ymw.a.l(jVarJx.l()))) {
                            return;
                        }
                        com.byazt.ymw.s.jx(file2);
                        if (hpVar != null && (jxVarL = l(jxVar.hp())) != null) {
                            hpVar.l(jxVarL);
                        }
                    }
                }
            }
        }
        this.jx.add(strHp);
        File file3 = new File(l(), com.byazt.ymw.a.l(strHp));
        com.byazt.ap.l lVarJ = com.byazt.cm.w.hp().l().j();
        lVarJ.hp(strHp);
        lVarJ.hp(file3.getParent(), file3.getName());
        lVarJ.hp(new com.byazt.mnb.hp() { // from class: com.byazt.zn.kg.1
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, final com.byazt.oyr.l lVar) {
                kg.this.jx.remove(strHp);
                if (lVar.q() && lVar.s() != null && lVar.s().exists()) {
                    com.byazt.uid.w.hp(new com.byazt.uid.eb("downloadZip") { // from class: com.byazt.zn.kg.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                String absolutePath = lVar.s().getAbsolutePath();
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                com.byazt.ymw.dy.hp(absolutePath, kg.this.jx(jxVar.j()));
                                AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                ud.hp hpVar2 = hpVar;
                                if (hpVar2 != null) {
                                    hpVar2.hp(jxVar);
                                }
                            } catch (Throwable th) {
                                StringBuilder sb = new StringBuilder("unzip web resources failed：");
                                AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                                sb.append(kg.this.jx(jxVar.j()));
                                com.byazt.ymw.u.hp("WebCacheResourceManager", sb.toString(), th);
                            }
                            try {
                                lVar.s().delete();
                            } catch (Throwable unused) {
                            }
                        }
                    }, 5);
                    return;
                }
                com.byazt.ymw.u.l("WebCacheResourceManager", "download resources failed 1：" + strHp);
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                kg.this.jx.remove(strHp);
                com.byazt.ymw.u.l("WebCacheResourceManager", "download resources failed 2：" + strHp);
            }
        });
    }

    public void l(Set<ud.jx> set, ud.hp hpVar) {
        File[] fileArrListFiles;
        ud.jx jxVarL;
        File file = new File(l());
        if (file.exists() && (fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.byazt.zn.kg.2
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                return file2.isDirectory();
            }
        })) != null) {
            for (File file2 : fileArrListFiles) {
                String strSubstring = file2.getName().substring(0, file2.getName().indexOf("$"));
                Iterator<ud.jx> it = set.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (it.next().hp().equals(strSubstring)) {
                            break;
                        }
                    } else {
                        com.byazt.ymw.s.jx(file2);
                        if (hpVar != null && (jxVarL = l(strSubstring)) != null) {
                            hpVar.l(jxVarL);
                        }
                    }
                }
            }
        }
    }

    public static ud.jx l(String str) {
        if (com.byazt.xci.ud.hp().isEmpty()) {
            return null;
        }
        for (ud.jx jxVar : com.byazt.xci.ud.hp()) {
            if (jxVar.hp().equals(str)) {
                return jxVar;
            }
        }
        return null;
    }

    private void hp(File file) {
        l(file);
        try {
            com.byazt.jz.s.u().ms().hp(file);
        } catch (Throwable unused) {
        }
    }

    public Set<ud.jx> hp(String str) {
        if (!com.byazt.xci.ud.hp || com.byazt.xci.ud.hp().isEmpty()) {
            return null;
        }
        HashSet hashSet = new HashSet();
        try {
            String path = new URL(str).getPath();
            if (path != null && !path.isEmpty()) {
                for (ud.jx jxVar : com.byazt.xci.ud.hp()) {
                    if (path.contains(jxVar.l())) {
                        hashSet.add(jxVar);
                    }
                }
                return hashSet;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public WebResourceResponse hp(WebResourceResponse webResourceResponse, String str, Set<ud.jx> set, Map<String, hp> map) {
        hp hpVar;
        ud.j jVarJx;
        try {
            String path = new URL(str).getPath();
            if (map != null) {
                hpVar = map.get(path);
                if (hpVar == null) {
                    hpVar = new hp(path);
                    map.put(path, hpVar);
                }
            } else {
                hpVar = new hp(path);
            }
            String strHp = "text/html";
            for (ud.jx jxVar : set) {
                File file = new File(jx(jxVar.j()), path.substring(path.indexOf(jxVar.l())).replace(jxVar.l(), ""));
                if (file.exists()) {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    if (webResourceResponse == null && (jVarJx = jxVar.jx()) != null) {
                        Iterator<ud.l> it = jVarJx.jx().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            ud.l next = it.next();
                            if (TextUtils.equals(next.l(), file.getName())) {
                                strHp = next.hp();
                                break;
                            }
                        }
                        WebResourceResponse webResourceResponse2 = new WebResourceResponse(strHp, "utf-8", fileInputStream);
                        try {
                            hpVar.hp();
                            webResourceResponse = webResourceResponse2;
                        } catch (Exception unused) {
                            return webResourceResponse2;
                        }
                    }
                    webResourceResponse.setData(fileInputStream);
                    hp(new File(jx(jxVar.j())));
                    return webResourceResponse;
                }
            }
            hpVar.l();
            return webResourceResponse;
        } catch (Exception unused2) {
            return webResourceResponse;
        }
    }

    public void hp(ud.hp hpVar) {
        try {
            for (File file : new File(l()).listFiles()) {
                if (System.currentTimeMillis() - file.lastModified() >= 604800000) {
                    try {
                        com.byazt.ymw.s.jx(file);
                        String name = file.getName();
                        String strSubstring = name.substring(0, name.indexOf("$"));
                        if (hpVar != null) {
                            hpVar.l(l(strSubstring));
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        } catch (Throwable unused2) {
        }
    }
}
