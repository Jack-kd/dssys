package com.byazt.crk;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 160, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements com.byazt.ke.hp, com.byazt.ke.l {
    public static Method hp = null;
    public static boolean jx = false;

    /* renamed from: l, reason: collision with root package name */
    public static Method f18971l;

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.ow.jx f18972j;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f18973w;

    static {
        try {
            Class<?> cls = Class.forName("com.android.internal.util.XmlUtils");
            hp = cls.getDeclaredMethod("readMapXml", InputStream.class);
            f18971l = cls.getDeclaredMethod("writeMapXml", Map.class, OutputStream.class);
            hp.setAccessible(true);
            f18971l.setAccessible(true);
            jx = true;
        } catch (Exception unused) {
            jx = false;
        }
    }

    public w(com.byazt.ow.jx jxVar) {
        this.f18972j = jxVar;
        this.f18973w = false;
    }

    public static boolean hp() {
        return jx;
    }

    @Override // com.byazt.ke.hp
    public Map<String, Object> hp(File file) throws Throwable {
        if (jx && file.exists()) {
            BufferedInputStream bufferedInputStream = null;
            if (!file.canRead()) {
                return null;
            }
            try {
                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(file), 49152);
                try {
                    Map<String, Object> mapHp = new com.byazt.ak.l().hp((Map) hp.invoke(null, bufferedInputStream2), this.f18972j, this.f18973w);
                    try {
                        bufferedInputStream2.close();
                    } catch (IOException unused) {
                    }
                    return mapHp;
                } catch (Exception unused2) {
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused3) {
                        }
                    }
                    return Collections.EMPTY_MAP;
                } catch (Throwable th) {
                    th = th;
                    bufferedInputStream = bufferedInputStream2;
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException unused4) {
                        }
                    }
                    throw th;
                }
            } catch (Exception unused5) {
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return Collections.EMPTY_MAP;
    }

    public w(com.byazt.ow.jx jxVar, boolean z2) {
        this.f18972j = jxVar;
        this.f18973w = z2;
    }

    @Override // com.byazt.ke.l
    public void hp(Map<String, Object> map, File file) throws Throwable {
        if (!jx || file == null) {
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        if (file.exists()) {
            file.delete();
        } else {
            file.getParentFile().mkdirs();
        }
        file.createNewFile();
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                f18971l.invoke(null, new com.byazt.ak.l().hp(map, this.f18972j, this.f18973w), fileOutputStream2);
                try {
                    fileOutputStream2.close();
                } catch (IOException unused) {
                }
            } catch (Exception unused2) {
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused3) {
                    }
                }
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
