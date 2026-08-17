package com.byazt.bu;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.byazt.ip.q;
import com.byazt.xq.a;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_DEVICE, 30})
/* loaded from: classes2.dex */
public class jx {
    public static int hp = 8;

    /* renamed from: l, reason: collision with root package name */
    public static volatile jx f18683l;
    public hp<Integer, Bitmap> jx;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_DEVICE, 219})
    public static class hp<K, T> extends LinkedHashMap<K, T> {
        public final int hp;

        public hp(int i2, int i3) {
            super(i3, 0.75f, true);
            this.hp = i2;
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<K, T> entry) {
            return size() > this.hp;
        }
    }

    private jx() {
        this.jx = null;
        int i2 = hp;
        this.jx = new hp<>(i2, i2 / 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ByteArrayOutputStream l(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 < 0) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream;
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
    }

    public static jx hp() {
        if (f18683l == null) {
            synchronized (jx.class) {
                try {
                    if (f18683l == null) {
                        f18683l = new jx();
                    }
                } finally {
                }
            }
        }
        return f18683l;
    }

    public Bitmap hp(int i2) {
        return this.jx.get(Integer.valueOf(i2));
    }

    public void hp(final int i2, final String str) {
        if (TextUtils.isEmpty(str) || hp(i2) != null) {
            return;
        }
        com.byazt.yk.jx.zy().submit(new Runnable() { // from class: com.byazt.bu.jx.1
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                ByteArrayOutputStream byteArrayOutputStreamL;
                ByteArrayInputStream byteArrayInputStream;
                ByteArrayInputStream byteArrayInputStream2;
                Throwable th;
                InputStream inputStreamHp;
                InputStream inputStream = null;
                try {
                    q qVarHp = com.byazt.yk.jx.hp(true, 0, str, null);
                    if (qVarHp == null) {
                        a.hp(null, null, null, null);
                        return;
                    }
                    inputStreamHp = qVarHp.hp();
                    try {
                        byteArrayOutputStreamL = jx.l(inputStreamHp);
                    } catch (Exception unused) {
                        byteArrayOutputStreamL = null;
                        byteArrayInputStream = null;
                    } catch (Throwable th2) {
                        byteArrayInputStream = null;
                        byteArrayInputStream2 = null;
                        th = th2;
                        byteArrayOutputStreamL = null;
                    }
                    try {
                        byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStreamL.toByteArray());
                        try {
                            byteArrayInputStream2 = new ByteArrayInputStream(byteArrayOutputStreamL.toByteArray());
                            try {
                                BitmapFactory.Options options = new BitmapFactory.Options();
                                options.inJustDecodeBounds = true;
                                BitmapFactory.decodeStream(byteArrayInputStream, null, options);
                                int iHp = com.byazt.ni.jx.hp(com.byazt.yk.jx.mp(), 44.0f);
                                options.inSampleSize = jx.hp(iHp, iHp, options);
                                options.inJustDecodeBounds = false;
                                jx.this.jx.put(Integer.valueOf(i2), BitmapFactory.decodeStream(byteArrayInputStream2, null, options));
                                a.hp(inputStreamHp, byteArrayOutputStreamL, byteArrayInputStream, byteArrayInputStream2);
                            } catch (Exception unused2) {
                                inputStream = inputStreamHp;
                                a.hp(inputStream, byteArrayOutputStreamL, byteArrayInputStream, byteArrayInputStream2);
                            } catch (Throwable th3) {
                                th = th3;
                                a.hp(inputStreamHp, byteArrayOutputStreamL, byteArrayInputStream, byteArrayInputStream2);
                                throw th;
                            }
                        } catch (Exception unused3) {
                            byteArrayInputStream2 = null;
                        } catch (Throwable th4) {
                            byteArrayInputStream2 = null;
                            th = th4;
                        }
                    } catch (Exception unused4) {
                        byteArrayInputStream = null;
                        byteArrayInputStream2 = byteArrayInputStream;
                        inputStream = inputStreamHp;
                        a.hp(inputStream, byteArrayOutputStreamL, byteArrayInputStream, byteArrayInputStream2);
                    } catch (Throwable th5) {
                        byteArrayInputStream2 = null;
                        th = th5;
                        byteArrayInputStream = null;
                    }
                } catch (Exception unused5) {
                    byteArrayOutputStreamL = null;
                    byteArrayInputStream = null;
                    byteArrayInputStream2 = null;
                } catch (Throwable th6) {
                    byteArrayOutputStreamL = null;
                    byteArrayInputStream = null;
                    byteArrayInputStream2 = null;
                    th = th6;
                    inputStreamHp = null;
                }
            }
        });
    }

    public static int hp(int i2, int i3, BitmapFactory.Options options) {
        int i4 = options.outWidth;
        if (i4 > i2 || options.outHeight > i3) {
            return Math.min(Math.round(i4 / i2), Math.round(options.outHeight / i3));
        }
        return 1;
    }
}
